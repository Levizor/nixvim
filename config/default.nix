{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./lsp.nix
    ./cmp.nix
    ./utils
    ./keys.nix
    ./find.nix
    ./ui
  ];

  plugins = {
    lazy.enable = true;
  };
}
