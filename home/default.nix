{ config, pkgs, lib, ... }:
{
  imports = [
    ./programs
  ];

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}
