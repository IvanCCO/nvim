call plug#begin('~/.vim/plugged')


Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'LinArcX/telescope-command-palette.nvim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
