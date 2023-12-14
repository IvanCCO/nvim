" You have to change this to your own path
source ~\AppData\Local\nvim\plugins.vim
source ~\AppData\Local\nvim\settings.vim
source ~\AppData\Local\nvim\mapping.lua

Uncomment this line after download the theme plug
" colorscheme gruvbox-baby

set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus
syntax enable
set nowrap
set textwidth=80
set ruler
set mouse=a
set pumheight=10
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set laststatus=2
set relativenumber
set smartindent
set numberwidth=3
set noshowmode
set nobackup
set nowritebackup
set timeoutlen=500
set updatetime=300
set ignorecase
set spell!
autocmd BufRead *.txt set spell!
autocmd BufNewFile *.txt set spell!
set completeopt+=menuone,longest
set autoindent
let &titlestring = expand('%:~') . ' — nvim'
autocmd FileType man let &titlestring = expand('%:t') . ' — nvim'
set title
set autochdir
set background=dark


hi Normal guibg=NONE ctermbg=NONE

if has('termguicolors')
  autocmd GUIEnter * set vb t_vb=
endif 
