{ lib, ... }:
{
  plugins.persisted = {
    enable = true;
    enableTelescope = true;
    settings = {
      use_git_branch = true;
    };
    autoload.__raw = ''
      function()
        -- returns false if stdin is readable
        local ok = vim.fn.filereadable("/dev/stdin")
        if ok == 1 then
          return false
        end
        return true
      end
    '';
  };
}
