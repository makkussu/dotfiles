" (N)Vim Plugins. 
call plug#begin('~/.vim/plugged')
	Plug 'arcticicestudio/nord-vim'
	Plug 'preservim/nerdtree'
call plug#end()

" General (N)Vim customization. 
set number
set cursorline
set shiftwidth=0
set tabstop=4

" Pane switching mapping
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Enabling Nord Theme.
colorscheme nord

" Making line number bold, so you could see
" what line you are now on.
hi clear CursorLine
augroup CLClear
	autocmd! ColorScheme * hi clear CursorLine
augroup END

hi CursorLineNR cterm=bold
augroup CLNRSet
	autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END
