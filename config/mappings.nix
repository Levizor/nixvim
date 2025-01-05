{
  config = {
    globals.mapleader = " ";

    keymaps = [
      {
        action = "<cmd>Telescope live_grep<CR>";
        key = "<leader>g";
        options = {
          desc = "Live Grep";
        }; 
      }
      {
        action = "<cmd>Telescope find_files<CR>";
        key = "<leader>f";
        options = {
          desc = "Find files";
        };
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
        options.desc = "Close buffer";
        mode = ["n" "v"];
      }
      {
        action = "<cmd>TransparentToggle<CR>";
        key = "<leader>tt";
        options = {
          desc = "Toggle transparency";
        }; 
      }
    ];

    highlight = {
      Comment.underline = true;
    };
  };
}
