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
    use {
        'prettier/vim-prettier'
    }
    use {
        'posva/vim-vue',
        ft = 'vue',
        cmd = 'yarn install --frozen-lockfile --production'
    }
    use {
        'stsewd/sphinx.nvim',
        ft = 'rst',
        cmd = ':UpdateRemotePlugins'
    }

    -- ui
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
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
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end 
    }

    -- functional
    use 'kevinhui/vim-docker-tools'
    use 'vim-test/vim-test'
    use 'pwntester/octo.nvim'

    -- colorschemes
    use 'joshdick/onedark.vim'
    use 'shaunsingh/moonlight.nvim'
    use 'folke/tokyonight.nvim'

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
