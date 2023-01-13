write_vimrc() {
cat << EOF > $HOME/.vimrc
syntax on
set term=xterm
set mouse=a
set cursorline
set encoding=utf-8
set nocompatible
set t_Co=256


call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" https://github.com/tpope/vim-fugitive.git
Plug 'https://github.com/tpope/vim-fugitive.git'

" https://github.com/OmniSharp/omnisharp-vim
Plug 'OmniSharp/omnisharp-vim'

" https://github.com/prettier/vim-prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }

" https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" General configuration
" setting horizontal and vertical splits
set splitbelow
set splitright

" Use external vimrc files for plugin sources
source $HOME/.vim/vimrc/coc.vimrc
source $HOME/.vim/vimrc/python.vimrc
source $HOME/.vim/vimrc/nerdtree.vimrc
source $HOME/.vim/vimrc/web.vimrc
source $HOME/.vim/vimrc/bash.vimrc
source $HOME/.vim/vimrc/autoclose.vimrc

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

EOF
}


