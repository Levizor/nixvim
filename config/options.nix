{
  config = {
    globals.mapleader = " ";

    opts = {
      number = true;
      relativenumber = true;
      splitbelow = true;
      splitright = true;
      scrolloff = 4;
      autoindent = true;
      clipboard = "unnamedplus";
      expandtab = true;
      smartindent = true;
      shiftwidth = 2;
      tabstop = 2;
      foldlevel = 4;
      foldmethod = "expr";
      foldexpr = "nvim_treesitter#foldexpr()";

      ignorecase = true;
      incsearch = true;
      smartcase = true;

      undofile = true;
      termguicolors = true;
    };

    highlight = {
      Comment.underline = true;
    };
  };
}
