{
  imports = [
    ./gitsigns.nix
    ./transparent.nix
    ./bufferline.nix
    ./dashboard.nix
  ];
  plugins = {
    noice.enable = true;
    notify = {
      enable = true;
      backgroundColour = "#000000";
      level = "error";
      render = "minimal";
    };
    render-markdown.enable = true;
    todo-comments.enable = true;
  };
}
