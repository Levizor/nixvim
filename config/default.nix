{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./options.nix
    ./lsp.nix
    ./cmp.nix
    ./utils
    ./keys.nix
    ./find.nix
  ];

  colorschemes.nord.enable = true;

  plugins = {
    lualine.enable = true;

    oil.enable = true;

    luasnip.enable = true;

    lazy.enable = true;
  };


  plugins.lsp-format = {
    enable = true;
  };

}
