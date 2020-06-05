" vimscript
"
" keymap.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.

" Personal keymaps


nnoremap <silent><leader>hd vawy:lvimgrep!/\<C-R>0\C/gj$HOME/.nvim.d/doc/*/*<CR>:lopen<CR>
vnoremap <silent><leader>hd vawy:lvimgrep!/\<C-R>0\C/gj$HOME/.nvim.d/doc/*/*<CR>:lopen<CR>
nnoremap <silent><leader>hw vawy:lvimgrep!/\<C-R>0\C/gj$HOME/.local/share/nvim/site/pack/all/opt/bx_vimim_dict/plugin/*wubi.txt<CR>:lopen<CR>
vnoremap <silent><leader>hw vawy:lvimgrep!/\<C-R>0\C/gj$HOME/.config/nvim/doc/*/*<CR>:lopen<CR>

let g:which_key_map.h.d = 'help in doc'
let g:which_key_map.h.w = 'help wubi'

nnoremap <silent><leader>oh :Deol -command=htop<cr>
vnoremap <silent><leader>oh :Deol -command=htop<cr>
nnoremap <silent><leader>ob :Deol -command=w3m\ www.bing.com<cr>
vnoremap <silent><leader>ob :Deol -command=w3m\ www.bing.com<cr>
nnoremap <silent><leader>oB :Deol -command=w3m\ -B<cr>
vnoremap <silent><leader>oB :Deol -command=w3m\ -B<cr>

let g:which_key_map.o.h = 'open htop'
let g:which_key_map.o.b = 'open browser'
let g:which_key_map.o.B = 'open browser with bookmarks'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <C-j>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()
inoremap <expr><c-k> pumvisible() ? "\<C-p>" : "\<C-h>"

if exists('*complete_info')
  inoremap <expr> <C-CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <C-CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nnoremap <silent><localleader>ot :execute 'vs' g:todo_txt_default<cr>
vnoremap <silent><localleader>ot :execute 'vs' g:todo_txt_default<cr>
nnoremap <silent><localleader>od :execute 'split' g:done_txt_default<cr>
vnoremap <silent><localleader>od :execute 'split' g:done_txt_default<cr>
let g:which_key_map_local.o.t = 'open and edit todo.txt'
let g:which_key_map_local.o.d = 'open and view todo.txt'
