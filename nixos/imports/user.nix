{ config, pkgs, lib, ... }:

let
    ags = pkgs.ags.overrideAttrs (prev: {
    buildInputs = prev.buildInputs ++ [ pkgs.libdbusmenu-gtk3 ];
    });

    spicetify = import (builtins.fetchGit {
        url = "https://github.com/Gerg-L/spicetify-nix.git";
	ref = "master";
    });    
in
{
  imports = [
    # For NixOS
    spicetify.nixosModules.default
  ];

  programs.spicetify =
   let
     spicePkgs = spicetify.legacyPackages.${pkgs.system};
   in
   {
     enable = true;
     spotifyPackage = pkgs.spotify;
     enabledExtensions = with spicePkgs.extensions; [
       adblock
       hidePodcasts
       shuffle # shuffle+ (special characters are sanitized out of extension names)
       fullAppDisplay
     ];
     theme = spicePkgs.themes.text;
     colorScheme = "custom";
     customColorScheme = {
  	 main_fg                               = "\${xrdb:color3}";
  	 secondary_fg                          = "\${xrdb:color6}";
	 main_bg                               = "\${xrdb:color0}";
 	 sidebar_and_player_bg                 = "\${xrdb:color0}";
	 cover_overlay_and_shadow              = ''"000000"'';
	 indicator_fg_and_button_bg            = "\${xrdb:color3}";
	 pressing_fg                           = "FF5C86";
	 slider_bg                             = "\${xrdb:color1}";
	 sidebar_indicator_and_hover_button_bg = "\${xrdb:color2}";
	 scrollbar_fg_and_selected_row_bg      = "\${xrdb:color5}";
	 pressing_button_fg                    = "\${xrdb:color6}";
	 pressing_button_bg                    = "\${xrdb:color4}";
	 selected_button                       = "\${xrdb:color2}";
	 miscellaneous_bg                      = "\${xrdb:color1}";
	 miscellaneous_hover_bg                = "\${xrdb:color4}";
	 preserve_1                            = "FFFFFF";
     };
   };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.arqqm = {
    isNormalUser = true;
    description = "Arqam Zia";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
        # Hyprland related packages
        # Wayland compositor
        hyprland
        # Wallpaper and Material U theme maker - Write your own scripts to hot change themes
        hyprpaper swww matugen
        # Color picker for Hyprland
        hyprpicker
        # Cursor manager for Hyprland
        hyprcursor
        # Idle manager for Hyprland
        hypridle
        # Screen locker for Hyprland
        hyprlock

        #Simple terminal UI for git commands
        lazygit
        # File manager
        xfce.thunar

	# Ghosttty in the future

        # GPU-accelerated terminal emulator
        kitty
        # Terminal emulator
        alacritty
        # Minimalistic Wayland terminal emulator
        foot
        # Window switcher, application launcher, and dmenu replacement and Ulauncher(add extensions)
        rofi ulauncher
        # Highly customizable Wayland bar
        waybar ags #add quickshell
        wttrbar pywal
	# System information tool
        neofetch fastfetch nitch
        # Terminal multiplexer
        tmux
        # Count lines of code
        cloc

	# Benchmarking tool
	hyperfine glmark2
        
        # JavaScript runtime
        bun
        # Dart implementation of Sass
        dart-sass
        # Simple, fast and user-friendly alternative to 'find'
        fd
        # Utility to control brightness
        brightnessctl
	btop
	networkmanager
	gnome.gnome-bluetooth
	bluez
	bluez-tools	
	gnome.adwaita-icon-theme

        # Command-line fuzzy finder
        fzf
        # Screenshot utility for Wayland
        grimblast grim slurp swappy #hyprshot
        # Screen recording tool for Wayland
        wf-recorder obs-studio
        # Wayland clipboard utilities
        wl-clipboard
        
        # GTK+ widget for source code editing
        gtksourceview
        # Web content engine for GTK+
        webkitgtk
        # D-Bus interface for user account query and manipulation
        accountsservice
        # GNU version of AWK programming language
        gawk
        # Line-oriented search tool
        ripgrep
        # Domain Name Server Suite
        dig
        # GNOME control center
        gnome.gnome-control-center
        # Performance and Task manager (similiar UI to windows)
        mission-center
        # Bluetooth window tool
        overskride
        # Icons to logout suspend hibernate
        wlogout
        # Compression |  Decompression utility
	zip unzip
        # Password store (with menu for Wayland)
        pass-wayland
        # GNU Privacy Guard
        gnupg
        # Pin-entry curses interface
        pinentry-curses
        # Wayland event viewer (check key IDs)
        wev
        # Display bandwidth usage on an interface
        iftop
        # Network protocol analyzer
        wireshark
        # Interactive HTTPS proxy
        mitmproxy
        # Network protocol analyzer (CLI)
        tshark
        # Command-line packet analyzer
        tcpdump

        # Terminal file manager
        eza yazi

        # Browsers
        # Browser designed for power users
        nyxt
        # Text-based web browser
        lynx
        # Web browser
        firefox
        # Web browser
        google-chrome

        # Services
        # A minimalistic login manager
        greetd.tuigreet
        # Greetd login daemon
        greetd.greetd

	# Notification Centers
	dunst
	swaynotificationcenter
	
	blueman

	xorg.xrdb	

        # Miscellaneous tools
        # Terminal clock
        tty-clock
        # Terminal-based journal
        tui-journal
        # Task manager
        dooit
        # CLI for ChatGPT
        chatgpt-cli
        # Cat clone with syntax highlighting
        bat
        # File manager
        superfile
        # Ping with a graph
        gping
        # Real-time web log analyzer
        goaccess

	# PYTHON
	#For waybar scripts :(
	python3
	#(python3.withPackages (python3Packages: with python3Packages; [ pygobject3 ]))
	#gobject-introspection
	#gobject-introspection-unwrapped

        # Editors and IDEs
        neovim
	# Visual Studio Code
#       vscode
        # Extensions for Visual Studio Code
	(vscode-with-extensions.override {
		vscodeExtensions = with vscode-extensions; [
			bbenoist.nix
			#drcika.apc-extension
	        	ms-azuretools.vscode-docker
	        	ms-vscode-remote.remote-ssh
		] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
	        	{
				name = "remote-ssh-edit";
				publisher = "ms-vscode-remote";
				version = "0.47.2";
				sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
			}
			{
      				name = "apc-extension";
				publisher = "drcika";
				version = "0.4.1";
				sha256 = "7eadaa97173bf8ca7092b6950a5074146b11d0ad7fd8c4f343449850b331e0a8";
    			}
		];
	})

        # Audio
	playerctl pavucontrol cava pulseaudioFull



        # Fun/Useless stuff
	# Large text
	figlet
        # Bonsai tree generator
        cbonsai
        # Terminal-based pipes screensaver
        pipes-rs
        # The Matrix in your terminal
        cmatrix
        # Rainbow text generator
        lolcat
        # Configurable talking cow
        cowsay
        # Terminal-based coin tracker
        cointop
        # Music streaming service
        # spotify spicetify-cli
        # Discord
	#betterdiscordctl vencord discord
	vesktop
    ];
  };
}
