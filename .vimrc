" Highlight syntax
syntax on   

" https://github.com/ErichDonGubler/vim-sublime-monokai
colorscheme sublimemonokai

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
set statusline=\ %F%m%r%h%w\ 
set statusline+=\[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ 
set statusline+=%=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\
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
