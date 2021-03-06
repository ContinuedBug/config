--- Python layer
-- @module l.python

local layer = {}

--- Returns plugins required for this layer
function layer.register_plugins()
end

--- Configures vim and plugins for this layer
function layer.init_config()
  local lsp = require("l.lsp")
  local nvim_lsp = require("lspconfig")

  lsp.register_server(nvim_lsp.pyls_ms)
end

return layer
