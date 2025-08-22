{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.vim-xkbswitch
  ];

  extraConfigLua.__raw = ''
    vim.g.XkbSwitchEnabled = 1;
  '';
}
