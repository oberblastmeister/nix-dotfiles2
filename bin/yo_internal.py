import argparse
import pathlib
from pathlib import Path
import subprocess
from argparse import ArgumentParser
from typing import Any, Tuple
import shutil
import os
import sys


def is_root() -> bool:
    return os.getuid() == 0


def check_is_root() -> None:
    if not is_root():
        print('You must be root to run this subcommand!')
        sys.exit(1)


def auto_push(args: dict[str, Any]) -> None:
    subprocess.run(["git", "add", "."])
    subprocess.run(["git", "commit", "-m", "autopush"])
    subprocess.run(["git", "push"])


def rebuild(args: dict[str, Any], extra: list[str]) -> None:
    check_is_root()
    subprocess.run(["nixos-rebuild", "--flake", args['flake']] + extra)


def gc() -> None:
    check_is_root()
    subprocess.run(["nix-collect-garbage", "-d"])
    subprocess.run(["nix-store", "--optimise"])


def update(args: dict[str, Any]) -> None:
    subprocess.run(["nix", "flake", "update", args['flake']])


def upgrade(args: dict[str, Any]) -> None:
    check_is_root()
    update(args)
    rebuild(args, ["switch"])


def rollback(args: dict[str, Any]) -> None:
    check_is_root()
    rebuild(args, ["--rollback", "switch"])


def generate_hardware_config(root: Path, dir: Path) -> None:
    new_dir = dir
    if root != Path('/') and dir.is_relative_to(root):
        new_dir = Path('/') / dir.relative_to(root)
    subprocess.run(["nixos-generate-config", "--root", root, "--dir", new_dir])
    (dir / "configuration.nix").unlink()


def add_host(args: dict[str, Any]) -> None:
    check_is_root()
    if len(Path(args['host_name']).parts) != 1:
        raise ValueError('The name must only have one path component')
    host_path = args['flake'] / 'hosts' / args['host_name']
    if host_path.exists():
        if args['force']:
            shutil.rmtree(host_path)
        else:
            raise ValueError('The host path already exists')
    host_path.mkdir()
    try:
        if args['hardware_conf'] is not None:
            shutil.copy(args['hardware_conf'], host_path /
                        'hardware-configuration.nix')
        else:
            generate_hardware_config(args['root'], host_path)
        if args['conf'] is not None:
            shutil.copy(args["conf"], host_path / 'default.nix')
        else:
            shutil.copy(args["flake"] / "host_template" /
                        "default.nix", host_path)
    except Exception:
        try:
            host_path.rmdir()
        except Exception:
            pass
        raise


def is_flake_dir(path: Path) -> None:
    assert path.is_dir(), "Flake path is not a directory"
    assert path.joinpath('flake.nix').exists(
    ), "flake.nix does not exist in the directory"


def parse_args() -> Tuple[dict[str, Any], ArgumentParser]:
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
        'host_name', type=str, help="Required hostname")
    add_host_parser.add_argument(
        '--hardware-conf', type=Path, help="hardware-configuration.nix path")
    add_host_parser.add_argument(
        '--conf', type=Path, help="configuration.nix path. Will be copied to hosts/<host>/default.nix")
    add_host_parser.add_argument(
        '--root', type=Path, help="the root to use", default='/')
    add_host_parser.add_argument(
        '--force', action='store_false', help="Override an existing host")
    _ = subparsers.add_parser('autopush')
    args = vars(parser.parse_args())
    args['flake'] = args['flake'].resolve(strict=True)
    is_flake_dir(args['flake'])
    return (args, parser)


def run(args: dict[str, Any], parser: argparse.ArgumentParser) -> None:
    match args['subcmd']:
        case "gc":
            gc()
        case "update":
            update(args)
        case "upgrade":
            upgrade(args)
        case "rollback":
            rollback(args)
        case "add-host":
            add_host(args)
        case "autopush":
            auto_push(args)
        case "rebuild":
            rebuild(args, ["switch"])
        case _:
            parser.print_help()


def main() -> None:
    args, parser = parse_args()
    run(args, parser)


if __name__ == '__main__':
    main()
