{ config, pkgs, lib, ... }:
{
  imports = [
    ./shells
    ./programs
  ];

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}
