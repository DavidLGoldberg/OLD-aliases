set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set nobackup
set nowrap

map <C-h> :split<Enter><C-w><C-w>:FufCoverageFile<Enter>
map <C-t> :vsplit<Enter><C-w><C-w>:FufCoverageFile<Enter>

imap jj <Esc>

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

"FuzzyFinder
map <C-N> :FufCoverageFile<Enter>
map <C-D> :FufDir<Enter>

