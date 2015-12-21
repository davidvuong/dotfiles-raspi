" NOTE: vim +BundleInstall +qall to install from comand line.
" https://github.com/gmarik/vundle
filetype off " required.

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required).
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'

" Displaying ANSI colours inside VIM.
Bundle 'vim-scripts/AnsiEsc.vim.git'

" Git.
Bundle 'tpope/vim-fugitive'

" FuzzyFinder depends on the L9 library.
Bundle 'vim-scripts/L9'
Bundle 'FuzzyFinder'

" NERDTree + extensions.
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'davidvuong/nerdtree-execute'

" A more powerful undo utility.
Bundle 'sjl/gundo.vim'

" Coffee-script syntax highlighting.
Bundle 'kchmck/vim-coffee-script'

" Automatically add 'end' to certain structures in ruby.
Bundle 'tpope/vim-endwise.git'

" For when we want to automatically expand text. For example, in Python,
"
"   ifmain<tab>
"
" expands to:
"   if __name__ == '__main__':
"       main()
"
Bundle 'davidvuong/snipmate.vim'

" Surrounds text with quotes, brackets, ... etc.
"   Beginner Tips:
"       - Visual mode:
"           * Highlight word, S"
"       - Normal mode:
"           * csw"
Bundle 'tpope/vim-surround.git'

" readline mappings for insert and command mode (normal mode omitted).
Bundle 'tpope/vim-rsi'

" A grep replacement. Apparently it's a lot better.
" NOTE: "ack" needs to be installed, so just... brew install ack
Bundle 'mileszs/ack.vim.git'

" Display CSS colours.
Bundle 'ap/vim-css-color'

" Syntax highlighting for LESS.
Bundle 'groenewege/vim-less'

" Syntax highlighting for mustache templates.
Bundle 'juvenn/mustache.vim'

" Automatically set the Vim root directory to where .git/ is located.
Bundle 'airblade/vim-rooter'

" Vim Python virtualenv.
Bundle 'jmcantrell/vim-virtualenv'

filetype plugin indent on " required.

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
