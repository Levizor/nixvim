{
  config = {
    globals.mapleader = " ";

    keymaps = [
      {
        action = "<cmd>Telescope live_grep<CR>";
        key = "<leader>g";
      }
      {
        action = "<cmd>Telescope find_files<CR>";
        key = "<leader>f";
      }
      {
      	action = "<cmd>Oil<CR>";
	key = "<leader>e";
      }
      {
	action = "<cmd>BufferLineCycleNext<CR>";
	key = "L";
	mode = ["n" "v"];
      }
      {
	action = "<cmd>BufferLineCyclePrev<CR>";
	key = "H";
	mode = ["n" "v"];
      }
    ];

    highlight = {
      Comment.underline = true;
    };
  };
}
