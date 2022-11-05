{ pkgs, lib, config, home-manager, nix-darwin, inputs, ... }:
{
  imports = [
    ./git.nix
    ./shell.nix
  ];
}
