{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
      autoload = ''
        function()
          if vim.fn.argc() > 0 and vim.fn.argv(0) == "-" then
            return false
          end
          return true
        end'';
    };
  };
}
