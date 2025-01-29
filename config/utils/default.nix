{
  imports = [
    ./pairs.nix
    ./oil.nix
    ./dap.nix
    ./undotree.nix
    ./copilot.nix
  ];

  plugins = {
    hop = {
      enable = true;
    };
  };
}
