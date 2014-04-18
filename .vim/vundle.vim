" Vundle stuff {

" be iMproved
set nocompatible

" must be off before Vundle has run
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

" Let Vundle manage Vundle (required)!
Plugin 'gmarik/vundle'

" Development Web
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'Bogdanp/rbrepl.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-Bundler'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sleuth'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'

Plugin 'clones/vim-fuzzyfinder'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/Gist.vim'

" Custom
Plugin 'mileszs/ack.vim'
Plugin 'ervandew/supertab'
Plugin 'wincent/Command-T'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'koron/nyancat-vim'
Plugin 'elixir-lang/vim-elixir'

Plugin 'vim-scripts/YankRing.vim'
Plugin 'vim-scripts/L9'
Plugin 'autoclose'

Plugin 'greyblake/vim-preview'
Plugin 'tpope/vim-markdown'
Plugin 'Shougo/neocomplcache'

" snippets
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
"------ snipmate dependencies -------
Plugin 'MarcWeber/vim-addon-mw-utils'

" FTP
Plugin 'oinksoft/transmit.vim'

" Colors
Plugin 'altercation/vim-colors-solarized'

" }

filetype plugin indent on     " and turn it back on!
