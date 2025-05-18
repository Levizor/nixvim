{
  plugins.codesnap = {
    enable = true;
    settings = {
      save_path = "~/Pictures/Codesnap/";
      has_line_number = true;
      watermark = null;
      bg_theme = "grape";
      title = null;
      mac_window_bar = false;
    };

    luaConfig.post = ''
      require("codesnap").setup({
        bg_padding = 0,
      })
    '';
  };
}
