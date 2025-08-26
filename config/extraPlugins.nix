{ pkgs, ... }:
{
  extraPackages = with pkgs; [ jq ];

  files = {
    "lua/langswitch/init.lua" = { };
  };

  extraConfigLua = ''
    require("langswitch").setup()
  '';
}
