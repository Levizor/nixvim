{
  imports = [
    ./gitsigns.nix
    ./transparent.nix
    ./bufferline.nix
    ./dashboard.nix
    ./lualine.nix
    ./illuminate.nix
  ];

  colorschemes.cyberdream.enable = true;

  plugins = {
    noice.enable = true;
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
  };
}
