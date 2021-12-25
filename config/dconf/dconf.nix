# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "secret-service:///org/freedesktop/secrets/collection/login" ];
    };

    "apps/seahorse/windows/key-manager" = {
      height = 476;
      width = 600;
    };

    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/mutter/edge-tiling";
      saved-view = "/org/gnome/mutter/edge-tiling";
      show-warning = false;
      window-height = 972;
      window-is-maximized = false;
      window-width = 630;
    };

    "com/github/alainm23/planner" = {
      appearance = "Light";
      button-layout = "elementary";
      inbox-project = mkInt64 2227249482;
      pane-position = 317;
      quick-add-shortcut = "<Super>n";
      todoist-access-token = "05c9510a8239061531b1404b26ccaabed047eba3";
      todoist-account = true;
      todoist-last-sync = "2021-10-11T17:55:39-0400";
      todoist-sync-labels = true;
      todoist-sync-server = true;
      todoist-sync-token = "qSklYwPrAPhwoTPi_I14i8WQzpBFCWYTu7G0osJNPcgonqWhEUHYUnEQN8_IWF4VlqKwPWZnr0USDDZf_dEEZYmq3DeW59nQ-tod7ULI_2IjISU";
      todoist-user-avatar = "https://dcff1xvirvpfp.cloudfront.net/11da686d479049258c416c4b71972107_s640.jpg";
      todoist-user-email = "littlebubu.shu@gmail.com";
      todoist-user-id = 26520655;
      todoist-user-image-id = "11da686d479049258c416c4b71972107";
      todoist-user-is-premium = false;
      todoist-user-join-date = "2020-01-20T22:19:23Z";
      use-system-decoration = true;
      user-name = "littlebubu.shu";
      version = "2.7";
      window-maximized = false;
      window-position = mkTuple [ 26 44 ];
      window-size = mkTuple [ 1248 883 ];
    };

    "io/github/celluloid-player/celluloid" = {
      settings-migrated = true;
    };

    "io/github/celluloid-player/celluloid/window-state" = {
      height = 988;
      loop-playlist = false;
      maximized = false;
      playlist-width = 250;
      show-playlist = false;
      volume = 1.0;
      width = 1280;
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      window-position = mkTuple [ 207 122 ];
      word-size = 64;
    };

    "org/gnome/cheese" = {
      burst-delay = 1000;
      camera = "HD Webcam C615";
      photo-x-resolution = 960;
      photo-y-resolution = 720;
      video-x-resolution = 960;
      video-y-resolution = 720;
    };

    "org/gnome/clocks/state/window" = {
      panel-id = "world";
      size = mkTuple [ 870 690 ];
      state = 87168;
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [];
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/brian/.local/share/backgrounds/2021-10-11-19-36-56-gJB0DJs.jpeg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/input-sources" = {
      per-window = false;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "es" ]) ];
      xkb-options = [ "ctrl:nocaps" ];
    };

    "org/gnome/desktop/interface" = {
      cursor-theme = "Bibata-Modern-Ice";
      document-font-name = "Noto Sans 11";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Noto Sans 11";
      gtk-im-module = "gtk-im-context-simple";
      gtk-theme = "Orchis";
      icon-theme = "ePapirus";
      monospace-font-name = "FiraCode Nerd Font 10";
      titlebar-font = "Noto Sans Bold 11";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "firefox" "gnome-control-center" "discord" "gnome-power-panel" "com-github-alainm23-planner" "gnome-network-panel" "zoom" "anki" "gnome-printers-panel" "mailspring" "code" "org-gnome-nautilus" "obsidian" "virtualbox" "org-wezfurlong-wezterm" "gnome-system-monitor" "google-chrome" ];
    };

    "org/gnome/desktop/notifications/application/anki" = {
      application-id = "anki.desktop";
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/com-github-alainm23-planner" = {
      application-id = "com.github.alainm23.planner.desktop";
    };

    "org/gnome/desktop/notifications/application/discord" = {
      application-id = "discord.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-control-center" = {
      application-id = "gnome-control-center.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-printers-panel" = {
      application-id = "gnome-printers-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-system-monitor" = {
      application-id = "gnome-system-monitor.desktop";
    };

    "org/gnome/desktop/notifications/application/google-chrome" = {
      application-id = "google-chrome.desktop";
    };

    "org/gnome/desktop/notifications/application/mailspring" = {
      application-id = "Mailspring.desktop";
    };

    "org/gnome/desktop/notifications/application/obsidian" = {
      application-id = "obsidian.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-wezfurlong-wezterm" = {
      application-id = "org.wezfurlong.wezterm.desktop";
    };

    "org/gnome/desktop/notifications/application/virtualbox" = {
      application-id = "virtualbox.desktop";
    };

    "org/gnome/desktop/notifications/application/zoom" = {
      application-id = "Zoom.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      repeat-interval = mkUint32 18;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      disable-while-typing = false;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      disable-microphone = false;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/brian/.local/share/backgrounds/2021-10-11-19-36-56-gJB0DJs.jpeg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      maximize = [ "<Alt><Super>k" ];
      minimize = [ "<Super>n" ];
      move-to-monitor-down = [ "<Shift><Super>braceleft" ];
      move-to-monitor-left = [ "<Shift><Super>braceright" ];
      move-to-workspace-1 = [ "<Shift><Super>exclam" ];
      move-to-workspace-2 = [ "<Shift><Super>at" ];
      move-to-workspace-3 = [ "<Shift><Super>numbersign" ];
      move-to-workspace-4 = [ "<Shift><Super>dollar" ];
      move-to-workspace-left = [ "<Alt><Super>bracketleft" ];
      move-to-workspace-right = [ "<Alt><Super>bracketright" ];
      show-desktop = [ "<Primary><Super>n" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-left = [ "<Super>bracketleft" ];
      switch-to-workspace-right = [ "<Super>bracketright" ];
      toggle-fullscreen = [ "<Super>f" ];
      toggle-maximized = [ "<Super>m" ];
      unmaximize = [ "<Alt><Super>j" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      focus-mode = "sloppy";
      titlebar-font = "Noto Sans Bold 11";
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-position = mkTuple [ (-1) (-1) ];
      window-size = mkTuple [ 1024 768 ];
    };

    "org/gnome/evince/default" = {
      window-ratio = mkTuple [ 2.0915032679738563 1.3080808080808082 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
      network-monitor-gio-name = "";
    };

    "org/gnome/file-roller/dialogs/extract" = {
      recreate-folders = true;
      skip-newer = false;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gedit/plugins" = {
      active-plugins = [ "docinfo" "modelines" "spell" "filebrowser" "sort" ];
    };

    "org/gnome/gedit/preferences/ui" = {
      show-tabs-mode = "auto";
    };

    "org/gnome/gedit/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = "GeditWindowDocumentsPanel";
      side-panel-size = 200;
      size = mkTuple [ 620 956 ];
      state = 87168;
    };

    "org/gnome/gnome-screenshot" = {
      delay = 0;
      include-pointer = false;
      last-save-directory = "file:///home/brian/Pictures";
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "resources";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 1268 1020 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      columns-order = [ 0 1 2 3 4 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 8;
      sort-order = 0;
    };

    "org/gnome/gthumb/browser" = {
      browser-sidebar-width = 285;
      fullscreen-sidebar = "hidden";
      fullscreen-thumbnails-visible = false;
      maximized = false;
      properties-visible = false;
      sidebar-sections = [ "GthFileProperties:expanded" "GthFileComment:expanded" "GthFileDetails:expanded" "GthImageHistogram:expanded" ];
      sidebar-visible = true;
      sort-inverse = false;
      sort-type = "file::mtime";
      startup-current-file = "file:///home/brian/Pictures/simon.jpg";
      startup-location = "file:///home/brian/Pictures";
      statusbar-visible = true;
      thumbnail-list-visible = true;
      viewer-sidebar = "hidden";
      window-height = 810;
      window-width = 1363;
    };

    "org/gnome/gthumb/data-migration" = {
      catalogs-2-10 = true;
    };

    "org/gnome/gthumb/general" = {
      active-extensions = [ "23hq" "bookmarks" "burn_disc" "catalogs" "change_date" "comments" "contact_sheet" "convert_format" "desktop_background" "edit_metadata" "exiv2_tools" "file_manager" "find_duplicates" "flicker" "gstreamer_tools" "gstreamer_utils" "image_print" "image_rotation" "importer" "jpeg_utils" "list_tools" "oauth" "photo_importer" "raw_files" "red_eye_removal" "rename_series" "resize_images" "search" "selections" "slideshow" "terminal" "webalbums" ];
    };

    "org/gnome/libgnomekbd/preview" = {
      height = 809;
      width = 1944;
      x = 320;
      y = 135;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = false;
      experimental-features = [ "x11-randr-fractional-scaling" ];
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Alt><Super>h" ];
      toggle-tiled-right = [ "<Alt><Super>l" ];
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 2528 1004 ];
      maximized = false;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = false;
      night-light-schedule-from = 18.0;
      night-light-temperature = mkUint32 2194;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center = [ "<Super>s" ];
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>n";
      command = "com.github.alainm23.planner.quick-add";
      name = "com.github.alainm23.planner.quick-add";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>t";
      command = "wezterm";
      name = "Launch terminal";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'org.gnome.Contacts.desktop': <{'position': <0>}>, 'org.gnome.Weather.desktop': <{'position': <1>}>, 'org.gnome.clocks.desktop': <{'position': <2>}>, 'org.gnome.Maps.desktop': <{'position': <3>}>, 'org.gnome.Totem.desktop': <{'position': <4>}>, 'org.gnome.Calculator.desktop': <{'position': <5>}>, 'org.gnome.gedit.desktop': <{'position': <6>}>, 'simple-scan.desktop': <{'position': <7>}>, 'gnome-control-center.desktop': <{'position': <8>}>, 'anki.desktop': <{'position': <9>}>, 'org.gnome.Characters.desktop': <{'position': <10>}>, 'org.gnome.FileRoller.desktop': <{'position': <11>}>, 'yelp.desktop': <{'position': <12>}>, 'org.gnome.Connections.desktop': <{'position': <13>}>, 'org.gnome.Screenshot.desktop': <{'position': <14>}>, 'ca.desrt.dconf-editor.desktop': <{'position': <15>}>, 'org.gnome.Cheese.desktop': <{'position': <16>}>, 'discord.desktop': <{'position': <17>}>, 'org.gnome.font-viewer.desktop': <{'position': <18>}>, 'org.gnome.baobab.desktop': <{'position': <19>}>, 'org.gnome.DiskUtility.desktop': <{'position': <20>}>, 'org.gnome.Evince.desktop': <{'position': <21>}>}, {'drracket.desktop': <{'position': <0>}>, 'element-desktop.desktop': <{'position': <1>}>, 'org.gnome.Extensions.desktop': <{'position': <2>}>, 'firefox-private.desktop': <{'position': <3>}>, 'fish.desktop': <{'position': <4>}>, 'org.gnome.gThumb.desktop': <{'position': <5>}>, 'org.gnome.eog.desktop': <{'position': <6>}>, 'lf.desktop': <{'position': <7>}>, 'org.gnome.Logs.desktop': <{'position': <8>}>, 'Mailspring.desktop': <{'position': <9>}>, 'cups.desktop': <{'position': <10>}>, 'mpv.desktop': <{'position': <11>}>, 'nixos-manual.desktop': <{'position': <12>}>, 'c65df4ad-b1c8-4e6f-9213-588de75547d3': <{'position': <13>}>, 'com.github.alainm23.planner.desktop': <{'position': <14>}>, 'slideshow.desktop': <{'position': <15>}>, 'org.gnome.Tour.desktop': <{'position': <16>}>, 'org.gnome.tweaks.desktop': <{'position': <17>}>, 'umpv.desktop': <{'position': <18>}>, 'nvim.desktop': <{'position': <19>}>, 'xterm.desktop': <{'position': <20>}>, 'Alacritty.desktop': <{'position': <21>}>, 'org.gnome.Calendar.desktop': <{'position': <22>}>, 'org.gnome.seahorse.Application.desktop': <{'position': <23>}>}, {'org.gnome.Geary.desktop': <{'position': <0>}>, 'org.gnome.Music.desktop': <{'position': <1>}>, 'org.gnome.Photos.desktop': <{'position': <2>}>, 'pavucontrol.desktop': <{'position': <3>}>, 'virt-manager.desktop': <{'position': <4>}>, 'code.desktop': <{'position': <5>}>, 'org.gnome.Epiphany.desktop': <{'position': <6>}>, 'Zoom.desktop': <{'position': <7>}>}]";
      disable-user-extensions = false;
      disabled-extensions = [ "apps-menu@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "user-theme@gnome-shell-extensions.gcampax.github.com" "clipboard-indicator@tudmotu.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" "appindicatorsupport@rgcjonas.gmail.com" "pop-shell@system76.com" ];
      favorite-apps = [ "firefox.desktop" "org.gnome.Nautilus.desktop" "org.wezfurlong.wezterm.desktop" "gnome-system-monitor.desktop" ];
      welcome-dialog-last-shown-version = "40.4";
    };

    "org/gnome/shell/extensions/pop-shell" = {
      active-hint = false;
      gap-inner = mkUint32 4;
      gap-outer = mkUint32 4;
      show-title = true;
      smart-gaps = false;
      snap-to-grid = true;
      tile-by-default = true;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Orchis";
    };

    "org/gnome/shell/keybindings" = {
      toggle-message-tray = [];
      toggle-overview = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/terminal/legacy" = {
      default-show-menubar = false;
      schema-version = 3;
      theme-variant = "default";
    };

    "org/gnome/terminal/legacy/profiles:" = {
      default = "f6042935-7b7a-4993-b312-d3fb2f4853ef";
      list = [ "f6042935-7b7a-4993-b312-d3fb2f4853ef" ];
    };

    "org/gnome/terminal/legacy/profiles:/:f6042935-7b7a-4993-b312-d3fb2f4853ef" = {
      audible-bell = false;
      background-color = "#282828282828";
      backspace-binding = "ascii-delete";
      bold-color = "#ebebdbdbb2b2";
      bold-color-same-as-fg = false;
      cursor-background-color = "#ebebdbdbb2b2";
      cursor-blink-mode = "system";
      cursor-colors-set = true;
      cursor-foreground-color = "#282828282828";
      cursor-shape = "block";
      delete-binding = "delete-sequence";
      foreground-color = "#ebebdbdbb2b2";
      highlight-colors-set = false;
      login-shell = false;
      palette = [ "#282828282828" "#cccc24241d1d" "#989897971a1a" "#d7d799992121" "#454585858888" "#b1b162628686" "#68689d9d6a6a" "#a8a899998484" "#929283837474" "#fbfb49493434" "#b8b8bbbb2626" "#fafabdbd2f2f" "#8383a5a59898" "#d3d386869b9b" "#8e8ec0c07c7c" "#ebebdbdbb2b2" ];
      scroll-on-output = true;
      scrollback-lines = 10000;
      scrollbar-policy = "never";
      use-custom-command = false;
      use-system-font = true;
      use-theme-colors = false;
      visible-name = "Gruvbox Dark";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 184;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 25 87 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 738;
      manager-window-width = 1002;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = true;
      removedev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = mkTuple [ 800 600 ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/new-vm" = {
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/paths" = {
      media-default = "/home/brian/Downloads";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/brian/Downloads/Win11_English_x64v1.iso" "/home/brian/Downloads/nixos-gnome-21.05.3740.ce7a1190a0f-x86_64-linux.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/8740d8464bf54aa9b541113f6087e53e" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1024 812 ];
    };

    "org/virt-manager/virt-manager/vms/a65a1ca5e4a84c3298937eaba4ef0ddc" = {
      autoconnect = 1;
      scaling = 0;
      vm-window-size = mkTuple [ 1458 825 ];
    };

    "org/virt-manager/virt-manager/vms/b894de2283ff42e5a89eedf919584766" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1024 841 ];
    };

  };
}
