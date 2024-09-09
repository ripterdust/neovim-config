vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "NERDTree"
})

vim.cmd [[PackerInstall]]

-- Función para recargar la configuración de Nvim
local function reload_config()
  -- Recargar el archivo init.lua
  vim.cmd("luafile ~/.config/nvim/init.lua")
  -- También podrías querer recargar otros archivos si es necesario
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

