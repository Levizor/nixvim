{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload = false;
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
