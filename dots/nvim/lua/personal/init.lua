require("personal.packer")
require("personal.neogit")
require("personal.set")

require'lspconfig'.tsserver.setup{
  on_attach = function(client, bufnr)
    require("twoslash-queries").attach(client, bufnr)

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", '<leader>e', vim.diagnostic.open_float, {buffer=0})
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})

    vim.keymap.set("n", "<leader>ru", ":! node_modules/.bin/ts-node %<CR>", {buffer=0})
    vim.keymap.set("n", "<leader>u", ":!node_modules/.bin/jest --config ./src/test/jest.config.ts %<CR>", {buffer=0})
  end,
}

-- todo: buy intelephense premium?
require'lspconfig'.intelephense.setup{
  on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", '<leader>e', vim.diagnostic.open_float, {buffer=0})
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})

    vim.keymap.set("n", "<leader>ru", ":! php %<CR>", {buffer=0})
    vim.keymap.set("n", "<leader>u", ":!vendor/bin/phpunit --debug %<CR>", {buffer=0})
  end,
}
-- todo: install javascript language server

require('lualine').setup()
