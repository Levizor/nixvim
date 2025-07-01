{
  plugins = {
    lsp.servers.typst.enable = true;

    typst-preview = {
      enable = true;
      settings = {
      };
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
