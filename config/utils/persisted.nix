{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload.__raw = ''
        autoload = function()
          -- If nvim was started with stdin ("-"), disable autoload
          if vim.fn.argc() > 0 and vim.fn.argv(0) == "-" then
            return false
          end
          return true
        end,
      '';
      use_git_branch = true;
    };
  };
}
