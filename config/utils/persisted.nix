{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload = lib.nixvim.mkRaw ''
        -- If nvim was started with stdin ("-"), disable autoload
        if vim.fn.argc() > 0 and vim.fn.argv(0) == "-" then
          return false
        end
        return true
      '';
      use_git_branch = true;
    };

    luaConfig.pre = ''
      vim.api.nvim_create_autocmd("StdinReadPre", {
        callback = function()
          vim.g.persistence_enabled = false
        end,
      })
    '';
  };
}
