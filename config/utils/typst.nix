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
    {
      mode = "n";
      key = "<leader>tc";
      action = "<cmd>TypstPreviewSyncCursor<cr>";
      options.desc = "Typst Preview Sync Cursor";
    }
  ];
}
