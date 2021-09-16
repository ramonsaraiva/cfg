local opt = vim.opt
local cmd = vim.cmd

-- base
opt.encoding = 'utf-8'
opt.formatoptions = 'jcroql'
opt.mouse = 'a'
opt.clipboard = [[unnamed,unnamedplus]]

-- syntax
opt.syntax = 'on'
opt.completeopt = [[longest,menuone]]

-- performance
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- files
opt.title = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.eol = false
opt.autoread = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- indentation
local indent = 4
opt.tabstop = indent
opt.shiftwidth = indent
opt.softtabstop = indent
opt.expandtab = true
opt.backspace = [[indent,eol,start]]

-- rulers, numbers
opt.number = true
opt.ruler = true

-- chars
opt.showbreak = '↪ '
opt.listchars = {
    tab = '|_',
    eol = '↲',
    nbsp =  '␣',
    trail = '•',
    extends = '⟩',
    precedes = '⟨'
}
opt.list = true

-- colors
opt.termguicolors = true
opt.colorcolumn = '80,90,100'
opt.background = 'dark'
opt.laststatus = 2
cmd('colorscheme onedark')

-- autocmds (not yet fully supported by lua i guess?)
vim.api.nvim_command([[
    autocmd FileType python set autoindent
    autocmd FileType python set smartindent
    autocmd FileType javascript set tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType css set tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType elm set tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType yaml set tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType vue set tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType tf set tabstop=2 shiftwidth=2 softtabstop=2
]])

require('plugins')
-- require('autocomplete')
-- require('mappings')
