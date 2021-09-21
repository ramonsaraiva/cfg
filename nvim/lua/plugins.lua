return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- files
    use 'nvim-telescope/telescope.nvim'
    use 'mileszs/ack.vim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'rbgrouleff/bclose.vim'
    use 'francoiscabrol/ranger.vim'
    use {
        'scrooloose/nerdtree',
        cmd = 'NERDTreeToggle'
    }

    -- syntax
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    use 'ervandew/supertab'
    use 'ludovicchabant/vim-gutentags'
    use {
        'numirias/semshi',
        cmd = ':UpdateRemotePlugins'
    }
    use {
        'psf/black',
        branch = 'main',
        ft = 'python'
    }

    -- ui
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'lepture/vim-jinja'
    use 'majutsushi/tagbar'
    use 'luochen1990/rainbow'
    use 'ryanoasis/vim-devicons'

    -- text
    use 'junegunn/goyo.vim'
    use {
        'iamcco/markdown-preview.nvim',
        cmd = 'cd app && yarn install'
    }
    use 'scrooloose/nerdcommenter'
    use 'godlygeek/tabular'
    use {
        'mattn/emmet-vim',
        ft = 'html,jinja'
    }
    use 'tpope/vim-surround'
    use {
        'vim-python/python-syntax',
        ft = 'python'
    }

    -- functional
    use 'kevinhui/vim-docker-tools'
    use 'vim-test/vim-test'
    use 'pwntester/octo.nvim'

    -- colorschemes
    use 'joshdick/onedark.vim'

    -- js
    use {
        'yuezk/vim-js',
        ft = 'javascript'
    }
    use {
        'HerringtonDarkholme/yats.vim',
        ft = 'javascript'
    }
    use {
        'maxmellon/vim-jsx-pretty',
        ft = 'javascript'
    }
end)
