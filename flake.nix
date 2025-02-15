{
  #https://github.com/arqamz/nixium
  description = "The heart of my attempt at NixOS";

  outputs = {...} @ inputs: 
  {
    packages.x86_64-linux.hello = inputs.nixpkgs.legacyPackages.x86_64-linux.hello;
    packages.x86_64-linux.default = inputs.nixpkgs.legacyPackages.x86_64-linux.hello;
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
}
