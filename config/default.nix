{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./vopts.nix
    ./lsp.nix
    ./cmp.nix
    ./mappings.nix
  ];

  colorschemes.nord.enable = true;

  plugins = {
    lualine.enable = true;

    telescope.enable = true;

    oil.enable = true;

    treesitter.enable = true;

    luasnip.enable = true;

    lazy.enable = true;
  };


  plugins.lsp-format = {
    enable = true;
  };

}
