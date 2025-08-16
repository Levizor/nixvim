{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
      autoload.__raw = ''
        function()
          -- vim.fn.getcmdwintype() is empty; stdin is available if `vim.fn.has("ttyin") == 0`
          -- simpler: use `v:vim_did_enter` + check if stdin is attached
          local stat = vim.loop.isatty(0)
          if stat == false or vim.fn.stdin_readable() == 1 then
            return false
          end
          return true
        end
      '';
    };
  };
}
