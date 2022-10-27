{ pkgs, lib, ... }:
{
   nix = {
    package = pkgs.nix;
    extraOptions = ''
      system = aarch64-darwin
      extra-platforms = x86_64-darwin 
      experimental-features = nix-command flakes
      build-users-group = nixbld
    '';
  };

  fonts = {
    fontDir.enable = false;
    fonts = with pkgs; [
      fira
      fira-code
    ];
  };

  programs.zsh.enable = true;

  # -- Services
  
  services.nix-daemon.enable = true;

  # -- System stuff

  system.defaults.dock = {
    orientation = "left";
  };

  system.defaults.loginwindow = {
    GuestEnabled = false;
    DisableConsoleAccess = true;
  };

  system.defaults.spaces = {
    spans-displays = false;
  };

  system.defaults.trackpad = {
    Clicking = false;
    TrackpadRightClick = true;
  };

  system.defaults.finder = {
    FXEnableExtensionChangeWarning = true;
  };

  # - Security

  security.pam.enableSudoTouchIdAuth = true;

  # - Homebrew
  
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
    brews = [];
  };
}
