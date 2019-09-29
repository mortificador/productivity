" Clang-format options
let g:clang_library_path='/usr/lib/llvm-3.9/lib/libclang-3.9.so.1'
let g:clang_format#style_options = { 
            \ "Standard" : "C++11",
            \ "IndentWidth" : 2,
            \ "UseTab" : "false",
            \ "AccessModifierOffset" : -2,
            \ "ColumnLimit" : 0 }

" Set vars
:let mapleader = " "

" show leading spaces
hi Conceal guibg=NONE ctermbg=NONE ctermfg=DarkGrey
autocmd BufWinEnter * setl conceallevel=2 concealcursor=nv
autocmd BufWinEnter * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·
autocmd BufReadPre * setl conceallevel=2 concealcursor=nv
autocmd BufReadPre * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·

" Mappings
:map <F2> :<C-u>ClangFormat<CR>
 " save, write and close 
nnoremap <leader>a :wq<cr>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<cr>

" Explore
nnoremap <leader>ee :Explore<cr>
nnoremap <leader>se :Sexplore<cr>
nnoremap <leader>ve :Vexplore<cr>

" Select 
nnoremap <leader>s V

" Go to end of file
nnoremap <leader>end :$<cr>

" Show number
nnoremap <leader>sn :set number<cr>

" search and replace
nnoremap <leader>sr :%s///g<LEFT><LEFT><LEFT>

" Avoid esc
inoremap jj <ESC>

" Abbreviations
:ia cppcomment /*<CR>*/<UP>
