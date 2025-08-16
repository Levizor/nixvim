{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
      autoload = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>SessionSave<cr>";
      options = {
        desc = "Save Session";
      };
    }
    {
      mode = "n";
      key = "<leader>sl";
      action = "<cmd>SessionLoad<cr>";
      options = {
        desc = "Load Session";
      };
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>SessionDelete<cr>";
      options = {
        desc = "Delete Session";
      };
    }
  ];
}
