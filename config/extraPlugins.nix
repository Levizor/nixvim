{ pkgs, ... }:
{
  extraPackages = with pkgs; [ jq ];

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "hyprxkbswitch.nvim";
      version = "2025-08-26";
      src = pkgs.fetchFromGitHub {
        owner = "Levizor";
        repo = "hyprxkbswitch.nvim";
        rev = "8dfe58e975110592fad0373c8d477412e6a85ccd";
        sha256 = "sha256-93nNy8IAlqxjSWo1HFMy3B91UgTnGWXt9StX/vx0FYc";
      };
    })
  ];

  extraConfigLuaPost = ''
    require("hyprxkbswitch").setup()
  '';
}
