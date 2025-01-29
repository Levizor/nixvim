{
  globals.mapleader = " ";

  highlight = {
    Comment.underline = true;
  };
  plugins.which-key = {
    enable = true;
    settings = {
      delay = 200;
      expand = 1;
      notify = false;
      preset = false;

      replace = {
        desc = [
          [
            "<space>"
            "SPACE"
          ]
          [
            "<leader>"
            "SPACE"
          ]
          [
            "<[cC][rR]>"
            "RETURN"
          ]
          [
            "<[tT][aA][bB]>"
            "TAB"
          ]
          [
            "<[bB][sS]>"
            "BACKSPACE"
          ]
        ];
      };

      spec = [
        {
          __unkeyed-1 = "g";
          group = "LSP actions";
        }
        {
          __unkeyed-1 = "gD";
          icon = "󰅩 ";
          desc = "Goto Declaration";
        }
        {
          __unkeyed-1 = "gd";
          icon = "󰘦 ";
          desc = "Goto Definition";
        }
        {
          __unkeyed-1 = "gr";
          icon = " ";
          desc = "Goto References";
        }
        {
          __unkeyed-1 = "gI";
          icon = "󰉺 ";
          desc = "Goto Implementations";
        }
        {
          __unkeyed-1 = "gt";
          icon = " ";
          desc = "Goto Type defs";
        }
        {
          __unkeyed-1 = "<leader>d";
          group = "Debug";
          icon = " ";
        }
        {
          __unkeyed-1 = "<leader>b";
          group = "Buffers";
          icon = "󰓩 ";
        }
        {
          __unkeyed = "<leader>c";
          group = "Code actions";
          icon = "󰄄 ";
        }
        {
          __unkeyed-1 = "<leader>ca";
          icon = "󱐋 ";
          desc = "Code Actions";
        }
        {
          __unkeyed-1 = "<leader>cr";
          icon = "󰲽 ";
          desc = "Rename";
        }
        {
          __unkeyed-1 = "<leader>j";
          icon = "󰲽 ";
          desc = "Next Diagnostic";
        }
        {
          __unkeyed-1 = "<leader>k";
          icon = "󰑕 ";
          desc = "Previous Diagnostic";
        }
        {
          __unkeyed-1 = "<leader>f";
          group = "File / Find";
          icon = " ";
        }
        {
          __unkeyed-1 = "<leader>q";
          group = "Quit / Session";
          icon = "󰩈 ";
        }
        {
          __unkeyed-1 = "<leader>/";
          icon = " ";
          desc = "Live Grep";
        }
        {
          __unkeyed-1 = "<leader>e";
          icon = "󰙅 ";
          desc = "Oil";
        }
      ];
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ff";
      action = "<CMD>lua require('fzf-lua').files({ cwd = vim.loop.cwd() })<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<CMD>lua require('fzf-lua').oldfiles({ cwd = vim.loop.cwd() })<CR>";
      options.desc = "Recent Files";
    }
    {
      action = "<cmd>Oil<CR>";
      key = "<leader>e";
      options = {
        desc = "Oil";
      };
    }
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "L";
      options = {
        desc = "Next Tab";
      };
      mode = ["n" "v"];
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "H";
      options = {
        desc = "Previous tab";
      };
      mode = ["n" "v"];
    }
    {
      action = "<cmd>BufferLineMoveNext<CR>";
      key = "<Ctrl-L>";
      options = {
        desc = "Move tab to right";
      };
      mode = ["n" "v"];
    }
    {
      action = "<cmd>BufferLineMovePrev<CR>";
      key = "<Ctrl-H>";
      options = {
        desc = "Move tab to left";
      };
      mode = ["n" "v"];
    }
    {
      action = "<cmd>bd<CR>";
      key = "<leader>x";
      options.desc = "Delete buffer";
      mode = ["n" "v"];
    }
    {
      action = "<cmd>TransparentToggle<CR>";
      key = "<leader>tt";
      options = {
        desc = "Toggle transparency";
      };
    }
    {
      action = "<cmd>UndotreeToggle<CR>";
      key = "<leader>ut";
      options = {
        desc = "Toggle undotree";
      };
    }
    {
      mode = "n";
      key = "gd";
      action = "<CMD>FzfLua lsp_definitions jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "Goto Definition";
    }
    {
      mode = "n";
      key = "gr";
      action = "<CMD>FzfLua lsp_references jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "References";
    }
    {
      mode = "n";
      key = "gI";
      action = "<CMD>FzfLua lsp_implementations jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "Goto Implementation";
    }
    {
      mode = "n";
      key = "gt";
      action = "<CMD>FzfLua lsp_typedefs jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "Goto T[y]pe Definition";
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<CMD>lua vim.diagnostic.open_float()<CR>";
      options.desc = "Popup Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>cD";
      action = "<CMD>Trouble diagnostics toggle<CR>";
      options.desc = "List All Diagnostics";
    }
  ];
}
