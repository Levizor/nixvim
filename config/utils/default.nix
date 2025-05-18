{
  imports = [
    ./pairs.nix
    ./oil.nix
    ./dap.nix
    ./undotree.nix
    # ./copilot.nix
    ./persisted.nix
    ./lazygit.nix
    ./codesnap.nix
  ];

  plugins = {
    hop = {
      enable = true;
    };
    markdown-preview = {
      enable = true;
    };
    mkdnflow.enable = true;
  };
}
