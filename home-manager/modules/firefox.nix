{ config, pkgs, inputs, ... }:

{
  home.file.".mozilla/firefox/default/chrome/firefox-gnome-theme".source = inputs.firefox-gnome-theme;

  programs.firefox = {
    enable = true;
    profiles.default = {
      name = "Default";
      settings = {
        "browser.fullscreen.autohide" = false;

        # firefox-gnome-theme related settings
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "browser.uidensity" = 0;
        "svg.context-properties.content.enabled" = true;
      };
      userChrome = ''
        @import "firefox-gnome-theme/userChrome.css";
      '';
      userContent = ''
        @import "firefox-gnome-theme/userContent.css";
      '';
    };
  };

  xdg.configFile.nvim.source = pkgs.fetchFromGitHub {
    owner = "pabloavi";
    repo = "NvChad";
    rev = "a5574aebdbcd9cfdbabb4f70e9e073a25b04bc72";
    sha256 = "kXky8Qez8wPyk7whzThVexVgMtZvcxDk4KkM5FSOFyE=";
  };
}
