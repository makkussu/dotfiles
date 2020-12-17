
" Specifying a directory for plugins
call plug#begin('~/.vim/plugged)')
    Plug 'arcticicestudio/nord-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'    
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

" Basic Vim setup for pleasant usage
set number
syntax on
set shiftwidth=4 "Is needed for NeoVim because it does no recognize Tabstop
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set textwidth=400
set noshowmode

" Changing panels with custom keyboard shortcuts(ALT + {KEYBINDING})
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" First part of Nord Theme setup for Vim
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1

" Applying Nord coloscheme for Vim
colorscheme nord

let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified' ] ]
    \ },
    \ }

" CoC autocompletion setup
let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-html', 'coc-json']
