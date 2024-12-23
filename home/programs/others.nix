{
  programs.atuin = {
    enable = true;
    # enableFishIntegration = true;
  };

  programs.helix = {
    enable = true;
  };

  programs.neovim = {
    enable = true;
  };

  programs.direnv = {
    enable = true;
    # enableZshIntegration = true;
    # enableFishIntegration = true;
  };

  programs.gpg = {
    enable = true;
    # homedir = "${config.home.homeDirectory}/.config/gnupg"; FIXME
    homedir = "/Users/klefevre/.config/gnupg";
  };

  programs.tealdeer = {
    enable = true;
  };

  programs.jq = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
    # enableZshIntegration = true;
    enableFishIntegration = true;
  };

  # programs.zoxide = {
  #   enable = true;
  #   # enableZshIntegration = true;
  #   enableFishIntegration = true;
  # };
}
