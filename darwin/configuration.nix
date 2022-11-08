{ pkgs, config, lib, ... }:
{
  imports = [
    ./homebrew.nix
    ./packages.nix
    ./system.nix
  ];

  nix = {
    package = pkgs.nix;
    extraOptions = ''
      system = aarch64-darwin
      extra-platforms = aarch64-darwin x86_64-darwin
      experimental-features = nix-command flakes
      build-users-group = nixbld
    '';
  };

  environment.darwinConfig = "/Users/klefevre/.config/nixpkgs/darwin/configuration.nix";
  environment.shells = [ pkgs.fish ];
  environment.pathsToLink = [ "/share/fish" ];

  programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
}
