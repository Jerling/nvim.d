" vimscript
"
" config.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" Personal config

colorscheme space-vim-dark
filetype plugin on

call coc#config('suggest', {'autoTrigger': 'trigger'})
call coc#config('snippets', {'textmateSnippetsRoots': [g:personal_dir.'/vssnipts']})
" call coc#config('template', {'templatesDirectory': g:personal_dir.'/templates'})
let g:coc_explorer_global_presets = {
\   'tasks': {
\      'root-uri': g:personal_dir.'/apps/tasks',
\      'position': 'floating',
\   },
\   'Blog': {
\      'root-uri': '~/data/blog/content/post',
\      'position': 'floating',
\   },
\   'snippets': {
\      'root-uri': g:personal_dir.'/vssnipts',
\      'position': 'floating',
\   },
\ }

let g:vimwiki_ext2syntax = {'.md': 'markdown',
			\ '.mkd': 'markdown',
			\ '.wiki': 'media'}
let g:vimwiki_list = [
			\{'path':g:personal_dir.'/apps/mywiki', 'ext':'md', 'path_html':'~/htmls',
			\ 'auto_toc': 1, 'auto_tags': 1, 'syntax': 'markdown',
			\ 'auto_diary_index': 1,
			\}
			\]

let g:asynctasks_extra_config = [g:personal_dir.'/apps/tasks/tasks.ini',
			\g:personal_dir.'/apps/tasks/life.ini']
" 另一个五笔输入法, 以免 vim-im 失效
let g:bx_im_wubi_used = 1

let g:mkdp_command_for_global = 1
let g:mkdp_open_to_the_world = 1
let g:mkdp_port = '8888'



" execute 'source' g:pack_path.'/pack/'.g:pack_name.'/opt/todo.txt-vim/ftdetect/todo.vim'
" let g:Todo_txt_prefix_creation_date = 1
" au filetype todo setlocal omnifunc=todo#Complete
let g:todo_txt_default = '~/todo/todo.txt'
let g:done_txt_default = '~/todo/done.txt'
