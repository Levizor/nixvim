{
  plugins = {
    typst-preview = {
      enable = true;
    };
    lsp.servers.tinymist = {
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
