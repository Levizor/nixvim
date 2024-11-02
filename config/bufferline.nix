{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
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
}
