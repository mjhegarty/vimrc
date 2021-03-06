execute pathogen#infect()
call pathogen#helptags()
set hidden
set incsearch
set hls
set autoindent
set lazyredraw
"set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number relativenumber
set expandtab


syntax on
set t_Co=256
"colorscheme potato
"colorscheme seoul256
colorscheme space_vim_theme
hi Search cterm=NONE ctermfg=Black ctermbg=DarkBlue
hi Visual cterm=NONE ctermfg=white ctermbg=DarkBlue
hi ALEWarning cterm=undercurl guisp=DarkYellow
hi ALEError cterm=undercurl guisp=DarkRed
hi CursorLine   cterm=NONE ctermbg=black

let &t_ut=''
"supposedly will fix my background color issues
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif




"Lang specific stuff
au BufEnter *.md :setlocal spell spelllang=en_us
au BufEnter *.tex :setlocal spell spelllang=en_us 


"Powerline stuff


let g:airline_powerline_fonts = 1
let g:airline_theme='angr'
inoremap jk <esc>

nnoremap <space> <nop>

"Terminal commands
:tnoremap <Esc> <C-\><C-n>

""Leader commands
let mapleader= " "
"navigation commands
noremap <leader>l $
noremap <leader>h ^h
nnoremap <leader><up> ddkP
nnoremap <leader><down> ddp
nnoremap <leader>c cc
nnoremap <leader>d dd
"removes trailing whitespace
nnoremap <leader>w :%s/\s\+$//e<CR>
"shows whitespace
nnoremap <leader>W :set list! list?<CR>
"Pastemode stuff
nnoremap <leader>p :set paste<CR>
nnoremap <leader>P :set nopaste<CR>
"pane options
nnoremap <leader>q :hide<CR>
nnoremap <leader>s :vertical unhide 2<CR>

nnoremap <leader>/ :noh<CR>

nnoremap <leader>; :

"toggle line numbers
nnoremap <leader>n :set invnumber invrelativenumber <CR>


"Plugin commands

map <leader>o :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"git gutter stuff
nnoremap <leader>g :GitGutterFold<cr>

"Cycling through tabs for nerd tree
nnoremap  <M-j> <C-W><C-J>
nnoremap  <M-k> <C-W><C-K>
nnoremap  <M-l> <C-W><C-L>
nnoremap  <M-h> <C-W><C-H>


"Changing split sizes

nnoremap  <C-J> <C-W>-
nnoremap  <C-K> <C-W>+
nnoremap  <C-L> <C-W><
nnoremap  <C-H> <C-W>>





set splitbelow
set splitright





"tab commands
nnoremap <leader><left> :tabp<cr>
nnoremap <leader><right> :tabn<cr>






"vimtex stuff
nmap <space>y <plug>(vimtex-compile-toggle)
" Put these lines at the very end of your vimrc file.



"ale stuff
let g:ale_sign_warning ='🗲'

let g:ale_linters = {'python': ['pyflakes']}




" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
