-- mod-version:3

local lspconfig = require "plugins.lsp.config"
local common = require "core.common"
local config = require "core.config"

local installed_path = USERDIR .. PATHSEP .. "plugins" .. PATHSEP .. "lsp_go"
local goplsfile = "gopls"

if PLATFORM == "Windows" then
    goplsfile = "gopls.exe"
end

lspconfig.gopls.setup(common.merge({
    command = { installed_path .. PATHSEP .. goplsfile }
}, config.plugins.lsp_go or {}))
