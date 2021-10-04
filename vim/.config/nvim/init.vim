nnoremap <Space> <Nop>
let mapleader = "\<Space>"

lua require("plugins")
lua require("lsp")
lua require("formatting")

colorscheme nord

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set relativenumber
set nohlsearch
set hidden
set nu
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set scrolloff=12
set colorcolumn=120
set signcolumn=yes

set cmdheight=2
set updatetime=50

nnoremap <C-p> :Files<CR>

nnoremap <leader>p :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>

" Set completeopt to have a better completion experience
let g:completion_enable_auto_popup = 1
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.dart,*.js,*.rs,*.lua,*.php FormatWrite
    autocmd BufWritePre *\(.dart\)@<! :normal migg=G`i
augroup END
