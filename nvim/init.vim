if has('macunix')
    language en_US
else
    language en_US.UTF-8
endif

let python_highlight_all=1

" colorscheme settings
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1

function Highlights()
    hi semshiSelf cterm=italic gui=italic
    hi semshiBuiltin cterm=italic gui=italic
    hi Comment cterm=italic gui=italic
endfunction
autocmd FileType python call Highlights()

set laststatus=2
if has('macunix') == 0
    " cursorline is really slow on macvim
    set cursorline
endif


" black
autocmd BufWritePost *.py silent! execute ':Black'

let mapleader=','

if has('macunix') == 0
    let g:python_host_prog = '/home/ramon/.pyenv/versions/2.7.18/bin/python'
    let g:python3_host_prog = '/home/ramon/.pyenv/versions/3.9.2/bin/python'
else
    let g:python_host_prog = '/Users/ramonsaraiva/.pyenv/versions/2.7.18/bin/python'
    let g:python3_host_prog = '/Users/ramonsaraiva/.pyenv/versions/3.9.6/bin/python'
endif

" coc
let g:coc_disable_startup_warning = 0
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

" semshi
let g:semshi#mark_selected_nodes = 0

" nerdtree
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\.vim$', '\~$', '\.pyc$', '\.swp$', 'harvest_*', 'node_modules']
let NERDTreeSortOrder = ['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks = 1

" ack
let g:ackprg = 'rg -S --vimgrep --no-heading'

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" rainbow
let g:rainbow_active = 1

" airline
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_section_y = ''
"let g:airline_section_x = ''
let g:airline_powerline_fonts = 1

" emmet
let g:user_emmet_leader_key=','

" vim-test
let test#strategy = "neovim"
let django_service = trim(system('docker-compose ps --service | grep django'))
let g:test#python#djangotest#executable = 'docker-compose exec '.django_service.' python manage.py test'
map <C-t>n :TestNearest<cr>
map <C-t>f :TestFile<cr>
map <C-t>l :TestLast<cr>
map <C-t>v :TestVisit<cr>

" dockertools
let g:dockertools_default_all = 0

" ranger
let g:ranger_map_keys = 0
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1
map <leader>r :Ranger<CR>

" mappings
noremap <space> viw
noremap <leader>a =ip
noremap <leader>rc :vsplit $MYVIMRC<cr>
noremap <leader>rx :vsplit ~/.cfg/.Xresources<cr>
noremap <leader>rxs :!xrdb ~/.cfg/.Xresources<cr>
noremap <leader>ra :vsplit ~/.cfg/.alacritty.yml<cr>
noremap <leader>kc :vsplit ~/.cfg/kitty.conf<cr>
noremap <leader>pr :!cp -rf ~/.cfg/.pr_template.md /tmp/.pr_template.md<cr><cr>:vsplit /tmp/.pr_template.md<cr>:Goyo<cr>
noremap <leader>jt :!cp -rf ~/.cfg/.jira_template.md /tmp/.jira_template.md<cr><cr>:vsplit /tmp/.jira_template.md<cr>:Goyo<cr>
noremap <leader>n :NERDTree<cr>
noremap <leader>f :Ack<space>
noremap <leader>t :TagbarToggle<cr>
noremap <leader>gb :Gblame<cr>
noremap <leader>go :Goyo<cr>
noremap <leader>u :RunTests<cr>
noremap <leader>do :DockerToolsOpen<cr>
noremap <leader>dc :DockerToolsClose<cr>
noremap <leader>d :normal iimport ipdb; ipdb.set_trace()<ESC>
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <silent> ,/ :nohlsearch<CR>
noremap <leader>o :Octo<space>

" tabs and panes
noremap <leader>v <C-w>v<cr>
noremap <leader>h <C-w>n<cr>
noremap <S-l> gt
noremap <S-h> gT
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

map <C-p> :Telescope find_files<cr>
noremap <leader>md :MarkdownPreview<cr>

augroup reload_vimrc
    autocmd!
    autocmd! BufWritePost $MYVIMRC,$MYGVIMRC nested source %
augroup END

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

lua require('init')
