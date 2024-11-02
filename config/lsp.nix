
{
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
      bashls.enable = true;
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

  plugins.none-ls = {
    enable = true;
    formatting = {
      markdownlint.enable = true;
      nixfmt.enable = true;
    };
  };
}
