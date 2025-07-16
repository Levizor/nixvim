{
  plugins.noice = {
    enable = true;
    settings = {
      bottom_search = true;
      command_pallete = true;
      long_message_to_split = true;
      cmdline.view = "cmdline";

      luaConfig.post = ''
        require("lualine").setup({
          sections = {
            lualine_x = {
              {
                require("noice").api.status.message.get_hl,
                cond = require("noice").api.status.message.has,
              },
              {
                require("noice").api.status.command.get,
                cond = require("noice").api.status.command.has,
                color = { fg = "yellow" },
              },
              {
                require("noice").api.status.mode.get,
                cond = require("noice").api.status.mode.has,
                color = { fg = "yellow" },
              },
              {
                require("noice").api.status.search.get,
                cond = require("noice").api.status.search.has,
                color = { fg = "yellow" },
              },
            },
          },
        })
      '';
    };
  };
}
