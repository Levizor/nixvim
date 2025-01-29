{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        lua_ls.enable = true;
        rust_analyzer = {
          enable = true;
          installRustc = false;
          installCargo = false;
        };
        nil_ls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        nixd.enable = true;
        bashls.enable = true;
      };

      keymaps = {
        diagnostic = {
          "<leader>f" = "open_float";
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
          "<leader>do" = "setloclist";
        };
        lspBuf = {
          K = "hover";
          gr = "references";
          gD = "declaration";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
          ca = "code_action";
          cr = "rename";
        };
      };
    };

    none-ls = {
      enable = true;
      sources.formatting = {
        alejandra.enable = true;
        prettier.enable = true;
        sqlformat.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
      };
    };

    treesitter = {
      enable = true;
      nixGrammars = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };
    treesitter-context = {
      enable = true;
    };

    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = "fallback";
          timeout_ms = 500;
        };
        notify_on_error = true;

        formatters_by_ft = {
          css = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          lua = ["stylua"];
          markdown = ["prettier"];
          nix = ["alejandra"];
          yaml = ["yamlfmt"];
        };
      };
    };

    trouble = {
      enable = true;
    };
  };
}
