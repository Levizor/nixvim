{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload.__raw = ''
        function()
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
