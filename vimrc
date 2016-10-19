""
"" Basic Setup
""

set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
set t_Co=256          " Use 256 colors in terminal
set mouse=a           " Enable mouse
set laststatus=2      " Always show the statusbar
set ai                " Auto indentattion
set cc=100            " Marks 100 chars column
set cursorline        " Highlight current line
set showcmd           " Show introduced command
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set title             " Show current filename in terminal title


""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode


""
"" List chars
""

set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen


""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter


""
"" Persistent undo
""

set undofile                  " save undo's after file closes
set undodir=$HOME/.vim/undo   " where to save undo histories
set undolevels=1000           " how many undos
set undoreload=10000          " number of lines to save for undo


""
"" Wild settings
""

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.


""
"" Leader
""
let mapleader=","


""
"" Pathogen
""

" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'indent-line')

execute pathogen#infect()


""
"" Theme & colors
""

" available: molokai | solarized | base16-railscasts | github | vimbrant | seoul256 | despacio
colorscheme despacio


""
"" NERDTree
""

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


""
"" NERDTree GIT
""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


""
"" Lightline status line
""
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'absolutepath', 'modified' ]
      \   ]
      \ },
      \ 'component': {
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }


"
"" Indent Lines
"
let g:indentLine_enabled = 1


""
"" Syntax
""
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *Jakefile set filetype=javascript


""
"" Syntastic
""
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"

" configure checkers
let g:syntastic_ruby_checkers=['mri', 'rubocop']


"
"" Markdown Syntax
"
let g:vim_markdown_folding_disabled = 1         " disable folding
let g:vim_markdown_conceal = 0                  " disable conceal (show [link text](link url) as just link text)
let g:vim_markdown_no_default_key_mappings = 1  " disable default key mappings
let g:vim_markdown_frontmatter = 1              " enable highlight of YAML front matter
let g:vim_markdown_toml_frontmatter = 1         " enable highlight of TOML front matter
let g:vim_markdown_json_frontmatter = 1         " enable highlight of JSON front matter

"
"" JSON syntax
"
let g:vim_json_syntax_conceal = 0   " diable concealing


"
"" Key Mappings
"
nmap <leader>ig :IndentLinesToggle<CR>
nmap <C-e> :NERDTree<CR>
