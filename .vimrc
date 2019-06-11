set number
syntax on
set updatetime=100
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('.vim/plugins')
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
Plug 'andymass/vim-matchup'
call plug#end()

