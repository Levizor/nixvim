{
  plugins.which-key = {
    enable = true;
    settings ={

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
      __unkeyed-1 = "<leader>b";
      group = "Buffers";
      icon = "󰓩 ";
    }
    {
      __unkeyed = "<leader>c";
      group = "Codesnap";
      icon = "󰄄 ";
      mode = "v";
    }


    ];
    };
  };
}
