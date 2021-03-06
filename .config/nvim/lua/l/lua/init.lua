--- Lua layer
-- @module l.lua

local autocmd = require("c.autocmd")

local layer = {}

local function on_filetype_lua()
  vim.api.nvim_buf_set_option(0, "shiftwidth", 2)
  vim.api.nvim_buf_set_option(0, "tabstop", 2)
  vim.api.nvim_buf_set_option(0, "softtabstop", 4)
end

--- Returns plugins required for this layer
function layer.register_plugins()
end

--- Configures vim and plugins for this layer
function layer.init_config()
  local lsp = require("l.lsp")
  local nvim_lsp = require("lspconfig")

  -- TODO: Make this configurable per-project
  lsp.register_server(
    nvim_lsp.sumneko_lua,
    {
      cmd = { "lua-language-server", "-E", "/usr/share/lua-language-server/main.lua" },
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              "vim",
            },
          },
        },
      },
    }
  )

  autocmd.bind_filetype("lua", on_filetype_lua)
end

return layer
