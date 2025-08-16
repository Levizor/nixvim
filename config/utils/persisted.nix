{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload.__raw =
        "
        -- If nvim was started with stdin ("
        - "), disable autoload
        if vim.fn.argc() > 0 and vim.fn.argv(0) == "
        - " then
          return false
        end
        return true
      ";
      use_git_branch = true;
    };
  };
}
