" Map leader {
  let mapleader = ","
  let g:mapleader = ","
" }

" Fast saving {
  nmap <leader>w :w!<cr>
" }

" Fast edit vimrc and reload and BundleInstall {
  nmap <Leader>bi :source ~/.vimrc<cr>:BundleInstall<cr>
  nmap <Leader>vo :source ~/.vimrc<cr>
  map <Leader>vi :tabe ~/.vim/<cr>
" }

" Move Lines {
  " Normal mode
  nnoremap ¶ :m .-2<CR>==
  nnoremap § :m .+1<CR>==

  " Insert mode
  inoremap ¶ <ESC>:m .+1<CR>==gi
  inoremap § <ESC>:m .-2<CR>==gi

  " Visual mode
  vnoremap ¶ :m '>+1<CR>gv=gv
  vnoremap § :m '<-2<CR>gv=gv
  

" Map CommandT 
"
map <Leader>q :CommandTFlush<cr>\|:CommandT<cr>
map <leader>qw :CommandTFlush<cr>\|:CommandT %%<cr>


" Windows {
" " New Windows
  nnoremap <leader>w <C-w>v<C-w>l
  nnoremap <Leader>ww <C-w>s<C-w>j
  " Opens a file with the current working directory already filled in so you have to specify only the filename.
  nnoremap <Leader>e :e <C-R>=escape(expand("%:p:h"), ' ') . "/" <CR>
  nnoremap <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . "/" <CR>
  nnoremap <Leader>v :vsplit <C-R>=escape(expand("%:p:h"), ' ') . "/" <CR>
  
  " Move
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
" }

" Rails {
  augroup rails_shortcuts
    autocmd!
    command! Rroutes :e config/routes.rb

    autocmd User Rails nnoremap <Leader>m :Rmodel<Space>
    autocmd User Rails nnoremap <Leader>c :Rcontroller<Space>
    autocmd User Rails nnoremap <Leader>v :Rview<Space>
    autocmd User Rails nnoremap <Leader>u :Runittest<Space>

    " Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
    let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
  augroup END

  map <Leader>bb :!bundle install<cr>
  map <Leader>ac :sp app/controllers/application_controller.rb<cr>
  map <Leader>sc :sp db/schema.rb<cr>
  map <Leader>cc :!cucumber --drb %<CR>

" }


" Git {
  map <Leader>gac :Gcommit -m -a ""<LEFT>
  map <Leader>gc :Gcommit -m ""<LEFT>
  map <Leader>gs :Gstatus<CR>
  map <Leader>gw :!git add . && git commit -m 'WIP' && git push<cr>
  map <Leader>rd :!bundle exec rspec % --format documentation<CR>
  map <Leader>rt q:?!ruby<cr><cr>
  map <Leader>st :!ruby -Itest % -n "//"<left><left>

" }

vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

map <Leader>cu :Tabularize /\|<CR>
map <Leader>co ggVG"*y
map <Leader>f :call OpenFactoryFile()<CR>
map <Leader>fix :cnoremap % %<CR>
map <Leader>i mmgg=G`m<CR>
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
map <Leader>ra :%s/
map <Leader>rs :vsp <C-r>#<cr><C-w>w
map <Leader>rw :%s/\s\+$//<cr>:w<cr>
map <Leader>sg :sp<cr>:grep
map <Leader>sj :call OpenJasmineSpecInBrowser()<cr>
map <Leader>sp yss<p>
map <Leader>sn :e ~/.vim/snippets/ruby.snippets<CR>
map <Leader>so :so %<cr>
map <Leader>sq j<c-v>}klllcs<esc>:wq<cr>
map <Leader>ss ds)i <esc>:w<cr>
map <Leader>t :w<cr>:call RunCurrentTest()<CR>
map <Leader>y :!rspec --drb %<cr>
map <Leader>vg :vsp<cr>:grep
""map <Leader>w <C-w>w
map <Leader>x :exec getline(".")<cr>

map <C-w>t <Esc>:tabnew<enter>:CommandT<Enter>

map <C-h> :nohl<cr>
imap <C-l> :<Space>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^
