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
      "alfred"
      "amethyst"
      "android-studio"
      "authy"
      "brave-browser"
      "eloston-chromium"
      "datagrip"
      "discord"
      "docker" # remove for Mac with Apple silicon
      "font-fira-code-nerd-font"
      "font-fira-mono-nerd-font"
      "font-meslo-lg-nerd-font"
      "iterm2"
      "moom"
      "obsidian"
      "parallels"
      "protonvpn"
      "slack"
      "sourcetree"
      "spotify"
      "telegram"
      "transmission"
      "vlc"
      "vscodium"
      "whatsapp"
    ];
    masApps = {
      Xcode = 497799835;
    };
    brews = [ ];
  };
}
