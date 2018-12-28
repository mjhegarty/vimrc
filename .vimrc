set hidden
set incsearch 
set hls
set autoindent
set lazyredraw
set cursorline
syntax on
colorscheme badwolf

hi Search cterm=NONE ctermfg=Black ctermbg=DarkBlue
hi Visual cterm=NONE ctermfg=white ctermbg=DarkBlue
hi CursorLine   cterm=NONE ctermbg=black


inoremap jk <esc>
:nmap ; :
nnoremap <space> <nop>
let mapleader= " " 

nnoremap <leader>l $
nnoremap <leader>h ^h 
nnoremap <leader><up> ddkP
nnoremap <leader><down> ddp




