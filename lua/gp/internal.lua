
local haskell_tools = vim.g.gpt_prompt or {}

local default_config = require'gp.config'
local default_config = { }
---@type HTConfig
HTConfig = vim.tbl_deep_extend('force', {}, default_config, opts)
local check = require('haskell-tools.config.check')
local ok, err = check.validate(HTConfig)
if not ok then
  vim.notify('haskell-tools: ' .. err, vim.log.levels.ERROR)
end

