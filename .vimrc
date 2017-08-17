syntax on
set paste
set number
set ignorecase
set smartcase
set smartindent
set laststatus=2
set showcmd
set showmode
"set mouse=a
set mouse-=a
set cursorline
set listchars=tab:>-,trail:\$
set list
set hlsearch
set autoindent
set wrap
set textwidth=80
set ts=4
set expandtab
set fileencodings=gbk
set encoding=utf-8
setlocal et sta sw=4 sts=4
set isf=@,48-57,/,-,_,+,,,#,$,%,~,=

set incsearch

"set foldenable
"set foldmethod=syntax
"set foldcolumn=0
setlocal foldlevel=4
let g:systype=system('uname -s')

set splitright " open new window on right
set backspace=indent,eol,start
"set lcs=tab:+-,trail:$
"hi CursorLine cterm=NONE ctermbg=gray
"hi Folded ctermfg=darkcyan  ctermbg=gray
"hi CursorLine cterm=none ctermbg=254
hi MatchParen ctermbg=green ctermfg=white
hi Search ctermfg=0 ctermbg=3
highlight SyntasticError term=reverse ctermfg=15 ctermbg=9
highlight SyntasticWarning term=reverse ctermfg=15 ctermbg=9
highlight SyntasticStyleError term=reverse ctermfg=15 ctermbg=9
highlight SyntasticStyleWarning term=reverse ctermfg=15 ctermbg=9
highlight SpellBad term=reverse ctermfg=15 ctermbg=9
highlight GitGutterAdd term=reverse cterm=bold ctermfg=2 ctermbg=0
highlight GitGutterChange term=reverse cterm=bold ctermfg=12 ctermbg=0
highlight GitGutterDelete term=reverse cterm=bold ctermfg=1 ctermbg=0

 "set line number color
"hi LineNr cterm=NONE ctermfg=black

"{{{ common map
 noremap <Space>   i <Esc>l
 noremap J   j
 noremap K   k
 ""inoremap lll     <Esc>lll
 ""inoremap hhh     <Esc>hhh
 ""inoremap jjj     <Esc>jjj
 ""inoremap kkk     <Esc>kkk
 "noremap w1 :bwipe
 "nnoremap <TAB> :bnext<CR>
 nnoremap <TAB>  :bnext<CR>
 nnoremap <S-TAB> :bprevious<CR>
 nnoremap gs gg
 nnoremap gm M
 nnoremap gh H
 nnoremap gl L
 nnoremap ge G
 nnoremap ge G
 nnoremap fs ^
 nnoremap fe $
 nnoremap fj :%!python -m json.tool<CR>
 nnoremap w W
 nnoremap e E
 nnoremap s S
 nnoremap ti <C-]>
 nnoremap to <C-t>
 nnoremap m M
 nnoremap Y y$
"}}}
"{{{ window move
 noremap      <C-j> <C-W>j
 noremap      <C-k> <C-W>k
 noremap      <C-h> <C-W>h
 noremap      <C-l> <C-W>l
 noremap      <C-r> <C-W>r
 noremap      <C-x> <C-W>x
 inoremap      <C-j> <Esc><C-W>j
inoremap      <C-k> <Esc><C-W>k
inoremap      <C-h> <Esc><C-W>h
noremap      <C-l> <Esc><C-W>l
noremap      = <C-W>=
noremap      <C-p> :write !pwd <CR>
map <silent> te :e ~/.vimrc<cr>
""}}}

"{{{ autocommand
 au! BufRead,BufNewFile */*.nginx.conf set ft=nginx
 au! bufwritepost .vimrc source ~/.vimrc 
 "au! FileType python setlocal et sta sw=4 sts=4
 "au! FileType lua setlocal et sta sw=4 sts=4
 "au! FileType c setlocal et sta sw=4 sts=4
 "au! FileType sh setlocal et sta sw=4 sts=4
 "au! FileType sh setlocal et sta sw=4 sts=4
 "au! FileType c setlocal et sta sw=4 sts=4
 au! FileType * setlocal et sta sw=4 sts=4

"}}}

"{{{ vundle
 set nocompatible               " be iMproved
 filetype on                   " required!
 filetype plugin on
 let g:pyflakes_use_quickfix = 0
 syntax on
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

"let Vundle manage Vundle required!
 Bundle 'gmarik/vundle'

" Syntax
    Bundle 'nginx.vim'

" Color

" Ftplugin

" Indent

" Plugin
    ""Bundle 'SirVer/ultisnips'
    ""Bundle 'honza/vim-snippets'
    "Bundle 'Valloric/YouCompleteMe'
    "Bundle 'taglist.vim'
    Bundle 'majutsushi/tagbar'
    "Bundle 'minibufexpl.vim'
    Bundle 'xolox/vim-misc'
    Bundle 'grep.vim'
    Bundle 'vim-syntastic/syntastic'
    ""Bundle 'autoClose'
    Bundle 'comments.vim'
    Bundle 'pylint.vim'
    Bundle 'The-NERD-tree'
    "Bundle 'mjbrownie/pythoncomplete.vim'
    Bundle 'bling/vim-airline'
    Bundle 'kevinw/pyflakes-vim'
    "Bundle 'pyflakes.vim'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'talek/obvious-resize'
    "Bundle 'terryma/vim-multiple-cursors'
    ""Bundle 'nvie/vim-flake8'
    ""Bundle 'corntrace/bufexplorer'
    if tolower( g:systype ) =~ 'linux'
        Bundle 'edkolev/tmuxline.vim'
    endif
    "Bundle 'Lokaltog/powerline'
    "Bundle 'Lokaltog/vim-powerline'

    "Bundle 'Yggdroot/indentLine'
    "Bundle 'jmanoel7/vim-games'
    "Bundle 'uguu-org/vim-matrix-screensaver'
    Bundle 'mru.vim'
    "Bundle 'drmingdrmer/vim-indent-lua.git'
    "Bundle 'raymond-w-ko/vim-lua-indent'

    Bundle 'lua.vim'
    "Bundle 'xolox/vim-lua-inspect'
    "Bundle 'xolox/vim-lua-ftplugin'

  let g:pyflakes_use_quickfix = 0
"}}}

"{{{ taglist
 let Tlist_Show_One_File = 1            " only show current file
 let Tlist_Exit_OnlyWindow = 1          " when Taglist window is the last one ,exit vim
 let Tlist_Auto_Open = 1               " auto open the taglist window,when ,start vim
 let Tlist_Use_Right_Window = 0         " show right

"}}}

"{{{ NERDTree
map <F3> :NERDTreeMirror<CR>
map tr :NERDTreeToggle<CR>
"}}}
"
"{{{ tagbar
 nmap tl :TagbarToggle<CR>
 let g:tagbar_width = 30
 let g:tagbar_show_linenumbers = 0
 let g:tagbar_sort = 0
 let g:tagbar_indent = 0
 let g:tagbar_autofocus = 0
 let g:tagbar_left = 0
 let g:tagbar_autopreview = 0
 let b:easytags_auto_highlight = 0
 autocmd FileType * setlocal nocursorline nocursorcolumn

"}}}

"{{{ grep
    let Grep_Skip_Files = '*.bak *.pyc' 
    let Grep_Default_Options = '-inr --color --exclude=tags' 
    let Grep_Skip_Dirs = 'tags ROOT' 
"}}}
"{{{ Powerline
"let g:Powerline_theme = 'solarized256'
"let g:Powerline_theme = 'solarized16'
set guifont=Liberation\ Mono\ for\ Powerline\ 10
"}}}
"{{{ airline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 let g:airline#extensions#tabline#show_buffers = 1
 let g:airline#extensions#tabline#tab_nr_type = 1
 let g:airline#extensions#tabline#show_tab_nr = 1
 let g:airline#extensions#tabline#show_tab_type = 1
 ""let g:airline#extensions#tabline#formatter = 'filename'
 let g:airline#extensions#tabline#formatter = 'unique_tail'
 let g:airline#extensions#tabline#tab_nr_type = 1 " # of splits (default)
 let g:airline#extensions#tabline#tab_nr_type = 2 " tab number

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

 "let g:airline_theme='badwolf'
 "let g:airline_powerline_fonts=1
 "let g:Powerline_symbols = 'fancy'
 "set guifont=MyFont\ for\ Powerline

 let g:airline#extensions#tabline#buffer_idx_mode = 1
 nmap OP <Plug>AirlineSelectTab1
 nmap <F2> <Plug>AirlineSelectTab2
 nmap <F3> <Plug>AirlineSelectTab3
 nmap <F4> <Plug>AirlineSelectTab4
 nmap <F5> <Plug>AirlineSelectTab5
 nmap <F6> <Plug>AirlineSelectTab6
 nmap <F7> <Plug>AirlineSelectTab7
 nmap <F8> <Plug>AirlineSelectTab8
 nmap <F9> <Plug>AirlineSelectTab9

let g:airline#extensions#tmuxline#enabled = 0
"}}}

"{{{tmuxline
let g:tmuxline_theme = 'vim_powerline'
let g:tmuxline_preset = {
    \'a'    : '#h',
    \'win'  : 's#S/w#I:#W',
    \'cwin' : 'curr: s#S/w#I:#W',
    \'x'    : '#(date "+%Y-%m-%d %H:%M:%S %A")',
    \'y'    : ['#(whoami)']}

 let g:tmuxline_separators = {
    \ 'left' : '▶',
    \ 'left_alt': '',
    \ ' right' : '◀',
    \ 'right_alt' : '',
    \ 'space' : ''}

  "if exists(':Tmuxline')
    "au BufRead,BufNewFile * Tmuxline vim_powerline
  "endif
"let g:tmuxline_theme = 'vim_powerline'
"let g:tmuxline_theme = {
        "\ 'a': [ 22, 148, 'bold' ],
        "\ 'b': [ 247 , 236],
        "\ 'c': [ 247, 236],
        "\ 'x': [ 22, 148, 'bold' ],
        "\ 'y': [ 190, 240],
        "\ 'z': [ 235, 252 ],
        "\ 'bg': [ 247, 233],
        "\ 'win': [ 250, 233 ],
        "\ 'win.activity': [ 255, 233, 'bold' ],
        "\ 'win.dim': [ 250, 233, 'dim' ],
        "\ 'cwin': [ 22, 148 ],
        "\ 'cwin.dim': [ 22, 148, 'dim']}
"}}}

"{{{obvious-resize
 noremap <silent> <S-k> :ObviousResizeUp 2<CR>
 noremap <silent> <S-j> :ObviousResizeDown 2<CR>
 noremap <silent> <S-h> :ObviousResizeLeft 2<CR>
 noremap <silent> <S-l> :ObviousResizeRight 2<CR>
"}}}

"{{{vim-gitgutter
 nmap ]c <Plug>GitGutterNextHunk
 nmap ]C <Plug>GitGutterPrevHunk
 nmap ]r <Plug>GitGutterRevertHunk
 let g:gitgutter_sign_added = '++'
 let g:gitgutter_sign_modified = '**'
 let g:gitgutter_sign_removed = '--'
 let g:gitgutter_sign_modified_removed = '&&'
 "let g:gitgutter_highlight_lines = 1
 highlight link GitGutterAdd DiffAdd
 highlight link GitGutterChange DiffChange
 highlight link GitGutterDelete DiffDelete
 highlight link GitGutterChangeDelete GitGutterChangeLineDefault
 highlight link GitGutterChangeLine DiffChange
 highlight link GitGutterDeleteLine DiffDelete
 highlight link GitGutterChangeDeleteLine GitGutterChangeLineDefault
"}}}

"{{{cscope
 "set cscopequickfix=s-,c-,d-,i-,t-,e-
 ":cs add /usr/home/shuwen5/sinastorage/src/cscope.out

 "nmap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR>
 "nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>
 "nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>
 "nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>
 "nmap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR>
 "nmap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
 "nmap <C-c>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
 "nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"}}}

"{{{YouCompleteMe
 set completeopt=longest,menu   "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
 let g:ycm_autoclose_preview_window_after_completion = 1
 let g:ycm_autoclose_preview_window_after_insertion = 1
 "map <expr> <CR>  pumvisible() ? "\<C-n>\<C-y>" :"\<CR>"
 "map <expr> <C-r>  pumvisible() ? "\<CR>" :"\<C-n>\<C-y>"

"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


 "youcompleteme  默认tab  s-tab 和自动补全冲突
 "let g:ycm_key_list_select_completion=['<c-n>']
 "let g:ycm_key_list_select_completion = ['<Down>']
 "let g:ycm_key_list_previous_completion=['<c-p>']
 "let g:ycm_key_list_previous_completion = ['<Up>']
 "let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

 let g:ycm_collect_identifiers_from_tags_files=1   " 开启 YCM 基于标签引擎
 let g:ycm_min_num_of_chars_for_completion=2   "从第2个键入字符就开始罗列匹配项
 let g:ycm_seed_identifiers_with_syntax=1  " 语法关键字补全
 let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
 let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
 let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全
"}}}
"
"{{{vim-syntastic/syntastic
    "let g:syntastic_python_checkers = []

    let g:syntastic_check_on_open = 1
    let g:syntastic_lua_checkers = ["luac","luacheck"]
    let g:syntastic_lua_luacheck_args = "--no-redefined --std ngx_lua+lua51c+luajit --codes --module"

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 0
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 1
    let g:syntastic_aggregate_errors = 1
"}}}
