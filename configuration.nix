{ pkgs, lib, ... }:
{
   nix = {
    package = pkgs.nix;
    extraOptions = ''
      system = x86_64-darwin
      extra-platforms = aarch64-darwin x86_64-darwin # But we use rosetta too
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
      "1password"
      "alfred"
      "amethyst"
      "android-studio"
      "authy"
      "eloston-chromium"
      "docker" # remove for Mac with Apple silicon
      "font-fira-code-nerd-font"
      "font-fira-mono-nerd-font"
      "firefox"
      "iterm2"
      "moom"
      "parallels"
      "protonvpn"
      "slack"
      "sourcetree"
      "spotify"
      "transmission"
      "vlc"
      "vscodium"
      "visual-studio-code"
      "whatsapp"
      "zulu11"
    ];
    masApps = {
      Xcode = 497799835;
    };
    brews = [];
  };
}
