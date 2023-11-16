vim.opt.termguicolors = true
vim.opt.cursorline  = true
vim.opt.number		= true
vim.opt.mouse		= 'a'

vim.opt.tabstop		= 2
vim.opt.softtabstop	= 2
vim.opt.expandtab	= true
vim.opt.shiftwidth	= 2

vim.opt.foldmethod	= 'expr'
vim.opt.foldexpr	= "nvim_treesitter#foldexpr()"
vim.opt.foldlevel	= 99

vim.opt.filetype	= 'on'
vim.opt.syntax		= 'on'

vim.cmd				[[colorscheme palenight]]
vim.cmd[[
  augroup FileTypeSettings
    autocmd!
    autocmd FileType markdown,vimwiki setlocal wrap linebreak
    autocmd FileType markdown,vimwiki setlocal spell spelllang=es
  augroup END
]]
vim.g.mapleader		= " "
