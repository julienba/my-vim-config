" Require by pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set history=50        " keep 50 lines of command line history
set ruler        " show the cursor position all the time
set showcmd        " display incomplete commands
set incsearch        " do incremental searching


set nocompatible " breaks compatibility with original vi
set backspace=indent,eol,start " allow backspace in insert mode
"set autoindent    " text indenting
"set smartindent   " as above
set tabstop=4     " number of spaces in a tab
set softtabstop=4 " as above
set shiftwidth=4  " as above
set expandtab

set history=100   " lines of command history
set showcmd       " show incomplete commands
"set hlsearch      " highlight searched-for phrases
set incsearch     " highlight search as you type
set smarttab
"set list " affiche les caracteres louches
set tabpagemax=15

"Color
colorscheme delek " set up a color scheme in the gvim interface
syntax on " active the syntaxic coloration
let mywinfont="Monospace:h10:cANSI"

"set number         " display current line number

"Retour a la meme position
if has("autocmd")
  "filetype plugin indent on
  "autocmd FileType text setlocal textwidth=78

" always jump to last edit position when opening a file
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
endif

"Souligne la ligne en cours
set cursorline
highlight CursorLine guibg=#616668

syntax on


"Pimp l'apparence
if has("gui_running")                 " console Vim cannot set the font
    colorscheme slate " set up a color scheme in the gvim interface
    set mousemodel=popup " create popop when right click in gui

    if has("gui_gtk2")            " GTK+2, not GTK+1
        set gfn=Bitstream\ Vera\ Sans\ Mono\ 11
    elseif has("gui_photon")      " Photon GUI
        set gfn=Bitstream\ Vera\ Sans\ Mono:s12
    elseif has("gui_kde")         " the obsolete kvim
        set gfn=Bitstream\ Vera\ Sans\ Mono/12/-1/5/50/0/0/0/1/0
    elseif has("x11")             " other X11 GUIs including GTK+1
        set gfn=-*-lucidatypewriter-medium-r-normal-*-*-100-*-*-m-*-*
    else                          " non-X11 GUIs including Windows
        set gfn=Lucida_Console:h12:cDEFAULT
    endif
    set number         " display current line number
    "set listchars=eol:âEUR¢,tab:âEUR£âEUR?,trail:Â»,extends:â+·,precedes:â+¶
else
    "set listchars=eol:Â¶,tab:â+'âEUR?,trail:Â»,extends:â+",precedes:â+
endif

" Fantom
au BufNewFile,BufRead *.fan,*.fwt setf fan

" web
au BufNewFile,BufRead *.jade,*.html,*.css,*.js,*.styl set sw=2

" shortcut for NERDTree
nmap <silent> <c-n> :NERDTreeToggle<CR>

" shortcut tagbar
nmap <silent> <c-b> :TagbarToggle <CR>
