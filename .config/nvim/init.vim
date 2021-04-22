call plug#begin('~/.vim/plugged')

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nav menu
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Find files
Plug 'kien/ctrlp.vim'

" Misc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'triglav/vim-visual-increment'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" configuration is split into multiple files
source ~/.config/nvim/.vimrc
source ~/.config/nvim/coc.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/airline.vim
