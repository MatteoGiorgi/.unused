
"                   ██▄   █   ██▒   █▓ ██▓ ███▄ ▄███▓
"                  ██▒▀█▄ ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
"                  ██   ▀███░ ▓██  █▒░▒██▒▓██    ▓██░
"                  ██    ▒██▒  ▒██ █░░░██░▒██    ▒██
"                   █▒   ░█ ▒   ▒▀█░  ░██░▒██▒   ░██▒
"                   ▒░   ░  ░   ░ ▐░  ░▓  ░ ▒░   ░  ░
"                    ░      ░   ░ ░░   ▒ ░░  ░      ░
"                    ░            ░░   ▒ ░░      ░
"                                  ░   ░         ░
"                                 ░


"                           VIM EXTENSIONS
"                   [ Plug 'repo-name/plugin-name' ]
"
"    + vim-plug                  https://github.com/junegunn/vim-plug
"      ale                       https://github.com/dense-analysis/ale
"      coc                       https://github.com/neoclide/coc.nvim
"      vim-polyglot              https://github.com/sheerun/vim-polyglot
"    + supertab                  https://github.com/ervandew/supertab
"    + undotree                  https://github.com/mbbill/undotree
"      vim-airline               https://github.com/vim-airline/vim-airline
"      tmuxline                  https://github.com/edkolev/tmuxline.vim
"      vim-startify              https://github.com/mhinz/vim-startify
"    + fzf                       https://github.com/junegunn/fzf
"    + fzf.vim                   https://github.com/junegunn/fzf.vim
"      root                      https://github.com/dylanaraps/root.vim
"    + auto-pairs                https://github.com/jiangmiao/auto-pairs
"      vim-dispatch              https://github.com/tpope/vim-dispatch
"      vim-fugitive              https://github.com/tpope/vim-fugitive
"    + vim-surround              https://github.com/tpope/vim-surround
"      vim-repeat                https://github.com/tpope/vim-repeat
"    + vim-commentary            https://github.com/tpope/vim-commentary
"      vim-which-key             https://github.com/liuchengxu/vim-which-key
"      goyo                      https://github.com/junegunn/goyo.vim
"      limelight                 https://github.com/junegunn/limelight.vim
"      vimwiki                   https://github.com/vimwiki/vimwiki
"      vim-pandoc                https://github.com/vim-pandoc/vim-pandoc
"      vim-pandoc-syntax         https://github.com/vim-pandoc/vim-pandoc-syntax
"      markdown-preview          https://github.com/iamcco/markdown-preview.nvim
"      vim-table-mode            https://github.com/dhruvasagar/vim-table-mode
"      vimtex                    https://github.com/lervag/vimtex
"      vim-latex-live-preview    https://github.com/xuhdev/vim-latex-live-preview
"      vim-css-color             https://github.com/ap/vim-css-color
"      vislncr                   https://github.com/vim-scripts/VisIncr
"      vim-cursorword            https://github.com/itchyny/vim-cursorword
"      dracula                   https://github.com/dracula/vim/
"      vim-devicons              https://github.com/ryanoasis/vim-devicons


"                           COC EXTENSIONS
"                     [ :CocInstall plugin-name ]
"
"    coc-marketplace           https://github.com/fannheyward/coc-marketplace
"    coc-tabnine               https://github.com/neoclide/coc-tabnine
"    coc-word                  https://github.com/neoclide/coc-sources
"    coc-vimlsp                https://github.com/iamcco/coc-vimlsp
"    coc-vimtex                https://github.com/neoclide/coc-vimtex
"
"    coc-clang                 https://github.com/clangd/coc-clangd
"    coc-java                  https://github.com/neoclide/coc-java
"    coc-sh                    https://github.com/josa42/coc-sh
"    coc-python                https://github.com/neoclide/coc-python




"VIM_PLUG_______________________________________________________________________

augroup vimenter
    autocmd VimEnter *
                \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) |
                \     PlugInstall --sync | q |
                \ endif
    if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
        echo 'Downloading junegunn/vim-plug to manage plugins...'
        silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" >
                    \ ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
        autocmd VimEnter * PlugInstall
    endif
augroup END

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot'
    Plug 'ervandew/supertab'
    Plug 'mbbill/undotree'
    Plug 'vim-airline/vim-airline'
    Plug 'edkolev/tmuxline.vim'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'dylanaraps/root.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-dispatch'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-commentary'
    Plug 'liuchengxu/vim-which-key'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'lervag/vimtex'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'ap/vim-css-color'
    Plug 'vim-scripts/VisIncr'
    Plug 'itchyny/vim-cursorword'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'ryanoasis/vim-devicons'
call plug#end()




"SETTINGS_______________________________________________________________________

syntax on
color dracula
filetype plugin indent on

set clipboard=unnamedplus
set number relativenumber
set mouse=a
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set hlsearch
set incsearch
set colorcolumn=81
set nowrap
set formatoptions+=l
set smartcase
set smartindent
set encoding=UTF-8
scriptencoding utf-8
set noswapfile
set nobackup
set noshowmode
set showcmd
set nocursorline
set noerrorbells
set nofoldenable
set foldmethod=manual
set nospell
set timeoutlen=000
set updatetime=500

if exists('+termguicolors')
    set termguicolors
endif

if has('linebreak')
    let &showbreak='⤷ '
endif

if has('persistent_undo')
    set undodir=$HOME/.config/nvim/.undodir
    set undofile
endif

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

augroup vimrc
    autocmd InsertEnter * set cul
    autocmd InsertLeave * set nocul
augroup END

augroup goyo_enter
    autocmd! User GoyoEnter nested call <SID>goyo_enter()
    autocmd! User GoyoLeave nested call <SID>goyo_leave()
augroup END




"MY_VARIABLES___________________________________________________________________

let g:mapleader = "\<space>"
let g:maplocalleader = ','
let g:netrw_browsex_viewer = 'xdg-open'
let g:longline = 'none'




"NETRW__________________________________________________________________________

let g:netrw_winsize = -30
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 4
let g:netrw_altv = 1




"FFF____________________________________________________________________________

if exists('g:loaded_fff')
    finish
endif
let g:loaded_fff = 1
let g:fff#split = '30vnew'
let g:fff#split_direction = 'nosplitbelow nosplitright'
command! -nargs=* -complete=dir F call fff#Run(<q-args>)




"UNDOTREE_______________________________________________________________________

let g:undotree_DiffAutoOpen = 1
let g:undotree_WindowLayout = 3
let g:undotree_ShortIndicators = 1
let g:undotree_SplitWidth = 30
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0




"SWITCH_________________________________________________________________________

command! -nargs=1 ChangeRoot call switch#change_root(<f-args>)
command! ChangeRootCurrent call switch#change_root_current()
command! SwitchDir call switch#switch_dir()




"ROOT___________________________________________________________________________

let g:root#auto = 0
let g:root#echo = 1
let g:root#patterns = [
            \ '.git',
            \ 'Makefile',
            \ 'makefile',
            \ 'build.gradle',
            \ 'Readme.md'
            \ ]




"SUPERTAB_______________________________________________________________________

let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-n>'




"ALE____________________________________________________________________________

let g:ale_linters = {
            \ 'c': ['gcc'],
            \ 'python': ['flake8', 'pylint'],
            \ 'javascript': ['eslint'],
            \}
let g:ale_fixers = {
            \ 'python': ['yapf'],
            \}
let g:ale_fix_on_save = 1
let g:ale_disable_lsp = 1
let g:airline#extensions#ale#enabled = 1




"VIMWIKI________________________________________________________________________

let g:vimwiki_global_ext = 0
let g:vimwiki_table_mappings = 0




"PANDOC_&_MDPREVIEW_____________________________________________________________

let g:pandoc#spell#enabled =0
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'vimb'
let g:mkdp_echo_preview_url = 1
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {},
            \ 'content_editable': v:false
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'




"VIMTEX_&_LATEXPREVIEW__________________________________________________________

let g:tex_flavor = 'latex'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'




"GOYO_&_LIMELIGHT_______________________________________________________________

let g:goyo_width = 82
let g:goyo_height = '60%'
let g:limelight_conceal_ctermfg = 'darkgray'
let g:limelight_conceal_guifg = '#4b5056'
let g:limelight_default_coefficient = 0.5
let g:limelight_paragraph_span = 0




"AIRLINE_&_TMUXLINE_____________________________________________________________

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'dracula'
let g:tmuxline_preset = 'tmux'




"STARTIFY_______________________________________________________________________

let g:startify_files_number = 5
let g:startify_list_order = [
            \ ['   Files:'], 'files',
            \ ['   Directory:'], 'dir',
            \ ['   Sessions:'], 'sessions',
            \ ['   Bookmarks:'], 'bookmarks',
            \ ]
let g:startify_bookmarks = [
            \ '~/',
            \ '~/.dotfiles/',
            \ ]
let g:startify_custom_indices = [
            \ 'a', 'b', 'c', 'd', 'f', 'g', 'h', 'i', 'l', 'm', 'n',
            \ 'o', 'p', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'x'
            \ ]
let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_custom_header = [
            \'                                                             ',
            \'    /##    /#                      /##    /##/##             ',
            \'   | ###  | ##                    | ##   | #|__/             ',
            \'   | #### | ##  /######   /###### | ##   | ##/##/######/#### ',
            \'   | ## ##| ## /##__  ## /##__  ##|  ## / ##| #| ##_  ##_  ##',
            \'   | ##  ## ##| ########| ##  | ## \  ## ##/| #| ## \ ## \ ##',
            \'   | ##\  ####| ##_____/| ##  | ##  \  ###/ | #| ## | ## | ##',
            \'   |  # \  ## |  #######|  ######    \  #/  | #| ## | ## | ##',
            \'    \__  \__/  \_______/ \______/     \_/   |__|__/ |__/ |__/',
            \'                                                             ',
            \'                                                             ',
            \ ]




"WHICHKEY_&_KEYMAPPINGS_________________________________________________________

" not mapped
nnoremap <silent><M-h> <C-W><C-<>
nnoremap <silent><M-l> <C-W><C->>
nnoremap <silent><M-j> <C-W><C-->
nnoremap <silent><M-k> <C-W><C-+>
nnoremap <silent><M-Tab> :bnext<CR>
nnoremap <silent><M-\> :bprev<CR>
nnoremap <silent><M-space> <C-W><C-W>
nnoremap <silent><M-Return> :call ToggleVExplorer()<CR>
nnoremap <silent><M-Backspace> :UndotreeToggle<CR>

nnoremap <silent><C-j> <C-d> zz
nnoremap <silent><C-k> <C-u> zz
nnoremap <silent><S-j> }}{ zz
nnoremap <silent><S-k> {{ zz

nnoremap <silent><leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent><leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent><localleader> :<c-u>WhichKey ','<CR>
vnoremap <silent><localleader> :<c-u>WhichKeyVisual '<Space>'<CR>

nmap <silent><C-p> :-r!xclip -o -sel clip<CR>
vmap <silent><C-y> :!xclip -f -sel clip<CR>
vmap <silent><Tab> >gv
vmap <silent><S-Tab> <gv


" Leader menu
nnoremap <leader><Return> :F<CR>
nnoremap <leader>z :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>Q :quit!<CR>
nnoremap <leader>k :bdelete<CR>
nnoremap <leader>K :bdelete!<CR>
nnoremap <leader>i :wincmd r<CR>
nnoremap <leader>d :SwitchDir<CR>
nnoremap <leader>n :wincmd =<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>r :%s///gc<Left><Left><Left>
xnoremap <leader>r :s///gc<Left><Left><Left>
nmap <leader>x :LLPStartPreview<CR>
map <leader>u <esc>gx<CR>
nmap <leader>l gcc<CR>
vmap <leader>l gc<CR>
" remember to check ad set the default web-browser with:
" xdg-settings get default-web-browser
" xdg-settings set default-web-browser brave-browser.desktop

" add support to a plugin for vim-repeat whit the following command:
" silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
let g:which_key_map =  {
            \ '<CR>' : 'FFF',
            \ 'z' : 'Save-buffer',
            \ 'q' : 'Quit-window',
            \ 'Q' : 'Quit-window!',
            \ 'k' : 'Kill-buffer',
            \ 'K' : 'Kill-buffer!',
            \ 'i' : 'Invert-windows',
            \ 'd' : 'Directory-swap',
            \ 'n' : 'Normal-proportions',
            \ 'g' : 'Goyo-toggle',
            \ 'r' : 'Replace-search',
            \ 'x' : 'Xtex-preview',
            \ 'u' : 'Url-goto',
            \ 'l' : 'Line-comment',
            \ }

" Edit-buffers menu
nnoremap <leader>en :enew<bar> :Startify<CR>
nnoremap <leader>ek :new<bar> :Startify<CR>
nnoremap <leader>ej :belowright split<bar> :Startify<CR>
nnoremap <leader>eh :vnew<bar> :Startify<CR>
nnoremap <leader>el :belowright vsplit<bar> :Startify<CR>
let g:which_key_map['e'] = { 'name' : '+Edit-buffers',
            \ 'n' : 'New-fullwindow',
            \ 'j' : 'Split-down',
            \ 'k' : 'Split-up',
            \ 'h' : 'Split-left',
            \ 'l' : 'Split-right',
            \ }

" Hop-buffers menu
nnoremap <leader>hj <C-w><S-j>
nnoremap <leader>hk <C-w><S-k>
nnoremap <leader>hh <C-w><S-h>
nnoremap <leader>hl <C-w><S-l>
let g:which_key_map['h'] = { 'name' : '+Hop-buffers',
            \ 'j' : 'Move-down',
            \ 'k' : 'Move-up',
            \ 'h' : 'Move-left',
            \ 'l' : 'Move-right',
            \ }

" Change-root menu
nnoremap <leader><space>D :ChangeRoot<space>
nnoremap <leader><space>d :ChangeRootCurrent<CR>
nnoremap <leader><space>f :Root<CR>
let g:which_key_map[' '] = { 'name' : '+Change-root',
            \ 'D' : 'Custom-dir',
            \ 'd' : 'Current-dir',
            \ 'f' : 'Find-project',
            \ }

" Only-one menu
nnoremap <leader>os :only<CR>
nnoremap <leader>ob :%bdelete<bar> edit #<bar> normal `"<CR>
let g:which_key_map['o'] = { 'name' : '+Only-one',
            \ 's' : 'Split',
            \ 'b' : 'Buffer',
            \ }

" Sessions menu
nnoremap <leader>sl :SLoad<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sd :SDelete<CR>
nnoremap <leader>sq :SClose<CR>
let g:which_key_map['s'] = { 'name' : '+Sessions',
            \ 'l' : 'Load',
            \ 's' : 'Save',
            \ 'd' : 'Delete',
            \ 'q' : 'Quit',
            \ }

" Fzf menu
nnoremap <leader>fg :GFiles!?<CR>
nnoremap <leader>fb :Buffers!<CR>
nnoremap <leader>fw :Windows!<CR>
nnoremap <leader>fh :History!<CR>
nnoremap <leader>fH :History:!<CR>
nnoremap <leader>ff :Files!<CR>
nnoremap <leader>fF :GFiles!<CR>
nnoremap <leader>fc :BCommits!<CR>
nnoremap <leader>fC :Commits!<CR>
nnoremap <leader>fl :BLines!<CR>
nnoremap <leader>fL :Lines!<CR>
nnoremap <leader>fa :Ag!<CR>
nnoremap <leader>fr :Rg!<CR>
nnoremap <leader>fs :Colors!<CR>
nnoremap <leader>fm :Maps!<CR>
nnoremap <leader>f? :Commands!<CR>
nnoremap <leader>f/ :Locate!<space>
let g:which_key_map['f'] = { 'name' : '+Fzf',
            \ 'g' : 'Git-status',
            \ 'b' : 'Buffers',
            \ 'w' : 'Windows',
            \ 'h' : 'Files-history',
            \ 'H' : 'Command-history',
            \ 'f' : 'Files-cwd',
            \ 'F' : 'Files-repo',
            \ 'c' : 'Commits-buffer',
            \ 'C' : 'Commits-repo',
            \ 'l' : 'Lines-current',
            \ 'L' : 'Lines-all',
            \ 'a' : 'Silver-searcher',
            \ 'r' : 'Ripgrep',
            \ 's' : 'Color-schemes',
            \ 'm' : 'Mappings',
            \ '?' : 'Commands',
            \ '/' : 'Locate',
            \ }

" Ale menu
nmap <leader>aj <Plug>(ale_next_wrap)<bar> 'zz
nmap <leader>ak <Plug>(ale_previous_wrap)<bar> 'zz
let g:which_key_map['a'] = { 'name' : '+Ale',
            \ 'j' : 'Next-error',
            \ 'k' : 'Previous-error',
            \ }

" Coc menu
nmap <leader>cd <Plug>(coc-definition)
nmap <leader>cr <Plug>(coc-references)
let g:which_key_map['c'] = { 'name' : '+Coc',
            \ 'd' : 'Definitions',
            \ 'r' : 'References',
            \ }

" Jacket menu
map <leader>jj <esc>ysiw
vmap <leader>jj <S-s>
map <leader>js <esc>cs
map <leader>jd <esc>ds
let g:which_key_map['j'] = { 'name' : '+Jacket',
            \ 'j' : 'Word/Block',
            \ 's' : 'Substitute',
            \ 'd' : 'Delete',
            \ }

" Markdown-preview menu
nmap <leader>ma <Plug>MarkdownPreview
nmap <leader>md <Plug>MarkdownPreviewStop
nmap <leader>mt <Plug>MarkdownPreviewToggle
let g:which_key_map['m'] = { 'name' : '+Markdown-preview',
            \ 'a' : 'Activate-preview',
            \ 'd' : 'Deactivate-preview',
            \ 't' : 'Toggle-preview',
            \ }

" Vinwiki menu
nnoremap <leader>wb :<Plug>Vimwiki2HTMLBrowse<CR>
nnoremap <leader>wn :<Plug>VimwikiGoto<CR>
let g:which_key_map['w'] = { 'name' : '+Vimwiki',
            \ 'w' : 'Index-buffer',
            \ 't' : 'Index-tab',
            \ 's' : 'Index-select',
            \ 'i' : 'Diary-index',
            \ 'd' : 'Delete',
            \ 'r' : 'Rename',
            \ 'h' : 'Html-create',
            \ 'b' : 'Html-browse',
            \ 'n' : 'Goto',
            \ ' ' : {
               \ 'name' : '+Diary',
               \ 'i' : 'Generate-links',
               \ 'w' : 'Make-notes',
               \ 't' : 'Tabmake-notes',
               \ 'm' : 'Make-tomorrow',
               \ 'y' : 'Make-yesterday',
               \ },
            \ }

" Tablemode menu
let g:which_key_map['t'] = { 'name' : '+Tablemode',
            \ 'm' : 'Mode-toggle',
            \ 't' : 'Tableize',
            \ 'r' : 'Realign',
            \ 's' : 'Sort',
            \ '?' : 'echocell?',
            \ }

" Plugin-manager menu
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pd :PlugDiff<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>ps :PlugStatus<CR>
nnoremap <leader>pS :PlugSnapshot<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pU :PlugUpgrade<CR>
let g:which_key_map['p'] = { 'name' : '+Plugin-manager',
            \ 'c' : 'Clean',
            \ 'd' : 'Diff',
            \ 'i' : 'Install',
            \ 's' : 'Status',
            \ 'S' : 'Snapshot',
            \ 'u' : 'Update',
            \ 'U' : 'Upgrade',
            \ }

" View-options menu
nnoremap <leader>vw :setlocal wrap!<CR>
nnoremap <leader>vl :call <SID>long_line()<CR>
nnoremap <leader>vz <esc>ggVGgq<CR>
nnoremap <leader>vs :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>vh :set hlsearch! hlsearch?<CR>
map <leader>vc :let @/=''<CR>
let g:which_key_map['v'] = { 'name' : '+View-options',
            \ 'w' : 'Wrap-line',
            \ 'l' : 'Long-line',
            \ 'z' : 'Zip-text',
            \ 's' : 'Spelling-check',
            \ 'h' : 'Highlight-search',
            \ 'c' : 'Clear-search',
            \ }

" Custom-commands menu
nnoremap <leader>01 :!gradle build<CR>
nnoremap <leader>02 :!gradle run<CR>
nnoremap <leader>03 :w! \| !comp <c-r>%<CR><CR>
nnoremap <leader>04 :!opout <c-r>%<CR><CR>
let g:which_key_map['0'] = { 'name' : '+Custom-commands',
            \ '1' : 'Gradle-build',
            \ '2' : 'Gradle-run',
            \ '3' : 'Compile',
            \ '4' : 'Output',
            \ }

call which_key#register('<Space>', 'g:which_key_map')




"FUNCTIONS______________________________________________________________________

function! s:long_line()
    if (g:longline ==? 'none')
        let g:longline = 'all'
        setlocal virtualedit=all
    else
        let g:longline = 'none'
        setlocal virtualedit=
    endif
endfunction


function! s:goyo_enter()
    set nonumber norelativenumber
    set showmode
    set showcmd
    augroup numbertoggle
        autocmd!
    augroup END
    Limelight
endfunction


function! s:goyo_leave()
    set number relativenumber
    set noshowmode
    set noshowcmd
    Limelight!
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
    augroup END
endfunction


function! ToggleVExplorer()
    if exists('t:expl_buf_num')
        let expl_win_num = bufwinnr(t:expl_buf_num)
        let cur_win_num = winnr()
        if expl_win_num != -1
            while expl_win_num != cur_win_num
                exec 'wincmd w'
                let cur_win_num = winnr()
            endwhile
            close
        endif
        unlet t:expl_buf_num
    else
        Vexplore
        let t:expl_buf_num = bufnr('%')
    endif
endfunction

