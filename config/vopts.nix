{
  options = {
    number = true;
    relativenumber = true;

    shiftwidth=2;
    tabstop=2;
  };
					
	

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
