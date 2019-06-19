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
"This makes my python files have spaces instead of tabs but leaves everybody else the same
"autocmd Filetype python setlocal expandtab
set expandtab


syntax on
set t_Co=256
"colorscheme potato
colorscheme iceberg
hi Search cterm=NONE ctermfg=Black ctermbg=DarkBlue
hi Visual cterm=NONE ctermfg=white ctermbg=DarkBlue
hi ALEWarning cterm=NONE ctermfg=white ctermbg=DarkYellow
hi CursorLine   cterm=NONE ctermbg=black

let &t_ut=''
"supposedly will fix my background color issues
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif



"Powerline stuff


let g:airline_powerline_fonts = 1
let g:airline_theme='solarized_flood'

inoremap jk <esc>

nnoremap <space> <nop>



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



"Plugin commands

map <leader>o :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


"Cycling through tabs for nerd tree
map  <leader>L <C-W><right>
map  <leader>H  <C-W><left>





"tab commands
nnoremap <leader><left> :tabp<cr>
nnoremap <leader><right> :tabn<cr>






"vimtex stuff
nmap <space>y <plug>(vimtex-compile-toggle)
" Put these lines at the very end of your vimrc file.



"ale stuff
let g:ale_sign_warning ='🗲'
let g:ale_linters = {'python': ['pyflakes']}

"fzf stuff
set rtp+=~/.fzf


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
