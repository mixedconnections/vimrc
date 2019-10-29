syntax on   
colorscheme sublimemonokai
set visualbell 
set t_vb= 
set number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 
endif 
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen. 
    set t_ut=  
endif  
