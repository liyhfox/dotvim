" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" kill all buffer when :q
au bufenter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

execute pathogen#infect()
syntax on
filetype plugin indent on

set ts=4
set shiftwidth=4
set expandtab
set autoindent

let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
set background=dark

" NerdTree config "
map <F2> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

let g:miniBufExplMapWindowNavVim=1

" ctgs config "
"find . -name "*.h *.c *.cpp *.py" -o > src.files
map <F6> :!ctags -R --c++-kinds=+p --sort=yes --fields=+iaS --extra=+q --language-force=C++ 
set tags+=/usr/share/vim/vim74/bundle/tags/cpp_src/tags

" taglist config"
map <F3> :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type="name"

" omnicppcomplete config "
filetype plugin indent on
set completeopt=menu,menuone
let OmniCpp_NamespaceSearch=1
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_SelectFirstItem=2
let OmniCpp_MayCompleteScope=1
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_DefaultNamespace = ["std", "_GLIBCXX_STD"]

set nu
set mouse=a
set selection=exclusive
set selectmode=mouse,key

set showmatch
set autoread
set hlsearch
set ruler
autocmd InsertEnter * se cul
" compile config"
