local Remap = require("personal.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap
local map = Remap.map

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap(";", ":")
nnoremap("<Tab>", "<C-w><C-w>")

nnoremap('<C-j>', '<ESC>:bp<CR>')
nnoremap('<C-k>', ' <ESC>:bn<CR>')
-- 'c'lose. Close the current buffer w/out closing the window.
nnoremap('<leader>c', '::bp |bd #<CR>')

nnoremap('<leader>a', ':sav %:h/')

nnoremap('<leader>d', ':Git! diff --staged<CR>')

nnoremap('<leader>p', ':set paste!<CR>')

nnoremap('<leader>u', ':!node_modules/.bin/jest --config ./src/test/jest.config.ts %<CR>')


nnoremap('<leader>in', ':! docker compose exec api php artisan inspire<CR>')
nnoremap('<leader>ru', ':! php %<CR>')
-- nnoremap('<leader>ru', ':! node_modules/.bin/ts-node %<CR>')

nnoremap('<leader>v', ':e ~/.dots/dots/nvim/after/plugin/keymap/init.lua<CR>')

-- nnoremap("C-k", "i<CR><Esc>")
nnoremap('<C-s>', 'i<CR><Esc>')

nnoremap('<CR>', ':noh<CR><CR>:<backspace>')

vnoremap('<leader>y', '"+y<CR>')

local builtin = require('telescope.builtin')
nnoremap('<C-p>', builtin.find_files)
nnoremap('<leader>fg', builtin.live_grep)
nnoremap('<leader>fs', builtin.grep_string)
nnoremap('<leader>fb', builtin.buffers)
nnoremap('<leader>fh', builtin.help_tags)
