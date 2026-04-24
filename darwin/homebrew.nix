{ pkgs, ... }:
{
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
    };
    taps = [
    ];
    casks = [
      "bitwarden"
      "brave-browser"
      "caffeine"
      "cursor"
      "datagrip"
      "discord"
      "element"
      "font-fira-code-nerd-font"
      "font-fira-mono-nerd-font"
      "font-meslo-lg-nerd-font"
      "freetube"
      "iterm2"
      "obsidian"
      "opencode-desktop"
      "orbstack"
      "protonvpn"
      "slack"
      "sourcetree"
      "tailscale-app"
      "transmission"
      "vlc"
      "whatsapp"
    ];
    masApps = {
    };
    brews = [ ];
  };
}
