set nocompatible
set number
set rnu
"set spell spelllang=en_us
set mouse+=a
set smartindent
set autoindent

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

set colorcolumn=120
highlight colorcolumn ctermbg=gray
set showtabline=2

"No plugin
set path+=**
set wildmenu
set complete+=kspell

highlight LineNr ctermfg=black ctermbg=gray

nmap <C-t> :tabnew!<enter>
nmap <C-n> :tabnext!<enter>
nmap <C-b> :tabprevious!<enter>
nmap <C-k> :tabclose!<enter>

nmap <C-o> :Explore!<enter>

nmap <C-down> :bel term<enter>
nmap <C-right> :vert botright term<enter>

map <F9> :w <CR> :!g++ % -o %< && ./%< <CR>

let g:airline_powerline_fonts = 1
set laststatus=2 
