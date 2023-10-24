{ pkgs, ... }:
{
  homebrew = {
    enable = false;
    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
    };
    taps = [
      "homebrew/cask-fonts"
    ];
    casks = [
      "alacritty"
      "alfred"
      "amethyst"
      "authy"
      "brave-browser"
      "eloston-chromium"
      "datagrip"
      "discord"
      "docker"
      "element"
      "font-fira-code-nerd-font"
      "font-fira-mono-nerd-font"
      "font-meslo-lg-nerd-font"
      "freetube"
      "hammerspoon"
      "iterm2"
      "moom"
      "nightfall"
      "obsidian"
      "parallels"
      "protonvpn"
      "slack"
      "sourcetree"
      "spotify"
      "telegram"
      "transmission"
      "utm"
      "vlc"
      "visual-studio-code"
      "whatsapp"
    ];
    masApps = {
      Xcode = 497799835;
    };
    brews = [ ];
  };
}
