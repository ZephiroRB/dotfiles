filetype plugin indent on
syntax on

" on opening the file, clear search-highlighting
autocmd BufReadCmd set nohlsearch

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!

  " ================
  " Ruby stuff
  " ================
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib

  " treat extra files like ruby
  au BufRead,BufNewFile *.ru,Gemfile,Rakefile,Profile,Capfile,Guardfile,.simplecov setf ruby


  let coffee_compile_vert = 1
  au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

  au BufRead,BufNewFile *.coffee set syntax=coffee

  " .gitconfig and gitconfig are the same
  au BufRead,BufNewFile gitconfig set syntax=gitconfig

  au BufNewFile,BufReadPost *.scss setl foldmethod=indent
  au BufNewFile,BufReadPost *.sass setl foldmethod=indent
  au BufRead,BufNewFile *.scss set filetype=scss

augroup END

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

" When vimrc, either directly or via symlink, is edited, automatically reload
" it
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %
