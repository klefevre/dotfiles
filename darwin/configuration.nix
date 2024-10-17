{ pkgs, inputs, ... }:
{
  imports = [
    ./homebrew.nix
    ./packages.nix
    ./system.nix
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";

  nix = {
    linux-builder.enable = true;
    settings.experimental-features = "nix-command flakes";
    settings.trusted-users = ["@admin"];
    # package = pkgs.nix;
  };

  programs.zsh.enable = true;
  programs.fish.enable = true;

  environment = {
    shells = [ pkgs.fish pkgs.zsh ];
    loginShell = pkgs.fish;
    systemPackages = [ pkgs.coreutils ];
  };

  system = {
    # configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;
    stateVersion = 4;
  };

  services = {
    nix-daemon.enable = true;
  };
}
