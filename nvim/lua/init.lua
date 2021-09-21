local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

function macos()
    return vim.fn.has('macunix') > 0
end

-- base
opt.encoding = 'utf-8'
opt.formatoptions = 'jcroql'
opt.mouse = 'a'
opt.clipboard = [[unnamed,unnamedplus]]
g.mapleader = ','

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
if not macos() then
    opt.cursorline = true
end

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
    autocmd BufWritePost *.py silent! execute ':Black'
]])

-- plugins settings and other
g.onedark_termcolors = 256
g.onedark_terminal_italics = 1

if macos() then
    g.python_host_prog = '/Users/ramonsaraiva/.pyenv/versions/2.7.18/bin/python'
    g.python3_host_prog = '/Users/ramonsaraiva/.pyenv/versions/3.9.6/bin/python'
else
    g.python_host_prog = '/home/ramon/.pyenv/versions/2.7.18/bin/python'
    g.python3_host_prog = '/home/ramon/.pyenv/versions/3.9.2/bin/python'
end

g.coc_disable_startup_warning = 0
g.coc_global_extensions = [['coc-pyright', 'coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']]

require('plugins')
-- require('autocomplete')
require('mappings')
