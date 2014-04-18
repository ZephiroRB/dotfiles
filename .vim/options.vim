" ##############################################
" General
" ##############################################

filetype plugin indent on

" Set key leader
let mapleader = ","
let g:mapleader = ","

" Sets how many lines of history VIM has to remember
set history=1200

" Set to auto read when a file is changed from the outside
set autoread

" ##############################################
" UI VIM
" ##############################################

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set title

" Always show status line.
set relativenumber

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn

set cursorline cursorcolumn

set number

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" What to do when I press 'wildchar'. Worth tweaking to see what feels right.
set wildmode=list:longest,list:full

" Ignore compiled files
set wildignore=*.o,*~,*.obj,*.svn-base,*.gz,*.swf,*.tmp,*.cache,*.pyc,tmp/**,bin/**,*.jpg,*.png,*.gif,*.bmp

set wildignore+=vendor/rails/**,**/node_modules/**,*.pdf,*.PDF,*.bak.*.swp

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Always show status line.
set laststatus=2


" ##############################################
" Colors and Fonts
" ##############################################

" Enable syntax highlighting
syntax enable

set t_Co=256
set background=dark
"let g:solarized_termcolors=256

try
  colorscheme solarized
catch
endtry

    set guifont=Menlo\ For\ Powerline:h15
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8


    " Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=Menlo\ For\ Powerline:h15
endif

"set splitbelow splitright


" ##############################################
" Files, backups and undo
" ##############################################

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nowritebackup
set nobackup
set nowb
set noswapfile


" ##############################################
" Text, tab and indent related
" ##############################################

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set copyindent " copy previous indentation on autoindenting
set nowrap
set textwidth=79
set formatoptions=n

" check to make sure vim has been compiled with colorcolumn support
"  before enabling it
if exists("+colorcolumn")
  set colorcolumn=80
endif


" Make Vim use RVM correctly when using Zsh
" https://rvm.beginrescueend.com/integration/vim/
set shell=/bin/sh

" Ruby complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" ##############################################
" Moving around, tabs, windows and buffers
" ##############################################

" Navigator split window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
" close buffer
nmap <leader>d :bd<CR>
" close all buffers
nmap <leader>D :bufdo bd<CR>

" Switch between last two buffers
nnoremap <leader><leader> <c-^>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map ESC
imap jj <ESC>

" ACK
set grepprg=ack

" ,a to Ack (search in files)
"nnoremap <leader>a :Ack

" Ack settings: https://github.com/krisleech/vimfiles/wiki/Make-ack-ignore-files

" Auto format
map === mmgg=G`m^zz

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
