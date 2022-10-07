lua require('init')

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
let pytest_output = system("cat requirements.txt | grep pytest")
if v:shell_error == 0
    let test#python#runner = 'pytest'
else
    let test#python#runner = 'djangotest'
endif
let django_service = trim(system('docker-compose ps --service | grep django'))
let g:test#python#djangotest#executable = 'docker-compose exec '.django_service.' python manage.py test'
let g:test#python#pytest#executable = 'docker-compose exec '.django_service.' python manage.py pytest'

" dockertools
let g:dockertools_default_all = 0

" ranger
let g:ranger_map_keys = 0
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1
