""""""""""""""""""""""""""""""""""""""""""""""""""
" General parameters
"  Chewie / dotfiles
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType tf setlocal ts=2 sts=2 sw=2 expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: At some point I'll need to switch over to the native Vim 8.0 package
" feature. Either via manual git subtree management, or maybe through minpac?
"
" Install vim-plug if we don't already have it
" Credit to github.com/captbaritone
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
", { 'do': './UltiSnips/generate.sh' }

" Bag of mappings
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-unimpaired'
"Plug 'scrooloose/nerdcommenter' "Comment functions
"Plug 'romainl/vim-qf'

" Snippets (don't really use them, but eh)
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"snippet verbatim "Verbatim" bi
"\begin{verbatim}
"${0:${VISUAL}}
"\end{verbatim}
"endsnippet
"

" Navigation
"Plug 'tpope/vim-vinegar'
"Plug 'ctrlpvim/ctrlp.vim' " TODO: I don't really use that anymore.
Plug 'mileszs/ack.vim' " search tool in vim

" Theming
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Filetype specific plugins
Plug 'pearofducks/ansible-vim'
Plug 'davidhalter/jedi-vim' " for Python code completion
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'vim-pandoc/vim-pandoc'
"Plug '5long/pytest-vim-compiler'
Plug 'hashivim/vim-terraform'
"Plug 'vim-latex/vim-latex'


" Tag management
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" 'IDE' features
Plug 'tpope/vim-fugitive' " git
"Plug 'tpope/vim-dispatch'
"Plug 'janko/vim-test'
Plug 'dense-analysis/ale' " Asynchronous Lint Engin
Plug 'junegunn/fzf' " find that file as quickly as possible using fuzzy search
call plug#end()


filetype plugin on
filetype plugin indent on " Enable filetype detection for plugins and indent options
set autoread " Reload a file when it is changed from the outside
set autowrite " Write the file when we leave the buffer
set nobackup " Disable backups, we have source control for that
set encoding=utf-8 " Force encoding to utf-8,
set noswapfile " Disable swapfiles too
set hidden " Hide buffers instead of closing them
set term=xterm-256color
" Set the time (in milliseconds) spent idle until various actions occur
" In this configuration, it is particularly useful for the tagbar plugin
" set updatetime=500

""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight  redundant spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/
set backspace=eol,indent,start " Make backspace behave as expected
set scrolloff=5 " Set the min number of lignes under and above the cursor
set showmode " Show current mode
set showcmd " Show command being executed
set number " Show line number
set laststatus=2 " Always show status line
" Format the status line
" This status line comes from Pierre Bourdon's vimrc
"set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)
set wildmenu " Enhance command line completion
set wildmode=longest:full,list:full " Set completion behavior, see :help wildmode
set visualbell " Disable bell completely
set t_vb= " Disable bell completely
if version >= 703 " Color the column after textwidth, usually the 80th
  set colorcolumn=+1
endif
set fillchars=vert:│
syntax on " Enables syntax highlighting
set mouse=a " Allow mouse use in vim
set showmatch " Briefly show matching braces, parens, etc
set wrap " Enable line wrapping
set textwidth=79 " Wrap on column 80
set completeopt=longest,menuone " Disable preview window on completion
set cursorline " Highlight current line

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search options
""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase " Ignore case on search
set smartcase " Ignore case unless there is an uppercase letter in the pattern
set incsearch " Move cursor to the matched string
set nohlsearch " Don't highlight matched strings

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 " The length of a tab normal is 8
set shiftwidth=4 " spaces inserted/removed when using < or >
set softtabstop=-1 " -1 means the same value as shiftwidth
set expandtab " Insert spaces instead of tabs
set smarttab " When tabbing manually, use shiftwidth
set autoindent " default indent as previous line
set cinoptions=(0,u0,U0,t0,g0,N-s " See :help cinoptions-values for details

""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" move line up and down
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" let mapleader = "," " Set , as map leader

" Toggle paste mode
" noremap <leader>pp :setlocal paste!<cr>
" noremap j gj " Move between rows in wrapped lines
" noremap k gk " Move between rows in wrapped lines
nnoremap Y y$ " Yank from cursor to end of line,
cnoreabbrev w!! w !sudo tee % >/dev/null " Write as root,

" map ; to :
" noremap ; :

" Open the quickfix window if there are errors, or close it if there are no
" errors left
"noremap <leader>cw :botright :cw<cr>

" Run make silently, then skip the 'Press ENTER to continue'
"noremap <leader>m :silent! :make! \| :redraw!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Persistence options
""""""""""""""""""""""""""""""""""""""""""""""""""
" Set location of the viminfo file
set viminfo='20,\"50,<100,n~/.vimtmp/viminfo

" See :h last-position-jump
"augroup last_position_jump
"    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"augroup END

"endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""
" snippets plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
"let g:UltiSnipsListSnippets="<c-l>"
""""""""""""""""""""""""""""""""""""""""""""""""""
" latex plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tex_flavor='latex'
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""
""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_compact = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutentags plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:gutentags_cache_dir="~/.cache/vim/tagfiles/"
let g:gutentags_modules = ['ctags']
let g:gutentags_ctags_extra_args = ['--fields=+l --extra=+f --langdef=file --c-kinds=+lx']
let g:gutentags_project_root = ['.project']
let g:ctrlp_root_markers = ['.project']

""""""""""""""""""""""""""""""""""""""""""""""""""
" jedi-vim plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""

let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#smart_auto_mappings = 1
let g:jedi#popup_on_dot = 1
let g:jedi#completions_command = "<C-Space>"
let g:jedi#show_call_signatures = "1"
""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {'python': 'all'}
let g:ale_completion_enabled = 0
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 0
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'
autocmd FileType python setlocal omnifunc=jedi#completions
""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use a slightly darker background color to differentiate with the status line
let g:jellybeans_background_color_256='232'
colorscheme jellybeans
let g:airline_theme='jellybeans'
""""""""""""""""""""""""""""""""""""""""""""""""""
" ansible plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_extra_keywords_highlight = 1
let g:ansible_name_highlight = 'b'
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_with_keywords_highlight = 'Constant'
let g:ansible_template_syntaxes = { '*.rb.j2': 'ruby' }


""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin mappings and options
""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Doxygen highlighting
" let g:load_doxygen_syntax=1

" Disable Ack.vim's mappings on the quickfix and location list windows
" We use vim-qf mappings instead
"let g:ack_apply_qmappings = 0
"let g:ack_apply_lmappings = 0
"let g:qf_mapping_ack_style = 1

" Override unimpaired quickfix and loc-list mappings to use vim-qf wrapparound
"let g:nremap = {"[q": "", "]q": "", "[l": "", "]l": ""}
"nmap [q <Plug>(qf_qf_previous)
"nmap ]q <Plug>(qf_qf_next)
"nmap [l <Plug>(qf_loc_previous)
"nmap ]l <Plug>(qf_loc_next)

" Launch fugitive's gstatus
"noremap <leader>gs :Gstatus<cr>

" Mappings for vim-test
"nmap <silent> <leader>ts :TestSuite<cr>

" Tell vim-test to use dispatch to run our tests
"let test#strategy = "dispatch"

" Tell Dispatch to use the pytest compiler when we call pytest (the compiler
" file looks for py.test instead of pytest)
"let g:dispatch_compilers = {'pytest': 'pytest'}

" Add the termdebug built-in plugin
"if version >= 801
"    packadd termdebug
"endif
