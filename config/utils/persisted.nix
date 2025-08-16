{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
      autoload.__raw = ''
        function()
          return false
        end
      '';
    };
  };
}
