{ pkgs, ... }:
{
  extraPackages = with pkgs; [ jq ];

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "hyprxkbswitch.nvim";
      version = "2025-08-26";
      src = pkgs.fetchFromGitHub {
        owner = "Levizor";
        hash = "sha256-sWRJ4UK1H+lJjsiYikqekyqxy67hk4zC2G2Cct1u1Es=";
        repo = "hyprxkbswitch.nvim";
        rev = "67a00832864aad51b9343bd3c29358f67b316211";
      };
    })
  ];

  extraConfigLuaPost = ''
    -- require("hyprxkbswitch").setup()
  '';
}
