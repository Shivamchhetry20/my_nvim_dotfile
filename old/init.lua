if vim.loader then
  vim.loader.enable()
end
-- Set Windows as the default shell
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "cmd.exe"
  vim.opt.shellcmdflag = "/c"
  vim.opt.shellxquote = ""
end

_G.dd = function(...)
  require("util.debug").dump(...)
end
vim.print = _G.dd

require "config.lazy"
