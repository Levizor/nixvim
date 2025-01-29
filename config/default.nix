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
    ./ui
  ];

  colorschemes.nord.enable = true;

  plugins = {
    lualine.enable = true;

    lazy.enable = true;
  };

  plugins.lsp-format = {
    enable = true;
  };
}
