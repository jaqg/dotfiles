" ---------------------------------------
" =============== Python ===============
" ---------------------------------------

" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

" Compile and execute (with <leader>+<leader>) python documents
	"autocmd FileType python nnoremap <leader><leader> :w \| :silent exec "!python %" <CR>
  	autocmd FileType python nnoremap <leader><leader> :w \| :!python % <CR>
  	autocmd FileType python nnoremap <leader>v :silent exec "!zathura %:r.pdf &" <CR>
	autocmd FileType python nnoremap <leader>q :QuickRun <CR>

" ---------------------------------------
" =============== Fortran ===============
" ---------------------------------------

" Compile (with <leader> + c), execute (with <leader> + x) or/and do both (with <leader> + <leader>) fortran documents
	autocmd FileType fortran nnoremap <leader>c :w \| :silent exec "!gfortran -o %:r %" <CR>
	autocmd FileType fortran nnoremap <leader>v :w \| :!gfortran -o %:r % <CR>
	autocmd FileType fortran nnoremap <leader>x :!./%:r <CR>
	autocmd FileType fortran nnoremap <leader><leader> :w \| !gfortran -o %:r % <CR> \| :!./%:r <CR>
    "autocmd FileType fortran nnoremap <leader>t :w \| :vnew term://fish<CR> \| :call jobsend(1, "gfortran -o %:r % <CR> \| :!./%:r <CR>")
	autocmd FileType fortran nnoremap <leader>l :w \| !gfortran -L/usr/local/lib/ -o %:r % -llapack -lblas <CR> \| :!./%:r <CR>
	autocmd FileType fortran nnoremap <leader>q :QuickRun

" ---------------------------------------
" =============== Latex ===============
" ---------------------------------------

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler "<c-r>%"<CR>


" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !latexmk -c %

" Open my bibliography file in split
	map <leader>b :vsp<space>$BIB<CR>
	map <leader>r :vsp<space>$REFER<CR>
