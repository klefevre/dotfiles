{ pkgs, ... }:
{
  programs.starship = {
    enable = true;
    # enableZshIntegration = true;
    # enableNuIntegration = true;
    enableFishIntegration = true;
    settings = {
      time = {
        disabled = false;
      };
    };
  };
}
