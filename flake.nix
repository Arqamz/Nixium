{
  # https://github.com/arqamz/nixium
  description = "The heart of my attempt at NixOS";

  outputs = {...} @ inputs: 
  let
    hosts = import ./hosts/default.nix { inherit inputs; };
  in
  {
    # Provide the system configurations for a specific system
    nixosConfigurations = hosts.nixosConfigurations;
  };

  inputs = {

    # Nixpkgs for the system
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # Nixpkgs stable for the system incase
    nixpkgs-stable.url = "github:nixos/nixpkgs?ref=nixos-24.11";

    # Small nixpkgs for faster updates
    nixpkgs-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";

    # If nixpkgs breaks something, pin a working commit
    nixpkgs-pinned.url = "github:NixOS/nixpkgs/758b1b8eaa6a8a2e2d1ddbe8753814c0c674702a";

    # Change to github:nix-systems/default if you need to build on other systems
    systems.url = "github:nix-systems/default-linux";

    # Repo for hardware-specific NixOS modules
    nixos-hardware.url = "github:nixos/nixos-hardware";

    # Impermeance
    impermanence.url = "github:nix-community/impermanence";

    # Secrets management
    agenix = {
      url = "github:ryantm/agenix";
      inputs = {
        nixpkgs.follows = "nixpkgs-small";
      };
    };

    # Hyprland & Hyprland Contrib repos
    # to be able to use the binary cache, we should avoid
    # overriding the nixpkgs input - as the resulting hash would
    # mismatch if packages are built against different versions
    # of the same depended packages.
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    xdg-portal-hyprland.url = "github:hyprwm/xdg-desktop-portal-hyprland";
    hyprpicker.url = "github:hyprwm/hyprpicker";

    hyprpaper = {
      url = "github:hyprwm/hyprpaper";
      inputs = {
        hyprlang.follows = "hyprland/hyprlang";
        nixpkgs.follows = "hyprland/nixpkgs";
        systems.follows = "hyprland/systems";
      };
    };

    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
    };

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
  };
}
