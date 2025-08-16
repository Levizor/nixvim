{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      autoload = true;
      use_git_branch = true;
    };

    luaConfig.post = ''
      -- helper: detect if Neovim is reading from stdin
      local function reading_from_stdin()
        return (vim.fn.argc() == 1 and vim.fn.argv(0) == "-") or not vim.loop.isatty(0)
      end

      if not reading_from_stdin() then
        require("persistence").setup({
          -- your settings here
        })
      end

    '';
  };
}
