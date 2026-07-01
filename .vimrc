
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin on
set nocompatible
set incsearch
set hlsearch
set ignorecase
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set nobackup
set wildmenu
set clipboard=unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <ESC>
map <Space> <leader>
nnoremap <leader>sc :nohlsearch<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bn :bnext<CR> 
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bd<CR> " close buffer without close window


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>wv :vsp<CR>
nnoremap <leader>ws :sp<CR>
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <leader>wk <C-W>k
nnoremap <leader>wj <C-W>j
nnoremap <leader>wd :q<CR>
nnoremap <leader>bb :buffers<CR>:b

nnoremap <leader>fs :w<CR>
nnoremap <leader>qq :qa<CR>
nnoremap <leader>qn :qa!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable arrow keys to learn the hjkl 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

syntax enable   
set number relativenumber
let g:rehash256 = 1

" Uncomment to revent non-normal modes showing in powerline and below powerline.
set noshowmode




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Last settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nornu "turn off relative liner numbers
