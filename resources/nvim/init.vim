:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set mouse=a
:set termguicolors
:set noshowmode


call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/preservim/nerdtree'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ryanoasis/vim-devicons' 
Plug 'itchyny/lightline.vim'

set encoding=UTF-8

call plug#end()
colorscheme catppuccin-mocha

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=38

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <C-t> :NERDTreeToggle<CR>
noremap <C-n> :tabnew<cr>
noremap <C-x> :tabc<cr>
" Vim Script
let g:lightline = {'colorscheme': 'one'}
