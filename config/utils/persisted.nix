{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload = lib.nixvim.mkRaw ''
        return false
      '';
      use_git_branch = true;
    };
  };
}
