vim.cmd [[PackerInstall]]

local function reload_config()
  vim.cmd("luafile ~/.config/nvim/init.lua")
end

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.lua",
  callback = function()
    local filepath = vim.fn.expand("<afile>")
    if not filepath:match("plugin") then
      reload_config()
    end
  end
})

vim.api.nvim_create_autocmd({"BufLeave", "FocusLost"}, {
  pattern = "*",
  callback = function()
    local buftype = vim.bo.buftype
    if vim.bo.modified and (buftype == "" or buftype == "acwrite") then
      vim.cmd('w')
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function()
    vim.cmd("Prettier")
  end,
})

vim.notify("Wellcome again, hope you are doing good!", "info", {title = "Wellcome"})
