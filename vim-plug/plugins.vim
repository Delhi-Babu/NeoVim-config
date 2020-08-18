" ┌────────────────────────────┐
" │░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀│
" │░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█│
" │░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀│
" └────────────────────────────┘

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"autocmd VimEnter * PlugInstall
"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Essential Plugins
        " Cool status line 
        Plug 'vim-airline/vim-airline'
        " Vscode Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Makes commenting easy
        Plug 'tpope/vim-commentary'
        " Folding codes made easy
        Plug 'pseewald/vim-anyfold'
        " Live server for vim
        Plug 'turbio/bracey.vim'
        " Surround stuff easily
        Plug 'tpope/vim-surround'
        " Display the colors
        Plug 'norcalli/nvim-colorizer.lua'
        " Startify for project management
        Plug 'mhinz/vim-startify'
        " Fully fledged File explorer inside vim
        Plug 'kevinhwang91/rnvimr'

    " Language specific plugins
        " All
            " General syntax support for almost all languages
            Plug 'sheerun/vim-polyglot'
        " Html
            " Auto rename ending tags
             Plug 'AndrewRadev/tagalong.vim',{'for':'html'}
    " Themes
        " Colorscheme
        Plug 'joshdick/onedark.vim'
        " Highlight the ending tag
        Plug 'gregsexton/MatchTag',{'for':'html'}

    " Git
        " Git command support and Active git branch in status line
        Plug 'tpope/vim-fugitive'
        " Indicates the changes made in Git
        Plug 'airblade/vim-gitgutter'

call plug#end()
