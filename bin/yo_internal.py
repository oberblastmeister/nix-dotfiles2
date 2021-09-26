import argparse
import pathlib
from pathlib import Path
import subprocess
from argparse import ArgumentParser
from typing import Any, Tuple
import shutil
import os
import sys
from dataclasses import dataclass


def is_root() -> bool:
    return os.getuid() == 0


def check_is_root() -> None:
    if not is_root():
        print("You must be root to run this subcommand!")
        sys.exit(1)

def generate_hardware_config(root: Path, dir: Path) -> None:
    new_dir = dir
    if root != Path('/') and dir.is_relative_to(root):
        new_dir = Path('/') / dir.relative_to(root)
    subprocess.run(["nixos-generate-config", "--root", root, "--dir", new_dir])
    (dir / "configuration.nix").unlink()


@dataclass(frozen=True)
class Gc:
    pass

    def run(self) -> None:
        check_is_root()
        subprocess.run(["nix-collect-garbage", "-d"])
        subprocess.run(["nix-store", "--optimise"])

@dataclass(frozen=True)
class Rebuild:
    extra: list[str]
    
    def run(self, flake: Path) -> None:
        check_is_root()
        subprocess.run(["nixos-rebuild", "--flake", str(flake)] + self.extra)


@dataclass(frozen=True)
class AutoPush:
    pass

    def run(self) -> None:
        subprocess.run(["git", "add", "."])
        subprocess.run(["git", "commit", "-m", "autopush"])
        subprocess.run(["git", "push"])
        

@dataclass(frozen=True)
class Update:
    pass

    def run(self, flake: Path) -> None:
        subprocess.run(["nix", "flake", "update", flake])



@dataclass(frozen=True)
class Upgrade:
    pass

    def run(self, flake: Path) -> None:
        check_is_root()
        Update().run(flake)
        Rebuild(["switch"]).run(flake)


@dataclass(frozen=True)
class RollBack:
    pass

    def run(self, flake: Path) -> None:
        Rebuild(["--rollback", "switch"]).run(flake)
        

        
@dataclass(frozen=True)
class AddHost:
    hostname: str
    hardware_conf: None | str
    conf: None | str
    root: None | Path
    force: bool

    def run(self, flake: Path) -> None:
        check_is_root()
        if len(Path(self.hostname).parts) != 1:
            raise ValueError('The name must only have one path component')
        host_path = flake / 'hosts' / self.hostname;
        if host_path.exists():
            if self.force:
                shutil.rmtree(host_path)
            else:
                raise ValueError('The host path already exists')
        host_path.mkdir()
        try:
            if self.hardware_conf is None:
                generate_hardware_config(self.root or Path('/'), host_path)
            else:
                shutil.copy(self.hardware_conf, host_path / 'hardware-configuration.nix')
            if self.conf is None:
                shutil.copy(flake / "host_template" /
                            "default.nix", host_path)
            else:
                shutil.copy(self.conf, host_path / 'default.nix')
        except Exception:
            try:
                host_path.rmdir()
            except Exception:
                pass
            raise


@dataclass(frozen=True)
class Cd:
    pass

    def run(self, flake: Path) -> None:
        subprocess.run(["cd", flake])
        
        
        
@dataclass(frozen=True)
class Help:
    parser: ArgumentParser

    def run(self) -> None:
        self.parser.print_help()
        

Subcmd = Gc | Rebuild | AutoPush | Update | Upgrade | RollBack | AddHost | Help | Cd

@dataclass(frozen=True)
class Opt:
    flake: Path
    subcmd: Subcmd
    
    def run(self) -> None:
        match self.subcmd:
            case Gc():
                self.subcmd.run()
            case Update():
                self.subcmd.run(self.flake)
            case Upgrade():
                self.subcmd.run(self.flake)
            case RollBack():
                self.subcmd.run(self.flake)
            case AddHost():
                self.subcmd.run(self.flake)
            case AutoPush():
                self.subcmd.run()
            case Rebuild():
                self.subcmd.run(self.flake)
            case Cd():
                self.subcmd.run(self.flake)
            case Help():
                self.subcmd.run()
    
def get_parser() -> ArgumentParser:
    parser = argparse.ArgumentParser(description='Helper for nix')
    defaultFlake = pathlib.Path(__file__).parent.parent.resolve()
    parser.add_argument('--flake', type=pathlib.Path, nargs='?',
                        help='Optionaly specify where the flake is',
                        default=defaultFlake)
    # parser.add_argument('--host', type=str, nargs='?',
    #                     help='Optionally specify the host', default=None)
    subparsers = parser.add_subparsers(dest="subcmd")
    _ = subparsers.add_parser('gc')
    _ = subparsers.add_parser('update')
    _ = subparsers.add_parser('upgrade')
    _ = subparsers.add_parser('rebuild')
    add_host_parser = subparsers.add_parser('add-host')
    add_host_parser.add_argument(
        'hostname', type=str, help="Required hostname")
    add_host_parser.add_argument(
        '--hardware-conf', type=Path, help="hardware-configuration.nix path")
    add_host_parser.add_argument(
        '--conf', type=Path, help="configuration.nix path. Will be copied to hosts/<host>/default.nix")
    add_host_parser.add_argument(
        '--root', type=Path, help="the root to use", default='/')
    add_host_parser.add_argument(
        '--force', action='store_false', help="Override an existing host")
    _ = subparsers.add_parser('autopush')
    return parser
    
def is_flake_dir(path: Path) -> None:
    assert path.is_dir(), "Flake path is not a directory"
    assert path.joinpath('flake.nix').exists(
    ), "flake.nix does not exist in the directory"


def from_args() -> Opt:
    parser = get_parser()
    args = vars(parser.parse_args())
    args['flake'] = args['flake'].resolve(strict=True)
    is_flake_dir(args['flake'])
    subcmd = None
    match args['subcmd']:
        case "gc":
            subcmd = Gc()
        case "update":
            subcmd = Update()
        case "upgrade":
            subcmd = Upgrade()
        case "rollback":
            subcmd = RollBack()
        case "add-host":
            subcmd = AddHost(args['hostname'], args.get('hardware_conf'), args.get('conf'), args.get('root'), args['force'])
        case "autopush":
            subcmd = AutoPush()
        case "rebuild":
            subcmd = Rebuild(["switch"])
        case "cd":
            subcmd = Cd()
        case _:
            subcmd = Help(parser)
    return Opt(args['flake'], subcmd)





def main() -> None:
    from_args().run()


if __name__ == '__main__':
    main()
