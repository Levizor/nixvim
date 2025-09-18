{
  imports = [
    ./gitsigns.nix
    ./transparent.nix
    ./bufferline.nix
    ./dashboard.nix
    ./lualine.nix
    ./illuminate.nix
    ./noice.nix
  ];

  colorschemes.cyberdream.enable = true;

  plugins = {
    notify = {
      enable = true;
      settings = {
        backgroundColour = "#000000";
        level = "error";
        render = "minimal";
      };
    };
    render-markdown.enable = true;
    todo-comments.enable = true;

    snacks = {
      enable = true;
    };

    image = {
      enable = true;
    };
  };
}
