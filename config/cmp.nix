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
              "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel";
            scrollbar = false;
            sidePadding = 0;
            border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
          };

          settings.documentation = {
            border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
            winhighlight =
              "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel";
          };
        };
      };
    };
  };
}
