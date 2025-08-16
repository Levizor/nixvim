{
  plugins = {
    luasnip.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "emoji"; }
          { name = "luasnip"; }
          { name = "supermaven"; }
        ];

        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-c>" = "cmp.mapping.close()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };

        formatting = {
          fields = [
            "abbr"
            "kind"
            "menu"
          ];
          format = ''
            function(_, item)
              local icons = {
                Namespace = "󰌗",
                Text = "󰉿",
                Method = "󰆧",
                Function = "󰆧",
                Constructor = "",
                Field = "󰜢",
                Variable = "󰀫",
                Class = "󰠱",
                Interface = "",
                Module = "",
                Property = "󰜢",
                Unit = "󰑭",
                Value = "󰎠",
                Enum = "",
                Keyword = "󰌋",
                Snippet = "",
                Color = "󰏘",
                File = "󰈚",
                Reference = "󰈇",
                Folder = "󰉋",
                EnumMember = "",
                Constant = "󰏿",
                Struct = "󰙅",
                Event = "",
                Operator = "󰆕",
                TypeParameter = "󰊄",
                Table = "",
                Object = "󰅩",
                Tag = "",
                Array = "[]",
                Boolean = "",
                Number = "",
                Null = "󰟢",
                String = "󰉿",
                Calendar = "",
                Watch = "󰥔",
                Package = "",
                Copilot = "",
                Codeium = "",
                TabNine = "",
              }

              local icon = icons[item.kind] or ""
              item.kind = string.format("%s %s", icon, item.kind or "")
              return item
            end
          '';
        };

        window = {
          completion = {
            winhighlight = "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel,CursorLine:PmenuSel";
            scrollbar = false;
            sidePadding = 0;
            # border = [
            #   "╭"
            #   "─"
            #   "╮"
            #   "│"
            #   "╯"
            #   "─"
            #   "╰"
            #   "│"
            # ];
          };

          settings.documentation = {
            # border = [
            #   "╭"
            #   "─"
            #   "╮"
            #   "│"
            #   "╯"
            #   "─"
            #   "╰"
            #   "│"
            # ];
            winhighlight = "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel,CursorLine:PmenuSel";
          };
        };
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    dap.enable = true;
  };

  keymaps = [
    {
      mode = [
        "i"
        "s"
      ];
      key = "<Tab>";
      action = ''
        function()
          local ls = require("luasnip")
          if ls.jumpable(1) then
            return "<Plug>luasnip-jump-next"
          else
            return "<Tab>"
          end
        end
      '';
      options = {
        expr = true;
        silent = true;
        desc = "LuaSnip jump forward";
      };
    }
    {
      mode = [
        "i"
        "s"
      ];
      key = "<S-Tab>";
      action = ''
        function()
          local ls = require("luasnip")
          if ls.jumpable(-1) then
            return "<Plug>luasnip-jump-prev"
          else
            return "<S-Tab>"
          end
        end
      '';
      options = {
        expr = true;
        silent = true;
        desc = "LuaSnip jump backward";
      };
    }
  ];
}
