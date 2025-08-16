{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
      autoload.__raw = ''
        function()
          if vim.fn.argc() > 0 and vim.fn.argv(0) == "-" then
            return false
          end
          return true
        end'';
    };
  };
}
