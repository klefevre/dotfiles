{ pkgs, ... }:
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      time = {
        disabled = false;
      };
    };
  };
}
