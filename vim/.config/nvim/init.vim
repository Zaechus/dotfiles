set number
colorscheme industry
set termguicolors
silent! colorscheme gruvbox
set cursorline

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set autoindent
set nowrap

let mapleader = " "

" for rust
syntax enable
filetype plugin indent on
"let g:rustfmt_autosave = 1
map <Leader>f :RustFmt <CR>

" Split a terminal vertically or horizontally
map <F5> :vsp +term <CR> i
set splitright
map <F6> :sp +term <CR> :resize 10 <CR> i
set splitbelow

" Alt+<arrow> to navigate windows in any mode
map <A-Left> <C-w>h
map <A-Down> <C-w>j
map <A-Up> <C-w>k
map <A-Right> <C-w>l
tnoremap <A-Left> <C-\><C-N><C-w>h
tnoremap <A-Down> <C-\><C-N><C-w>j
tnoremap <A-Up> <C-\><C-N><C-w>k
tnoremap <A-Right> <C-\><C-N><C-w>l
inoremap <A-Left> <C-\><C-N><C-w>h
inoremap <A-Down> <C-\><C-N><C-w>j
inoremap <A-Up> <C-\><C-N><C-w>k
inoremap <A-Right> <C-\><C-N><C-w>l
nnoremap <A-Left> <C-w>h
nnoremap <A-Down> <C-w>j
nnoremap <A-Up> <C-w>k
nnoremap <A-Right> <C-w>l

" Alt+Shift+<arrow> to resize split
map <A-S-Left> <C-w><
map <A-S-Down> <C-w>-
map <A-S-Up> <C-w>+
map <A-S-Right> <C-w>>

" Ctrl+Shift+[PgUp/PgDown] to swap tab positions
map <C-S-PageDown> :tabmove + <CR>
map <C-S-PageUp> :tabmove - <CR>

" NERDTree
map <F4> :NERDTree <CR>

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
