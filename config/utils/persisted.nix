{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
      # autoload = false;
      autoload.__raw = ''
        return false
      '';
    };
  };
}
