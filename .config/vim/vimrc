autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType markdown setlocal spell
autocmd GUIEnter * set visualbell t_vb= | simalt ~x
autocmd VimLeave * mksession! $HOME/Session.vim
colorscheme desert
filetype indent on
filetype plugin on
syntax enable

let $LANG='en'
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set complete+=kspell
set cursorline
set encoding=utf8
set expandtab
set guifont=Consolas:h10.5
set guifontwide=NSimsun
set guioptions+=a
set guioptions-=L
set guioptions-=T
set guioptions-=e
set guioptions-=m
set guioptions-=r
set hidden
set hlsearch
set ignorecase
set incsearch
set langmenu=en
set laststatus=2
set lazyredraw
set linebreak
set nobackup
set noerrorbells
set noswapfile
set nowritebackup
set scrolloff=6
set shiftwidth=4
set showmatch
set showtabline=2
set smartcase
set statusline=
set statusline+=%1*\(%n)%m\ %<%F\ %*
set statusline+=%2*\ %y\ %*
set statusline+=%3*%=
set statusline+=%4*\ %{&ff}\ %*
set statusline+=%5*\ %{''.(&fenc!=''?&fenc:&enc).''}\ %*
set statusline+=%6*\ %c,%l/%L\ %*
set t_vb=
set tabstop=4
set visualbell
set whichwrap+=<,>,[,]
set wildmenu
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

highlight User1 guifg=#ffdad8  guibg=#880c0e
highlight User2 guifg=#000000  guibg=#f4905c
highlight User3 guifg=#292b00  guibg=#f4f597
highlight User4 guifg=#112605  guibg=#aefe7b
highlight User5 guifg=#051d00  guibg=#7dcc7d
highlight User6 guifg=#ffffff  guibg=#5b7fbb

map ; :
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <Space> <Leader>
nnoremap <F11> :source $HOME/Session.vim<CR>
nnoremap <F12> :args $MYVIMRC $HOME/OneDrive/Programs/AutoHotkey/AutoHotkey.ahk \| tab all<CR>
nnoremap <F7> :setlocal spell!<CR>
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
