" Douglas Black
" Plugins {{{
call plug#begin('~/.vim/plugged')
" 颜色主题
Plug 'sjl/badwolf'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'ratazzi/blackboard.vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'tpope/vim-vividchalk'
Plug 'vim-scripts/wombat256.vim'
Plug 'evgenyzinoviev/vim-vendetta'
" 状态栏
Plug 'bling/vim-airline'
" 文件浏览
Plug 'scrooloose/nerdtree'
" 代码查找工具 
Plug 'rking/ag.vim'
" 文件查找工具
Plug 'kien/ctrlp.vim'
" Dash 文档工具
Plug 'rizzatti/dash.vim'
" Git 工具
Plug 'tpope/vim-fugitive'
" 更多的补全
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" 括号匹配
Plug 'jiangmiao/auto-pairs'
"Plug 'Raimondi/delimitMate'
" 代码实时检查
"Plug 'scrooloose/syntastic'
" 显示摘要
Plug 'majutsushi/tagbar'
" 高级撤销
Plug 'sjl/gundo.vim'
" Javascript 语法插件
"Plug 'jelera/vim-javascript-syntax'
"Plug 'pangloss/vim-javascript'
" 缩进可视化
Plug 'Yggdroot/indentLine'
" Javascript 语法补全
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
" Javascript 自动生成文档
Plug 'heavenshell/vim-jsdoc'
" 统一的文本编辑器配置 
Plug 'editorconfig/editorconfig-vim'
" 显示git文件修改
Plug 'airblade/vim-gitgutter'
" 标记
Plug 'zhangyuanwei/Mark--Karkat'
"Plug 'einars/js-beautify'
" Javascript 文件格式化 
Plug 'maksimr/vim-jsbeautify'
" 自动补全
Plug 'Valloric/YouCompleteMe'
call plug#end()
" }}}
" Colors {{{
syntax enable           " enable syntax processing
set t_Co=256
set background=dark
"colorscheme badwolf
"colorscheme solarized
"colorscheme molokai
colorscheme blackboard
"colorscheme distinguished
"colorscheme vividchalk
"colorscheme wombat256mod
"colorscheme vendetta
" }}}
" Misc {{{
set nocompatible
set ttyfast                     " faster redraw
set backspace=indent,eol,start
set mouse=n
"set ttymouse=xterm2
"set ttymouse=xterm
set nobomb					"不用BOM头
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
"set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10    " start with fold level of 1
" }}}
"" Line Shortcuts {{{
"nnoremap j gj
"nnoremap k gk
"nnoremap B ^
"nnoremap E $
"nnoremap $ <nop>
"nnoremap ^ <nop>
"nnoremap gV `[v`]
"onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
"xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
"onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
"xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
"
"onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
"xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
"onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
"xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
"" }}}
" Leader Shortcuts {{{
"let mapleader=","
"nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>0 :b10<CR>
nnoremap <leader>- :bd<CR>
nnoremap <leader>= :bl<CR>
nnoremap <leader>` :bf<CR>
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>] :call GoToDefinition()<CR>
nnoremap <leader>[ <C-O>
nnoremap <leader>w :NERDTree<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
"nnoremap <leader>h :A<CR>
"nnoremap <leader>ev :vsp $MYVIMRC<CR>
"nnoremap <leader>ez :vsp ~/.zshrc<CR>
"nnoremap <leader>sv :source $MYVIMRC<CR>
"nnoremap <leader>j :call GoToDefinition()<CR>
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
"nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
"nnoremap <leader>1 :set number!<CR>
"nnoremap <leader>d :Make! 
nnoremap <leader>r :call RunFile()<CR>
nnoremap <leader>f :call FormatFile()<CR>
nmap <silent> <C-d> ?function<cr>:noh<cr><Plug>(jsdoc)
nmap     <leader>d <Plug>DashSearch
"vnoremap <leader>y "+y
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)
"inoremap jk <esc>
" }}}
" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#show_tabs = 1
set laststatus=2
" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg|class)$'
" }}}
" NERDTree {{{
let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
" }}}
" Ultisnips {{{
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" }}}
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" IndentLine{{{
let g:indentLine_char = '│'
" }}}
" Mark {{{
let g:mwDefaultHighlightingPalette = 'extended' 
nmap <unique> <Leader>mr <Plug>MarkRegex
xmap <unique> <Leader>mr <Plug>MarkRegex
" }}}
" Eclim {{{
let g:EclimCompletionMethod = 'omnifunc'
"let g:EclimJavaSearchSingleResult = 'tabnew'
let g:EclimJavaSearchSingleResult = 'edit'
let g:EclimFileTypeValidate = 0
let g:EclimJavascriptLintEnabled = 0
"let g:EclimJavascriptValidate = 0 
"let g:EclimHtmlValidate = 0 
"let g:EclimCssValidate = 0
" }}}
" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    autocmd FileType ada set omnifunc=adacomplete#Complete
    autocmd FileType c set omnifunc=ccomplete#Complete
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    "autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    "autocmd FileType javascript set omnifunc=jscomplete#CompleteJS
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    "autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType sql set omnifunc=sqlcomplete#Complete
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    "autocmd Filetype java set omnifunc=javacomplete#Complete
augroup END
" }}}
" Backups {{{
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
" }}}
" Custom Functions {{{
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

function! RunFile()
    if(&ft=='javascript')
        exec ":!node " . bufname('%')
    elseif(&ft=='python')
        exec ":!" . ". venv/bin/activate; nosetests " .bufname('%') . " --stop"
    endif
endfunction

function! FormatFile()
    if(&ft=='javascript')
        call JsBeautify()
    elseif(&ft=='html')
        call HtmlBeautify()
    elseif(&ft=="css")
        call CSSBeautify()
    elseif(&ft=="java")
        exec ":%JavaFormat"
    endif
endfunction

function! GoToDefinition()
    if(&ft=='javascript')
        exec ":TernDef"
    elseif(&ft=='java')
        exec ":JavaSearchContext"
    else
        exec ":YcmCompleter GoToDefinitionElseDeclaration"
    endif
endfunction
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! <SID>CleanFile()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %!git stripspace
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

function! s:NextTextObject(motion, dir)
    let c = nr2char(getchar())

    if c ==# "b"
        let c = "("
    elseif c ==# "B"
        let c = "{"
    elseif c ==# "r"
        let c = "["
    endif

    exe "normal! ".a:dir.c."v".a:motion.c
endfunction
" }}}

" vim:foldmethod=marker:foldlevel=0
