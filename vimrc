" filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"useful bundles
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'

"Bundles for PHP documentor.
Bundle 'tobyS/vmustache'
Bundle 'SirVer/ultisnips'
Bundle 'tobyS/pdv'

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nu
set colorcolumn=120

"Disable arrow keys, helps to use vim powerfully.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
noremap qq <ESC>

" Search Options
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch

"Autocomplete behaviour changes
set completeopt=longest,menuone
hi Comment ctermfg=lightgrey
autocmd InsertEnter * :set nohlsearch

"Remap Esc to zz, esc is way out of reach sometimes
inoremap zz <ESC>

" CtrlP behaviour requirements
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|(build)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:50'
let g:ctrlp_max_files=30000
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = 0

"Set no swap file.
set noswapfile

"php documentor settings
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
command -nargs=0 Doc call pdv#DocumentWithSnip()<CR>

" vim airline settings.
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1

" Open vimrc
nnoremap <leader>v :e ~/.vimrc<CR>