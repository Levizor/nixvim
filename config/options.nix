{
  options = {
    number = true;
    relativenumber = true;

    shiftwidth = 2;

  };

  globals = {
    mapleader = " ";
  };

  keymaps = [
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>f";
    }
  ];

  highlight = {
    Comment.underline = true;
  };
}
