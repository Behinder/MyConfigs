:set nocompatible
:set nobackup
:set ruler
:set pastetoggle=<F11>
:set fo=tcrqn
:syntax on
:filetype on
:set showcmd
filetype plugin on
filetype indent on


"color scheme 

colorscheme desert

:set guifont=Menlo:h18

" Various syntax highlighting
:autocmd BufRead,BufNewFile *.f03 set filetype=fortran
:autocmd BufRead,BufNewFile *.F03 set filetype=fortran

:autocmd FileType c,cpp :set cindent
:set grepprg=grep\ -nH\ $*
:set comments=s1:/**,mb:\ *,elx:*/

" Coding standard
:set nu
:set textwidth=90
:set shiftwidth=2
:set tabstop=4
:set smarttab
:set expandtab
:set autoindent
:set smartindent
:set makeprg=make

"Omnicomplete stuff

:set omnifunc=csscomplete#CompleteCSS
:set omnifunc=javascriptcomplete#CompleteJS
:set omnifunc=htmlcomplete#CompleteTags
:set omnifunc=phpcomplete#CompletePHP

:set omnifunc=syntaxcomplete#Complete

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu

"map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" gccsense completion ?
let g:gccsenseUseOmniFunc = 1

"Supertab settings
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

"CTAGS settings?
:set tags=~/.vim/tags/tags,./tags,tags
:set tags+=~/.vim/tags/cpp
:set tags+=~/.vim/tags/qt4
:set tags+=~/.vim/tags/macpp
"spelling polish
:set spelllang=pl

"zmiana domyslnego mapowania w skrotach z : na ;
nnoremap ; :


" tutaj bedzie source do pliku zawierajaceg ustawienia vim-addon
"w razie co zakomentowac
source ~/.vim/managersettings.vim

"ustawienie do spatchowanego snippets przez auto pop-up
let g:acp_behaviorSnipmateLength = 1

"leader

