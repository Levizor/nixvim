{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./vopts.nix
  ];

  colorschemes.nord.enable = true;

  plugins = {
    lualine.enable = true;

    telescope.enable = true;

    oil.enable = true;

    treesitter.enable = true;

    luasnip.enable = true;
  };

  plugins.lsp = {
    enable = true;
    servers = {
      lua_ls.enable = true;
      rust_analyzer = {
	enable = true;
	installRustc = false;
	installCargo = false;
      };
      clangd.enable = true;
      cmake.enable = true;
      nixd.enable = true;
    };

    keymaps = {
      diagnostic = {
	"<leader>j" = "goto_next";
	"<leader>k" = "goto_prev";
      };
      lspBuf = {
	  K = "hover";
	  gD = "references";
	  gd = "definition";
	  gi = "implementation";
	  gt = "type_definition";
	};
    };
  };

  plugins.lazy.enable = true;

  plugins.lsp-format = {
    enable = true;
  };

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
      ];
      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      };
    };
  };
}
