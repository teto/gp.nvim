local haskell_tools = vim.g.haskell_tools or {}
---@type HTOpts
local opts = type(haskell_tools) == 'function' and haskell_tools() or haskell_tools

---@type HTConfig
HTConfig = vim.tbl_deep_extend('force', {}, HTDefaultConfig, opts)
local check = require('haskell-tools.config.check')
local ok, err = check.validate(HTConfig)
if not ok then
  vim.notify('haskell-tools: ' .. err, vim.log.levels.ERROR)
end

