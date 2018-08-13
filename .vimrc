"Highlight bad spaces
let c_space_errors=1

syntax enable

set shiftwidth=2    " two spaces per indent
set tabstop=2       " number of spaces per tab in display
set softtabstop=2   " number of spaces per tab when inserting
set expandtab       " substitute spaces for tabs

" Display.
set ruler           " show cursor position
set number          " show line numbers
set nolist          " hide tabs and EOL chars
set showcmd         " show normal mode commands as they are entered
set showmode        " show editing mode in status (-- INSERT --)
set showmatch       " flash matching delimiters
set cursorline      " highlight current line

" Scrolling.
set scrolljump=5    " scroll five lines at a time vertically
set sidescroll=10   " minumum columns to scroll horizontally

" Search.
set incsearch       " search with typeahead
set smartcase       " search case-sensitive only when capital letters are used
set ignorecase      " has to be set in order for smartcase to work like described ^
set hlsearch        " highlight search matches

" Indent.
set autoindent      " carry indent over to new lines

" Other.
set noerrorbells    " no bells in terminal

set backspace=indent,eol,start  " backspace over everything
set tags=tags;/       " search up the directory tree for tags

set undolevels=1000   " number of undos stored
set viminfo='50,"50   " '=marks for x files, "=registers for x files

set modelines=0       " modelines are bad for your health

" maps // to search for selected text in visual mode
vnoremap // y/<C-R>"<CR>

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
filetype plugin indent on

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

" Flatbuffer schema syntax
Plugin 'dcharbon/vim-flatbuffers'

" NerdTree - filesystem tree
Plugin 'scrooloose/nerdtree'

" NERDTree and tabs together in Vim
Bundle 'jistr/vim-nerdtree-tabs'

" Control-P - search files in vim with control-p
Plugin 'ctrlpvim/ctrlp.vim'

" IDK, ag for vim
Plugin 'rking/ag.vim'

" Git blame
Plugin 'tpope/vim-fugitive'

" JSON syntax
Plugin 'elzr/vim-json'

" Log highlighting
Plugin 'dzeban/vim-log-syntax'

" perun colorscheme
Plugin 'aradunovic/perun.vim'

" yaml folding
Plugin 'pedrohdz/vim-yaml-folds'

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
autocmd VimEnter * wincmd w

" Quit if NERDTree is the last open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree root as CtrlP root
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'

" Show hidden files by default
let NERDTreeShowHidden=1

" no folding please
set nofoldenable

" Colors
colorscheme perun
