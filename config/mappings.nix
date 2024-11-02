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
    ];

    highlight = {
      Comment.underline = true;
    };
  };
}
