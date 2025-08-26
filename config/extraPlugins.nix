{ pkgs, ... }:
{
  extraPackages = with pkgs; [ jq ];

  # files = {
  #   "lua/langswitch/init.lua" = { };
  # };

  extraLuaPackages = [ ./lua ];

  extraConfigLua = ''
    require("langswitch").setup()
  '';
}
