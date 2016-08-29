"Highlight bad spaces
let c_space_errors=1

syntax enable

set shiftwidth=2    " two spaces per indent
set tabstop=2       " number of spaces per tab in display
set softtabstop=2   " number of spaces per tab when inserting
set expandtab       " substitute spaces for tabs

" Display.
set ruler           " show cursor position
set nonumber        " hide line numbers
set nolist          " hide tabs and EOL chars
set showcmd         " show normal mode commands as they are entered
set showmode        " show editing mode in status (-- INSERT --)
set showmatch       " flash matching delimiters

" Scrolling.
set scrolljump=5    " scroll five lines at a time vertically
set sidescroll=10   " minumum columns to scroll horizontally

" Search.
set nohlsearch      " don't persist search highlighting
set incsearch       " search with typeahead
set smartcase       " search case-sensitive only when capital letters are used
set ignorecase      " has to be set in order for smartcase to work like described ^

" Indent.
set autoindent      " carry indent over to new lines

" Other.
set noerrorbells      " no bells in terminal

set backspace=indent,eol,start  " backspace over everything
set tags=tags;/       " search up the directory tree for tags

set undolevels=1000   " number of undos stored
set viminfo='50,"50   " '=marks for x files, "=registers for x files

set modelines=0       " modelines are bad for your health

" maps // to search for selected text in visual mode
vnoremap // y/<C-R>"<CR>

" copy to OS X cplipboard
set clipboard=unnamed

" no folding please
set nofoldenable    

" command autocomplete
set wildmenu

" Enable mouse
set mouse=a

""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous
""""""""""""""""""""""""""""""""""""""""""

" Kill any trailing whitespace on save.
if !exists("g:fb_kill_whitespace") | let g:fb_kill_whitespace = 1 | endif
if g:fb_kill_whitespace
  fu! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
  endfu
  au FileType c,cabal,cpp,haskell,javascript,php,python,ruby,readme,tex,text,thrift,xml
    \ au BufWritePre <buffer>
    \ :call <SID>StripTrailingWhitespaces()
endif

"""""""""""
" Vundle
"""""""""""

" be iMproved, required
set nocompatible              

" required
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Soy
Plugin 'duganchen/vim-soy'

" Javascript
Plugin 'pangloss/vim-javascript'

" Jade templates
Plugin 'digitaltoad/vim-jade'

" Scala syntax
Plugin 'derekwyatt/vim-scala'

" Flatbuffer schemas
Plugin 'dcharbon/vim-flatbuffers'

" NerdTree - filesystem tree
Plugin 'scrooloose/nerdtree'

" Control-P - search files in vim with control-p
Plugin 'ctrlpvim/ctrlp.vim'

" IDK, ag for vim
Plugin 'rking/ag.vim'

call vundle#end()            

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Search with Ag
noremap <leader>s :Ag

" bind K to grep word under the cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR>

" Autostart NERDTree
autocmd VimEnter * NERDTree

filetype plugin indent on    
