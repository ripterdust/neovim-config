vim.cmd [[PackerInstall]]

local function reload_config()
  vim.cmd("luafile ~/.config/nvim/init.lua")
end

-- Configuración de autocommand para recargar la configuración al guardar archivos .lua
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.lua",
  callback = function()
    -- Ignorar archivos en el directorio de plugins
    local filepath = vim.fn.expand("<afile>")
    if not filepath:match("plugin") then
      reload_config()
    end
  end
})


