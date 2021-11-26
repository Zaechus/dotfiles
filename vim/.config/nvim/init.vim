set number
colorscheme industry
silent! set termguicolors
silent! colorscheme gruvbox
set cursorline
set cursorcolumn
set colorcolumn=80

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

" Clear search
map <Leader>l :let @/ = "" <CR>

" Alt+<arrow> to navigate windows in any mode
map <C-A-Left> <C-w>h
map <C-A-Down> <C-w>j
map <C-A-Up> <C-w>k
map <C-A-Right> <C-w>l
tnoremap <C-A-Left> <C-\><C-N><C-w>h
tnoremap <C-A-Down> <C-\><C-N><C-w>j
tnoremap <C-A-Up> <C-\><C-N><C-w>k
tnoremap <C-A-Right> <C-\><C-N><C-w>l
inoremap <C-A-Left> <C-\><C-N><C-w>h
inoremap <C-A-Down> <C-\><C-N><C-w>j
inoremap <C-A-Up> <C-\><C-N><C-w>k
inoremap <C-A-Right> <C-\><C-N><C-w>l
nnoremap <C-A-Left> <C-w>h
nnoremap <C-A-Down> <C-w>j
nnoremap <C-A-Up> <C-w>k
nnoremap <C-A-Right> <C-w>l

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
