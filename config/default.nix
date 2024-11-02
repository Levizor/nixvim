{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./options.nix
    ./lsp.nix
    ./cmp.nix
    ./mappings.nix
    ./utils
  ];

  colorschemes.nord.enable = true;

  plugins = {
    lualine.enable = true;

    telescope.enable = true;

    oil.enable = true;

    luasnip.enable = true;

    lazy.enable = true;
  };


  plugins.lsp-format = {
    enable = true;
  };

}
