{
  description = "My Nix system configs";

  inputs = {
    # Base

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Darwin specific

    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nix-darwin,
    home-manager,
    ...
  }: {
    darwinConfigurations."kl-mbp" = nix-darwin.lib.darwinSystem {
      modules = [
        ./darwin/configuration.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.klefevre = import ./home;
          users.users.klefevre.home = "/Users/klefevre";
        }
      ];
    };
  };
}
