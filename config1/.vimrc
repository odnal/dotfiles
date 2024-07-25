" Install vim-plug https://github.com/junegunn/vim-plug
" create a plugged directory in .vim
call plug#begin()

" Make sure you use single quotes / :PlugInstall to install your plugins
Plug 'ycm-core/YouCompleteMe'
Plug 'kristijanhusak/vim-hybrid-material'

call plug#end()

set number
syntax on
set tabstop=2
set smartindent
set expandtab
set softtabstop=2
set shiftwidth=2
set noswapfile
set incsearch
set hlsearch
set ruler
set mouse=n
set visualbell
set t_vb=
set expandtab
set signcolumn=no

" Remaps
imap jj <Esc>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
let mapleader=","
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yfx :YcmCompleter FixIt<CR>
nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)


" Normal action

if has("autocmd")

    " If the filetype is Makefile then we need to use tabs
    " So do not expand tabs into space.
    autocmd FileType make   set noexpandtab

endif


if &term == "xterm" || &term == "xterm-256color" || &term == "screen-bce" || &term == "screen-256color" || &term == "screen" || &term == "tmux-256color-italic"

set background=dark
let g:hybrid_transparent_background = 1
colorscheme hybrid_reverse
" :help group-name for understanding the naming conventions below
hi Include   ctermfg=169 guifg=#d75faf "rgb=215,95,175
hi LineNr    ctermfg=3
hi Comment   ctermfg=34
hi Todo      ctermfg=3
hi Number    ctermfg=169
hi PreCondit ctermfg=169
"hi Conditional ctermfg=3
"hi Repeat ctermfg=3
"hi Label ctermfg=3
"hi Exception ctermfg=3

" YCM configs
hi YcmWarningSection ctermbg=173   ctermfg=0
hi YcmErrorSection   ctermbg=173   ctermfg=0



"colorscheme peachpuff
"hi Comment ctermfg=green
"hi Macro ctermfg=38 guifg=#00afd7 "rgb=0,175,215
"hi Character ctermfg=169 guifg=#d75faf "rgb=215,95,175
"hi Pmenu ctermbg=darkyellow

endif

