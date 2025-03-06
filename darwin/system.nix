{ pkgs, ... }:
{
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

  security.pam.services.sudo_local.touchIdAuth = true;
}
