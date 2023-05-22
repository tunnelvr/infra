{
  description = "Hetzner TunnelVR + Godot Server";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    tunnelvr.url = "github:goatchurchprime/tunnelvr/mc/refactor-nix";
    nixinate = {
      url = "github:matthewcroughan/nixinate";
    };
  };

  outputs = { self, nixpkgs, tunnelvr, nixinate, ... }@inputs: {
    apps = nixinate.nixinate.x86_64-linux self;
    nixosConfigurations = {
      godot-hetzner = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          tunnelvr.nixosModules.tunnelvr
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
