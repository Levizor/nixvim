{ pkgs, ... }:
{
  plugins = {
    lsp-format.enable = true;
    lsp = {
      enable = true;
      servers = {
        html.enable = true;
        pyright.enable = true;
        markdown_oxide.enable = true;
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
        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
        prettier.enable = true;
        sqlformat.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
      };
    };

    treesitter = {
      folding = true;
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

    treesitter-textobjects = {
      enable = true;
      lspInterop.enable = true;
      select = {
        enable = true;
        lookahead = true;
        includeSurroundingWhitespace = true;
        keymaps = {
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "as" = "@local.scope";
        };
      };
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
          css = [ "prettier" ];
          html = [ "prettier" ];
          json = [ "prettier" ];
          lua = [ "stylua" ];
          markdown = [ "prettier" ];
          nix = [ "alejandra" ];
          yaml = [ "yamlfmt" ];
        };
      };
    };

    trouble = {
      enable = true;
    };
    nvim-ufo = {
      enable = true;

      settings = {

      };
    };
  };
}
