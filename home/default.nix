{ config, pkgs, lib, ... }:
{
  imports = [
    ./shells
    ./programs
  ];

  home.stateVersion = "23.05";

  programs.home-manager.enable = true;
}
