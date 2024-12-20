local lspconfig = require('lspconfig')
local cmp = require('cmp')
local prettier = require('prettier')
local null_ls = require('null-ls')

lspconfig.ts_ls.setup {

}
lspconfig.lua_ls.setup{}
lspconfig.gopls.setup({})
lspconfig.rust_analyzer.setup{
  settings = {
    ["rust-analyzer"] = {}
  }
}

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
      --vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
  mapping = {
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then 
        cmp.select_next_item()
      else
        fallback()
      end
    end,  { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded'
  }
)


null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.eslint_d.with({
      extra_args = { "--no-warn-ignored" },
    }),
  }
})

-- Snipets
--require("luasnip.loaders.from_vscode").load {
--}
