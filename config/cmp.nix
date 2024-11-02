{
  plugins = {
    luasnip.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
	sources = [
	  {name = "nvim_lsp";}
	  {name = "path";}
	  {name = "buffer";}
	  {name = "emoji";}
	  {name = "luasnip";}
	];
	mapping = {
	  "<C-Space>" = "cmp.mapping.complete()";
	  "<C-d>" = "cmp.mapping.scroll_docs(-4)";
	  "<C-c>" = "cmp.mapping.close()";
	  "<C-f>" = "cmp.mapping.scroll_docs(4)";
	  "<CR>" = "cmp.mapping.confirm({ select = true })";
	  "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
	  "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
	  "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
	  "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
	  # "<Tab>" =
	  #          # lua 
	  #          ''
	  #            function(fallback)
	  #              local line = vim.api.nvim_get_current_line()
	  #              if line:match("^%s*$") then
	  #                fallback()
	  #              elseif cmp.visible() then
	  #                cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })
	  #              else
	  #                fallback()
	  #              end
	  #            end
	  #          '';
	  #        "<Down>" =
	  #          # lua
	  #          ''
	  #            function(fallback)
	  #              if cmp.visible() then
	  #                cmp.select_next_item()
	  #              elseif require("luasnip").expand_or_jumpable() then
	  #                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
	  #              else
	  #                fallback()
	  #              end
	  #            end
	  #          '';
	  #        "<Up>" =
	  #          # lua
	  #          ''
	  #            function(fallback)
	  #              if cmp.visible() then
	  #                cmp.select_prev_item()
	  #              elseif require("luasnip").jumpable(-1) then
	  #                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
	  #              else
	  #                fallback()
	  #              end
	  #            end
	  #          '';
	};

	formatting = {
	  fields = [
	    "abbr"
	    "kind"
	    "menu"
	  ];
	  format =''
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
            winhighlight =
              "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
            scrollbar = false;
            sidePadding = 0;
            border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
          };

          settings.documentation = {
            border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
            winhighlight =
              "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
          };
        };
      };
    };
  };
}
