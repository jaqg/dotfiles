"  ____ _____
" |  _ \_   _|  Derek Taylor (DistroTube)
" | | | || |    http://www.youtube.com/c/DistroTube
" | |_| || |    http://www.gitlab.com/dwt1/
" |____/ |_|
"
" A customized init.vim for neovim (https://neovim.io/)

set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader =","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

"{{ The Basics }}
    Plug 'gmarik/Vundle.vim'                           " Vundle
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'plasticboy/vim-markdown'                     " Markdown basics
    Plug 'iamcco/markdown-preview.nvim',
    Plug 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    Plug 'vifm/vifm.vim'                               " Vifm
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Productivity }}
    Plug 'vimwiki/vimwiki'                             " VimWiki
    Plug 'jreybert/vimagit'                            " Magit-like plugin for vim
"{{ Tim Pope Plugins }}
    Plug 'tpope/vim-surround'                          " Change surrounding marks
    Plug 'tpope/vim-commentary'                        " Comment multiple lines
"{{ Syntax Highlighting and Colors }}
    Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plug 'vim-python/python-syntax'                    " Python highlighting
    Plug 'dag/vim-fish'                                " Fish shell highlighting
    Plug 'ap/vim-css-color'                            " Color previews for CSS
    Plug 'junegunn/limelight.vim'                      " Highlight current line
"{{ ColorSchemes }}
    Plug 'morhetz/gruvbox'                             " Gruvbox colorscheme
    Plug 'ciaranm/inkpot'                              " Inkpot colorscheme
    Plug 'rakr/vim-one'                                " Vim-One colorscheme
    Plug 'sonph/onehalf', { 'rtp': 'vim' }             " Onehalf colorscheme
    Plug 'w0ng/vim-hybrid'
"{{ Iceberg }}
    Plug 'cocopon/iceberg.vim'                         " Iceberg colorscheme
    Plug 'cocopon/pgmnt.vim'                           " Build iceberg colorscheme
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
"{{ Latex }}
    Plug 'lervag/vimtex'
        let g:tex_flavor = 'latex'
        let g:vimtex_view_method ='zathura'
        let g:vimtex_quickfix_mode = 0
    	" let g:vimtex_compiler_progname = 'nvr'
    	let g:vimtex_compiler_progname = 'latexmk'
        let g:vimtex_compiler_latexmk = {
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
    "Plug 'KeitaNakamura/tex-conceal.vim'
    "    set conceallevel=2
    "    let g:tex_conceal='abdmg'
    "    hi Conceal ctermbg=none
    "Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"{{ Snippets }}
    Plug 'sirver/ultisnips'
        let g:UltiSnipsExpandTrigger = '<tab>'
        let g:UltiSnipsJumpForwardTrigger = '<tab>'
        let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
        let g:UltiSnipsListSnippets="<c-u>"



call plug#end()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open

set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set scrolloff=7
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
"syntax enable
let g:rehash256 = 1
set hlsearch!
" toggle search highlighting with <F3>
nnoremap <F3> :set hlsearch!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Backup Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set nobackup                    " No auto backups
" set noswapfile                  " No swap
set backup                      " Enable auto backups
set swapfile                    " Enable swap

" {{{ Undo settings
	set undofile                     " Save undo's after file closes
	set undolevels=1000              " How many undos
	set undoreload=10000             " number of lines to save for undo
	set undodir=~/.config/nvim/_undo         " where to save undo histories
	set backupdir=~/.config/nvim/_backup/    " where to put backup files.
	set directory=~/.config/nvim/_swap/      " where to put swap files.
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Enabling Fortran syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ensure correct highlighting for
" Fortran free-form source code
" and turn syntax highlighting on
" ver :help fortran
let fortran_free_source=1
let fortran_do_enddo=1
"let fortran_have_tabs=1
let fortran_fold=1
let fortran_more_precise=1
syntax on
" Make vim echo commands as they
" are being entered.
"set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap ESC to ii
:imap ii <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Carga el esquema de colores. Opciones:
" *mis_colores.vim
" *iceberg.vim
" *dt_colors.vim
if filereadable(expand("~/.config/nvim/colors/mis_colores.vim"))
  source ~/.config/nvim/colors/mis_colores.vim
endif
" if filereadable(expand("~/.config/nvim/colors/dt_colors.vim"))
"   source ~/.config/nvim/colors/dt_colors.vim
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Instant-Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0         " Turns off auto preview
let g:instant_markdown_browser = "surf"      " Uses surf for preview
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://fish<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fix Sizing Bug With Alacritty Terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=SauceCodePro\ Nerd\ Font:h15
"set guifont=Mononoki\ Nerd\ Font:h15
"set guifont=JetBrains\ Mono:h15

"let g:neovide_transparency=0.95

" Add some space around the cursor when moving it near the borders of the screen
	set sidescrolloff=1
" Redraw the screen a bit less (helps when editing ruby files)
	set lazyredraw
" ctrl q quits and saves, ctrl s saves, ctrl w saves without warnings
	nnoremap <C-q> <Esc>:q!<CR>
	nnoremap <C-w> <Esc>:w<CR>
	nnoremap <C-s> <Esc>:wq<CR>

" Make it so that long lines wrap smartly
    set breakindent
    let &showbreak=repeat(' ', 3)
    set linebreak

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
	autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
    highlight! link DiffText MatchParen
endif

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
		"set showcmd      " show uncompleted commands
        set noshowcmd    " not show uncompleted commands
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <leader>sb :call ToggleHiddenAll()<CR>

" Function for toggling highlight to 80 columns
nnoremap <silent><F7> :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction

" Press F6 to toggle color column
nnoremap <silent><F6> :call <SID>ToggleColorColumn()<cr>
set colorcolumn=80
set tw=79       " width of document (used by gd)
"set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
let s:color_column_old = 0
function! s:ToggleColorColumn()
    if s:color_column_old == 0
        let s:color_column_old = &colorcolumn
        windo let &colorcolumn = 0
    else
        windo let &colorcolumn=s:color_column_old
        let s:color_column_old = 0
    endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faster movement with j and k
	nnoremap <C-k> 5k
	nnoremap <C-j> 5j

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conceal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
" let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
" let g:tex_conceal_frac=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Check spelling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setlocal spell
set spelllang=es_es
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=es_es<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Latex preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:livepreview_previewer = 'zathura'
"let g:livepreview_engine = 'latexmk'
"let g:livepreview_use_biber = 1
"let g:livepreview_cursorhold_recompile = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=dark \| set linebreak<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mis archivos de configuracion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Carga mi configuracion para lenguajes de programacion en ~/.config/nvim/languages.vim
if filereadable(expand("~/.config/nvim/languages.vim"))
  source ~/.config/nvim/languages.vim
endif
