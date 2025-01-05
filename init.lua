require("core.options")
require("core.keymaps")
require("core.wl-clipboard")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Core plugins:
	require("plugins.core-editor-plugins.treesitter"), -- Syntax tree (syntax highlighting)
	require("plugins.core-editor-plugins.neo-tree"), -- File manager
	require("plugins.core-editor-plugins.lualine"), -- Status line
	require("plugins.core-editor-plugins.color"), -- Color theme
	require("plugins.core-editor-plugins.telescope"), -- Fuzzy finder
	require("plugins.core-editor-plugins.bufferline"), -- Display buffers as a list in the top

	-- Code support (LSP, autoformatting, autocompletion)
	require("plugins.code-support.lsp"), -- LSP for language support
	require("plugins.code-support.autoformatting"), -- Autoformat
	require("plugins.code-support.autocompletion"), -- Autocomplete

	-- Miscellanious plugins
	require("plugins.misc.indent-blankline"), -- Display indentation lines
	require("plugins.misc.whick-key"), -- Hints keybinds
	require("plugins.misc.autopairs"), -- Autoclose parens
	require("plugins.misc.todo-comments"), -- Highlight todo, notes, etc in comments

	-- Other possibilites:
	-- require("tpope/vim-sleuth") -- detect tabstop and shiftwidth automatically
	--
	-- Git integration:
	require("plugins.git.gitsigns"), -- git signs
	-- require("tpope/vim-fugitive") -- powerful git integration
	-- require("tpope/vim-rhubarb") -- github integration for vim-fugitive
	--
	-- Tmux:
	-- require("christoomey/vim-tmux-navigator")
	-- tmux and vim test
})
