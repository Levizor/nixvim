{
  self,
  pkgs,
  inputs,
  ...
}:
{
  nixpkgs = {
    overlays = [
      (final: prev: {
        vimPlugins = prev.vimPlugins // {
          xkbswitch-nvim = prev.vimUtils.buildVimPlugin {
            name = "xkwswitch";
            src = inputs.xkbswitch-nvim;
          };
        };
      })
    ];
  };
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = xkbswitch-nvim;
      # config = "require('xkbswitch').setup()";
    }
  ];
}
