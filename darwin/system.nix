{ pkgs, ... }:
{
  system.primaryUser = "klefevre";

  system.defaults.dock = {
    orientation = "bottom";
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
