" Kyrylo Silin -->
"                 https://github.com/kyrylo/dot
"                                              <-- kyrylosilin@gmail.com
"colorscheme xoria256
"set guifont=DejavuSansMono\ 7.5
"set background=dark
"set fileformats=unix,dos,mac
"set noerrorbells " Don't fucking beep.
"set guicursor+=n-v-c:blinkon0 " Don't blink in visual and normal mode.
"set laststatus=2 " Always show.
"set mousehide " Hide it during typing.
"set lazyredraw
"set history=100 " Number of entries to remember in history.
"set nowrap
"set encoding=utf-8
"set hlsearch
"set ruler " Lines and cursor position. Look at the lower right corner.
"set cursorline
"set number " Use line numbers.
"set list " Display unprintable characters.
"set listchars=trail:·,tab:»\ ,nbsp:%,extends:>,precedes:<
"set colorcolumn=80
"set autoindent
"set smarttab
"set shiftwidth=2
"set softtabstop=2
"set expandtab
"set scrolloff=3 " Minimal number of lines to keep above and below the cursor.
"set display+=lastline,uhex " Display last line; unprintable characters as HEX.
"set t_Co=256 " Use 256 colours.
"set guioptions=S " Not a valid option, but it hides GUI crap.
"set encoding=utf8
"set fileencodings=utf8,cp1251
"set backup
"set backupdir=~/.vim/backups
"set directory=~/.vim/tmp

"" Unmap the retarted key. I always accidentally press it.
"map K <Nop>

"" Check spelling for English and Russian languages.
"map <F2> <Esc>:setlocal spell! spelllang=ru,en<CR>

"" Hide/show NERDTree.
"map <F3> <Esc>:NERDTreeToggle<CR>

"" Hide/show search highlighting.
"map <F4> :set hlsearch!<CR>

"" Toggles background (provided by Solarized colorscheme).
"call togglebg#map("<F5>")

"" Paste from the clipboard.
"map <F9> "+p

"" Copies selected content to the clipboard.
"map <F12> :yank+<CR>

"" Divides screen into two *horizontal* panes.
"map \ :split<CR>

"" Divides screen into two *vertical* panes.
"map \| :vsplit<CR>

"" Fix for xoria256
"highlight ColorColumn guibg=#1c1c1c
