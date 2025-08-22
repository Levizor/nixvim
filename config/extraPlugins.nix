{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.vim-xkbswitch
  ];

  extraConfigLua = ''
    vim.g.XkbSwitchEnabled = 1;
  '';
}
