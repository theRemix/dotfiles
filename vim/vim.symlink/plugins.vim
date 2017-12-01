""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Interactive command execution
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
	\ 'do': 'yarn install',
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

" Fuzzy file, buffer, mru, tag, etc finder
" Plug 'ctrlpvim/ctrlp.vim'

" Unite. The interface to rule almost everything
" Plug 'Shougo/unite.vim'

" Most Recently Used
" Plug 'Shougo/neomru.vim'

" Neo-completion with cache
" Plug 'Shougo/neocomplete.vim'

" Code completion
" BROKEN!
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

" Tab completing
" Plug 'ajh17/VimCompletesMe'
" Plug 'maxboisvert/vim-simple-complete'

" Emacs's kill-ring for vim
" Plug 'maxbrunsfeld/vim-yankstack'

" Emmet for vim
Plug 'mattn/emmet-vim'

" Vim frontend for the Perl module Ack
" Plug 'mileszs/ack.vim'

" Silver searcher
Plug 'rking/ag.vim'

" Command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Edit every file in a quickfix list at the same time using ag
Plug 'Olical/vim-enmasse'

" BufExplorer quickly and easily switch between buffer
Plug 'jlanzarotta/bufexplorer'

" Tree explorer for vim.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Snippet files for various programming languages
Plug 'honza/vim-snippets'

" Syntax checking
Plug 'scrooloose/syntastic'

" Cache file automatically
Plug 'MarcWeber/vim-addon-mw-utils'

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Comment stuff out
Plug 'tpope/vim-commentary'

" Visually select larger regions of text using the same key combination
Plug 'terryma/vim-expand-region'

" Git wrapper
Plug 'tpope/vim-fugitive'

" LESS syntax highlighting
" Plug 'groenewege/vim-less'

" SCSS syntax highlighting
" Plug 'cakebaker/scss-syntax.vim'

" Markdown syntax highlighting
Plug 'plasticboy/vim-markdown'

" Enable repeating supported plugin maps
Plug 'tpope/vim-repeat'

" Ultimate snippet solution
Plug 'SirVer/ultisnips'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Display indention levels with vertical lines
Plug 'Yggdroot/indentLine'

" Tmux statusline generator with support for airline
Plug 'edkolev/tmuxline.vim'

" Typescript syntax highlighting
Plug 'leafgarland/typescript-vim'

" Undo history visualizer
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Preview colors in source code
Plug 'ap/vim-css-color'

" CSS3 syntax support
Plug 'hail2u/vim-css3-syntax'

" Vim Workspace Controller
Plug 'szw/vim-ctrlspace'
" let g:ctrlspace_default_mapping_key = '<C-@>'

" Vim motions on speed
Plug 'easymotion/vim-easymotion'

" Shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'

" Instant Markdown previews
" Requires npm -g install instant-markdown-d
Plug 'suan/vim-instant-markdown'

" Jade syntax highlighting
Plug 'digitaltoad/vim-jade'

" Javascript indentation and syntax support
Plug 'pangloss/vim-javascript'

" Enhanced javascript syntax
Plug 'jelera/vim-javascript-syntax'

" JSX support
Plug 'mxw/vim-jsx'

" Sublime Text style multiple selections
Plug 'terryma/vim-multiple-cursors'

" Mustache and handlebars mode for vim
Plug 'mustache/vim-mustache-handlebars'

" Paste in Vim with indentation adjusted to destination context
" Plug 'sickill/vim-pasta'

" Toggle, display and navigate marks
Plug 'kshenoy/vim-signature'

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Add filetype glyphs (icons)
Plug 'ryanoasis/vim-devicons'

" Zoom in/out of windows
Plug 'regedarek/ZoomWin'

" Search Dash from vim
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }

" Gotham colorscheme
Plug 'whatyouhide/vim-gotham'

" Haxe plugin
Plug 'jdonaldson/vaxe'

" Ctrl SF
Plug 'dyng/ctrlsf.vim'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Vim Go
Plug 'fatih/vim-go'

" Vim Erlang
Plug 'vim-erlang/vim-erlang-runtime'

" Vim TaskWarrior
Plug 'blindFS/vim-taskwarrior'

" Vim CoffeeScript
Plug 'kchmck/vim-coffee-script'

" Elm-Vim
Plug 'elmcast/elm-vim'

" Vim Brunch
Plug 'drichard/vim-brunch'

" Vim HardTim
Plug 'takac/vim-hardtime'

" Vim graphql
Plug 'jparise/vim-graphql'

" Codi
Plug 'metakirby5/codi.vim'

" Systemd syntax
Plug 'Matt-Deacalion/vim-systemd-syntax'

" Vue syntax
Plug 'posva/vim-vue'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN SPECIFC CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400


""""""""""""""""""""""""""""""
" Unite.vim
""""""""""""""""""""""""""""""

" Use the fuzzy matcher for everything
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#converter_default#use(['converter_relative_word'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" call unite#custom#source('file_mru,file_rec,file_rec/async', 'converters', 'converter_relative_word')

" call unite#custom#profile('default', 'context', {
"   \ 'cursor_line_highlight' : 'CursorLine',
"   \ 'start_insert': 1,
"   \ 'winheight': 10,
"   \ 'direction': 'botright',
"   \ })

" Set up some custom ignores
" call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
"   \ 'ignore_pattern', join([
"   \ '\.git/',
"   \ 'tmp/',
"   \ '.sass-cache',
"   \ 'node_modules/',
"   \ 'bower_components/',
"   \ 'dist/',
"   \ '.pyc',
"   \ ], '\|'))

" let g:unite_data_directory='~/.vim/.cache/unite'
" let g:unite_source_history_yank_enable=1
" let g:unite_source_rec_max_cache_files=5000
" let g:unite_source_file_mru_limit=200
" let g:unite_source_rec_async_command='ag --nocolor --nogroup --hidden -g ""'
" let g:unite_source_grep_command = 'ack'
" let g:unite_source_grep_default_opts = '-s -H --nocolor --nogroup --column'
" let g:unite_source_grep_recursive_opt = ''
" let g:unite_prompt='❯ '

" nnoremap <C-f> :<C-u>Unite -buffer-name=files file_mru file_rec/async:!<CR>
" nnoremap <leader>f :<C-u>Unite -no-split -no-resize -direction=topleft -buffer-name=mru file_mru<CR>
" map <leader>y :<C-u>Unite -no-start-insert history/yank<CR>
" nnoremap <leader>/ :<C-u>Unite grep:.<CR>

" Custom mappings for the unite buffer
" autocmd FileType unite call s:unite_keymaps()

" function! s:unite_keymaps()
"   " Enable navigation with control-j and control-k in insert mode
"   imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"   imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
" endfunction


""""""""""""""""""""""""""""""
" CTRL-P
""""""""""""""""""""""""""""""
" let g:ctrlp_working_path_mode = 'rw'
" let g:ctrlp_show_hidden = 1
" let g:ctrlp_max_height = 20

" let g:ctrlp_map = '<C-f>'
" map <C-b> :CtrlPBuffer<CR>

" let g:ctrlp_custom_ignore = 'public\|node_modules\|bower_components\|^\.DS_Store\|^\.git\|^\.coffee'

" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn|sass-cache|node_modules|bower_components)$',
"   \ 'file': '\v\.(png|jpg|jpeg|gif|DS_Store|pyc)$',
"   \ 'link': '',
"   \ }


" only show files that are not ignored by git
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '40%' }
" Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Search project files, respecting git ignore
nnoremap <silent> <C-f> :FZF<CR>
" Search all files, e.g. node_modules/
nnoremap <silent> <leader>af :call fzf#vim#files('',
      \ {'source': 'ag --hidden --ignore .git -f -g "" -u', 'down': '40%'})<CR>
" Search MRU buffers
nnoremap <silent> <leader>f :Buffers<CR>
nnoremap <silent> <leader>` :Marks<CR>

" [Tags] Command to generate tags file
" let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=node_modules --exclude=test'
nnoremap <silent> <leader>t :Tags<CR>

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.js.map$', '\.DS_Store$']
let g:NERDTreeWinSize=35
let g:NERDTreeDirArrowExpandable = '✦'
let g:NERDTreeDirArrowCollapsible = '✧'
map <C-d> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


""""""""""""""""""""""""""""""
" vim airline
""""""""""""""""""""""""""""""
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline_powerline_fonts = 1
if has("gui_running")
  let g:airline_theme="luna"
else
  let g:airline_theme="molokai"
endif

" Automatically truncate sections
let g:airline#extensions#default#section_truncate_width = {
  \ 'b': 100,
  \ 'x': 100,
  \ 'y': 105,
  \ 'z': 50,
  \ 'warning': 50,
  \ }

""""""""""""""""""""""""""""""
" yankstack
""""""""""""""""""""""""""""""

" Remove default key mappings
" let g:yankstack_map_keys = 0

" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" YouCompleteMe
""""""""""""""""""""""""""""""

" let g:ycm_semantic_triggers = {
"      \ 'elm' : ['.'],
"      \}


""""""""""""""""""""""""""""""
" vim-easymotion
""""""""""""""""""""""""""""""
map s <Plug>(easymotion-s)
map <leader>ss <Plug>(easymotion-s2)

" match lower & upper case
let g:EasyMotion_smartcase = 1

let g:EasyMotion_use_smartsign_us = 1

map <leader>l <Plug>(easymotion-lineforward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion


""""""""""""""""""""""""""""""
" vim-fugitive
""""""""""""""""""""""""""""""
map <leader>gg :GitGutterToggle<CR>
map <leader>gs :Gstatus<CR>
set diffopt+=vertical


""""""""""""""""""""""""""""""
" vim-instant-markdown
""""""""""""""""""""""""""""""
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0


""""""""""""""""""""""""""""""
" vim markdown
""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1


""""""""""""""""""""""""""""""
" vim jsx
""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0


""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
map <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 3
let g:undotree_SplitWidth = 35
let g:undotree_SetFocusWhenToggle = 1

if has("persistent_undo")
  set undodir='~/.undodir/'
  set undofile
endif


""""""""""""""""""""""""""""""
" ZoomWin
""""""""""""""""""""""""""""""
nnoremap <silent> <leader>z :ZoomWin<cr>

""""""""""""""""""""""""""""""
" CtrlSF
""""""""""""""""""""""""""""""
" Prompt CtrlSF using ALT+f
" nmap ƒ <Plug>CtrlSFPrompt
" vmap ƒ <Plug>CtrlSFVwordPath
nmap <silent> <leader>T <Plug>CtrlSFPrompt

" Toggle CtrlSF result display
" map † :CtrlSFToggle<CR>
map <silent> <leader>t :CtrlSFToggle<CR>

let g:ctrlsf_indent = 2

""""""""""""""""""""""""""""""
" HardTime
""""""""""""""""""""""""""""""
let g:hardtime_default_on = 0
let g:list_of_normal_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
" <UP> <DOWN> for autocomplete
let g:list_of_insert_keys = ["<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
let g:hardtime_showmsg = 1
" let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]
let g:hardtime_ignore_quickfix = 1
let g:hardtime_allow_different_key = 1


""""""""""""""""""""""""""""""
" Codi
""""""""""""""""""""""""""""""
let g:codi#aliases = {
                   \ 'javascript.jsx': 'javascript',
                   \ }
" let g:codi#interpreters = {
"                    \ 'javascript': {
"                        \ 'rightalign': 0,
"                        \ },
"                    \ }
