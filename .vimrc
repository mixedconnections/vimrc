" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-signify'
" Syntax plugins
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
" Language bundles
Plug 'sheerun/vim-polyglot'
" Color schemes
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'flrnprz/plastic.vim', { 'as': 'plastic'  }
Plug 'flrnprz/candid.vim', { 'as': 'candid'  }
Plug 'joshdick/onedark.vim'
" Initialize plugin system
call plug#end()

" General Settings

syntax on               " Highlight syntax
set number              " Show line numbers
set showmatch           " Show matching brackets
set hls                 " Highlight searched text
set incsearch           " Search as you type
set ignorecase          " ignore case when searching except...
set smartcase           " if Upper case chars are used... then check case
set nobackup            " no *~ backup files
set copyindent          " copy the previous indentation on autoindenting
set wildchar=<TAB>      " start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

" The endless search for the perfect colorscheme
colorscheme dracula

" disable sound on errors
set visualbell
set t_vb=

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

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

function RandomColorScheme()
    let mycolors = split(globpath(&rtp,"**/colors/*.vim"),"\n") 
    exe 'so ' . mycolors[localtime() % len(mycolors)]
    unlet mycolors
endfunction
map <F1> :call RandomColorScheme()<CR>

function! UpdateColor()
    execute "!sed -i 's/^colorscheme .*$/colorscheme " . g:colors_name . "/g' ~/.vimrc"
endfunction
map <F2> :call UpdateColor()<CR>

" Plugin settings
map <F3> :NERDTreeToggle<CR>
" default updatetime 4000ms is not good for async update
set updatetime=100
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:strip_whitespace_on_save=1
let g:ale_linters = {
    \   'sh': ['language-server'],
    \   'python': ['pylint'],
    \   'perl': ['syntax-check', 'perlcritic'],
    \   'vim': ['vint'],
    \   'yaml': ['yamllint'],
    \}
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace',],
    \   'javascript': ['eslint'],
    \   'json': ['prettier'],
    \   'python': ['autopep8'],
    \   'perl': ['perltidy'],
    \   'sh': ['shfmt'],
    \   'yaml': ['prettier'],
    \}
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8']
let b:ale_warn_about_trailing_whitespace = 0
