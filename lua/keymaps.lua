-- Make space the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- NOTE: This won't work in all terminal emulators/tmux/etc.
-- Try your own mapping or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>') -- Save file with CTRL+s
vim.keymap.set('n', '<C-q>', '<cmd> wq <CR>') -- Save file with CTRL+q
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>') -- Save file without autoformatting

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search when pressing <Esc> in normal mode

vim.keymap.set('n', 'x', '"_x') -- Keep register clean when deleting with x

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Find and center (with folding)
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Resize splits with Arrow keys
vim.keymap.set('n', '<Up>', ':resize -2<CR>')
vim.keymap.set('n', '<Down>', ':resize +2<CR>')
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>')

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')
vim.keymap.set('n', '<leader>x', '<cmd> write | bdelete <CR>') -- save and close buffer
vim.keymap.set('n', '<leader>b', ':<cmd> enew <CR>') -- new buffer

--Window management
vim.keymap.set('n', '<leader>b', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s') -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=') -- make split equal size
vim.keymap.set('n', '<leader>xs', ':close<CR>') -- close split

-- Move between windows
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>') -- go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>') -- got to previous tab

-- Sessions
vim.keymap.set('n', '<leader>ss', ':mks! ~/nvim_session.vim<CR>') -- save session
vim.keymap.set('n', '<leader>rs', ':source ~/nvim_session.vim<CR>') -- restore session

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>') -- enable/disable line wrappin when needed

-- Stay in indent mode when indenting in visual
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic'} )
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic'} )
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

