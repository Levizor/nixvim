{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.vim-xkbswitch
  ];

  extraConfigLua = ''
    vim.g.XkbSwitchEnabled = 1;
    vim.g.XkbSwitchLib = '${pkgs.xkb-switch}/lib/libxkbswitch.so';
  '';
}
