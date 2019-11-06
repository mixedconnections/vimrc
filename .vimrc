" Highlight syntax
syntax on

" No more beeping
set visualbell
set t_vb=

" Show line numbers
set number

" Show matching brackets
set showmatch

" Highlight searched text
set hls

" Search as you type
set incsearch

" Indenting
set autoindent
set smartindent

" A tab produces a 4-space indentation
set softtabstop=4
set shiftwidth=4
set expandtab

" Always have a status bar
set laststatus=2

" Status bar sections
" File path, timestamp, encoding, line+percentage
set statusline=%F%m%r%h%w
set statusline+=\ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]
set statusline+=%=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)
set statusline+=%([%l,%v][%p%%]\ %)

" Start vim at the last line edited
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
Plug 'mhinz/vim-signify'
" default updatetime 4000ms is not good for async update
set updatetime=100
" Syntax plugins
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
let g:strip_whitespace_on_save=1
Plug 'Yggdroot/indentLine'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" Color schemes
 Plug 'dracula/vim', { 'as': 'dracula'  }
 Plug 'erichdongubler/vim-sublime-monokai', { 'as': 'monokai' }
 Plug 'flrnprz/plastic.vim', { 'as': 'plastic'  }
 Plug 'flrnprz/candid.vim', { 'as': 'candid'  }
 Plug 'joshdick/onedark.vim'
" Initialize plugin system
call plug#end()
colorscheme dracula
