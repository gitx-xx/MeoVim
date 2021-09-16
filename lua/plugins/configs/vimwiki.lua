-- vimwiki https://github.com/vimwiki/vimwiki
Keys = {} -- strings/numbers in lua tables suck
Keys['all_maps'] = 1
Keys['global'] = 0
Keys['headers'] = 1
Keys['text_objs'] = 1
Keys['table_format'] = 0
Keys['table_mappings'] = 0
Keys['lists'] = 1
Keys['links'] = 0
Keys['html'] = 0
Keys['mouse'] = 1
vim.g.vimwiki_key_mappings = Keys
vim.g.vimwiki_global_ext = 1
vim.g.vimwiki_filetypes = {'markdown'}
vim.g.vimwiki_list = {{path = '~/notes', syntax = 'markdown', ext = '.md'}}
