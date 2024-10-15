local keymap = vim.keymap.set

vim.g.mapleader = ' '

-- escape
keymap('i', 'jj', '<ESC>')
keymap('t', 'jj', '<C-\\><C-n>')

-- lsp
keymap('n', '<space>e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
keymap('n', '<space>q', vim.diagnostic.setloclist)

-- nvim-tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>')
keymap('n', '<C-l>', ':NvimTreeFocus<CR>')
keymap('n', 'tr', ':NvimTreeRefresh<CR>')
keymap('n', 'tf', ':NvimTreeFindFile<CR>')
keymap('n', 'tl', ':NvimTreeResize +10<CR>')
keymap('n', 'th', ':NvimTreeResize -10<CR>')
