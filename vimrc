" Kyrylo Silin -->
"                 https://github.com/kyrylo/dot
"                                              <-- kyrylosilin@gmail.com
" =========> Gvim compatibility zone.
"
" FUCK FUCK FUCK!!!
" I wasted 3 fucking hours trying to make *P*A*T*H*E*T*I*C*G*E*N* working with
" gVim. BLIMEY, everything I needed was simply to invoke it from HERE (.vimrc),
" and not from there (.gvimrc). I HATE SOFTWARE.
call pathogen#infect()

" DOH! Don't move it from this file, cos it won't work with if you put it in
" .gvimrc. BLOODY BUGGERING HELL, I don't use *VIM*, I use GVIM!
let mapleader=","
syntax on

" Enable file type detection.
filetype on
filetype plugin indent on
"
" =========> End of Gvim compatibility zone.

set term=builtin_ansi " Fix broken arrow key navigation in insert mode
set t_Co=256 " Use 256 colours.
set background=dark
colorscheme xoria256
set fileformats=unix,dos,mac
set noerrorbells " Don't fucking beep.
set laststatus=2 " Always show.
set mousehide " Hide it during typing.
set lazyredraw
set history=100 " Number of entries to remember in history.
set nowrap
set encoding=utf-8
set hlsearch
set ruler " Lines and cursor position. Look at the lower right corner.
set number " Use line numbers.
set list " Display unprintable characters.
set listchars=trail:·,tab:»\ ,nbsp:%,extends:>,precedes:<
set colorcolumn=80
set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab
set scrolloff=3 " Minimal number of lines to keep above and below the cursor.
set display+=lastline,uhex " Display last line; unprintable characters as HEX.
set encoding=utf8
set fileencodings=utf8,cp1251
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp

" Unmap the retarted key. I always accidentally press it.
map K <Nop>

" Check spelling for English and Russian languages.
map <F2> <Esc>:setlocal spell! spelllang=ru,en<CR>

" Hide/show NERDTree.
map <F3> <Esc>:NERDTreeToggle<CR>

" Hide/show search highlighting.
map <F4> :set hlsearch!<CR>

" Toggles background (provided by Solarized colorscheme).
call togglebg#map("<F5>")

" Paste from the clipboard.
map <F9> "+p

" Copies selected content to the clipboard.
map <F12> :yank+<CR>

" Divides screen into two *horizontal* panes.
map \ :split<CR>

" Divides screen into two *vertical* panes.
map \| :vsplit<CR>

" Resizing a window split.
map <silent> - <C-W>-
map <silent> = <C-W>+
map <silent> _ <C-w><
map <silent> + <C-w>>"

" Fix for xoria256
highlight ColorColumn ctermbg=237

" Toggle the CursorLine between INSERT and NORMAL modes.
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
