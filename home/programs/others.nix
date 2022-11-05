{ pkgs, lib, home-manager, config, ... }:
{
  programs.helix = {
    enable = true;
  };

  programs.neovim = {
    enable = true;
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.gpg = {
    enable = true;
    homedir = "${config.home.homeDirectory}.config/gnupg";
  };

  programs.tealdeer = {
    enable = true;
  };

  programs.jq = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
