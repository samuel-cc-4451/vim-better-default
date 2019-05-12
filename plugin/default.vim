" default.vim - Better vim than the default
" Maintainer: Samuel Cherukutty <https://github.com/scherukutty>
" Courtesy:   Liu-Cheng Xu <https://github.com/liuchengxu>
" Version:      1.0
" vim: et ts=2 sts=2 sw=2

scriptencoding utf-8

if &compatible || exists('g:loaded_vim_better_default')
  finish
endif
let g:loaded_vim_better_default = 1

let s:save_cpo = &cpo
set cpo&vim

" Neovim has set these as default
if !has('nvim')

  set nocompatible               " Be imporoved
  syntax on                      " Syntax highlighting
  filetype plugin indent on      " Automatically detect file types
  set autoindent                 " Indent at the same level of the previous line
  set autoread                   " Automatically read a file changed outside of vim
  set backspace=indent,eol,start " Backspace for dummies
  set complete-=i                " Exclude files completion
  set cscopeverbose              " Verbose Cscope
  set display="lastline,msgsep"  " Show as much as possible of the last line
  set encoding=utf-8             " Set default encoding
  set history=10000              " Maximum history record
  set hlsearch                   " Highlight search terms
  set incsearch                  " Find as you type search
  set laststatus=2               " Always show status line
  set mouse=a                    " Automatically enable mouse usage
  set nrformats="bin,hex"
  set ruler                      " Show the ruler
  set smarttab                   " Smart tab
  set tabpagemax=50
  set ttyfast                    " Faster redrawing
  set viminfo+=!,"100,%,/100,n~/.vim/viminfo " Viminfo include !
  set wildmenu                   " Show list instead of just completing

  set ttymouse=xterm2

endif

filetype indent on " Automaticllay indent filetyps
filetype plugin on " Add syntax completions for filetyps
set shortmess=atOI " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
set shortmess+=c   " Shutoff completion messages"
set ignorecase     " Case insensitive search
set smartcase      " ... but case sensitive when uc present
set scrolljump=5   " Line to scroll when cursor leaves screen
set scrolloff=3    " Minumum lines to keep above and below cursor
"set nowrap         " Do not wrap long lines
set shiftwidth=4   " Use indents of 4 spaces
set tabstop=4      " An indentation every four columns
set softtabstop=4  " Let backspace delete indent
set splitright     " Puts new vsplit windows to the right of the current
set splitbelow     " Puts new split windows to the bottom of the current
set autowrite      " Automatically write a file when leaving a modified buffer
set mousehide      " Hide the mouse cursor while typing
set hidden         " Allow buffer switching without saving
set t_Co=256       " Use 256 colors
set showcmd        " Show partial commands in status line and Selected characters/lines in visual mode
set showmode       " Show current mode in command-line
set showmatch      " Show matching brackets/parentthesis
set matchtime=3    " Show matching time
set report=0       " Always report changed lines
set linespace=0    " No extra spaces between rows
set pumheight=20   " Avoid the pop up menu occupying the whole screen
set expandtab      " Tabs are spaces, not tabs
set textwidth=120  "Try breaking after 120 characters
set switchbuf=useopen,usetab,newtab "buffer switching behaviour
set lazyredraw     "redraw only if needed

"Ask vim to look into subdirectories
set path+=**
" http://stackoverflow.com/questions/6427650/vim-in-tmux-background-color-changes-when-paging/15095377#15095377
set t_ut=

set winminheight=0
set wildmode=list:longest,full

set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

set whichwrap+=<,>,h,l  " Allow backspace and cursor keys to cross line boundaries

set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set wildignore+=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip
set wildignore+=*/.git/*,*.rbc,*.pyc,*/__pycache__,*/.vscode/*,*.swp,*.db,*/html/*,*/vendor/*,*/compile_commands.json,*/build/*
set wildignore+=*/tmp/*,*.o,*.obj,*.so     " Unix
set wildignore+=*\\tmp\\*,*.exe            " Windows

"completion
set completeopt+=menuone,noselect

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Change cursor shape for iTerm2 on macOS {
" bar in Insert mode
" inside iTerm2
if $TERM_PROGRAM =~# 'iTerm'
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" inside tmux
if exists('$TMUX') && $TERM != 'xterm-kitty'
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" inside neovim
if has('nvim')
  set inccommand=split
  tnoremap <Esc> <C-\><C-n>
endif
" }

if get(g:, 'vim_better_default_minimum', 0)
  finish
endif

if get(g:, 'vim_better_default_backup_on', 1)
  set backup
  set writebackup
  set noswapfile
endif

if get(g:, 'vim_better_default_enable_folding', 1)
  set foldenable
  set foldmarker={,}
  set foldlevel=0
  set foldmethod=marker
  " set foldcolumn=3
  set foldlevelstart=99
  set foldnestmax=10
endif

set background=dark         " Assume dark background
"set cursorline              " Highlight current line
set fileformats=unix,dos,mac        " Use Unix as the standard file type
set number                  " Line numbers on
set relativenumber          " Relative numbers on
set fillchars=vert:│,stl:\ ,stlnc:\

"" Disable the blinking cursor.
set gcr=a:blinkon0

""Indent Settings
set cinoptions="(0,t0"
set cindent
set smartindent


"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Annoying temporary files
set directory=/tmp//,.
set backupdir=/tmp//,.
set undodir=/tmp//,.

"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

highlight clear SignColumn  " SignColumn should match background
" highlight clear LineNr      " Current line number row will have same background color in relative mode

"Spellcheck
set spelllang=en_us

"Timeouts
set timeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=50

if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

if get(g:, 'vim_better_default_persistent_undo', 1)
  if has('persistent_undo')
    set undofile             " Persistent undo
    set undolevels=1000      " Maximum number of changes that can be undone
    set undoreload=10000     " Maximum number lines to save for undo on a buffer reload
  endif
endif

if has('gui_running')
  set guioptions-=r        " Hide the right scrollbar
  set guioptions-=L        " Hide the left scrollbar
  set guioptions-=T
  set guioptions-=e
  " No annoying sound on errors
  set noerrorbells
  set novisualbell
  set visualbell t_vb=
endif

" Key (re)Mappings {

if get(g:, 'vim_better_default_key_mapping', 1)

  " Basic {
  if get(g:, 'vim_better_default_basic_key_mapping', 1)
    "" Insert mode shortcut
    " Bash like
    inoremap <C-h> <BS>
    inoremap <M-j> <Down>
    inoremap <M-k> <Up>
    inoremap <M-h> <Left>
    inoremap <M-l> <Right>
    inoremap <M-b> <S-Left>
    inoremap <M-f> <S-Right>
    inoremap <C-/> <C-o>u
    inoremap <C-y> <C-o>p
    inoremap <C-a> <Home>
    inoremap <C-e> <End>
    inoremap <C-d> <C-o>x
    inoremap <M-d> <C-o>dw
    inoremap <M-w> <C-o>db
    " Command mode shortcut
    cnoremap <C-h> <BS>
    cnoremap <M-j> <Down>
    cnoremap <M-k> <Up>
    cnoremap <M-h> <Left>
    cnoremap <M-l> <Right>
    cnoremap <C-a> <Home>
    cnoremap <C-e> <End>
    cnoremap <C-d> <Delete>
    cnoremap <M-f> <S-Right>
    cnoremap <M-b> <S-Left>

    "Semicolon at eol
    inoremap ;; <end>;<cr>
    "" jj | escaping
    inoremap jj <Esc>
    cnoremap jj <C-c>
    " Quit visual mode
    vnoremap v <Esc>
    " Move to the start of line
    nnoremap H ^
    " Move to the end of line
    nnoremap L $
    " Redo
    nnoremap U <C-r>
    " Quick command mode
    nnoremap <CR> :
    " In the quickfix window, <CR> is used to jump to the error under the
    " cursor, so undefine the mapping there.
    autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
    " Yank to the end of line
    nnoremap Y y$
    " Auto indent pasted text
    " nnoremap p p=`]<C-o>
  endif
  " }

endif

" }

"netrw {
let g:netrw_liststyle=1
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_sizestyle="H"
let g:netrw_keepdir=0
"}

let &cpo = s:save_cpo
unlet s:save_cpo
