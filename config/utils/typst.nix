{
  plugins = {
    typst-preview = {
      enable = true;
    };

  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tp";
      action = "<cmd>TypstPreviewToggle<cr>";
      options = {
        desc = "Typst Preview";
      };
    }
  ];
}
