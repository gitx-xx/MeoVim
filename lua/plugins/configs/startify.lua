
vim.g.startify_custom_header = {
  '   @@@  @@@ @@@  @@@ @@@ @@@@@@@@@@    ',
  '   @@@  @@@ @@@  @@@ @@@ @@@@@@@@@@    ',
  '   @@!@!@@@ @@!  @@@ @@! @@! @@! @@!   ',
}
vim.g.startify_disable_at_vimenter = 1
vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0
vim.g.startify_change_to_vcs_root = 0
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 0

  -- { 'type': 'files',     'header': ['   MRU']            },
vim.g.startify_lists = {
  { type = 'files', header = { "   Recent" } },
  -- { type = 'dir', header = { "   Current Directory "..vim.fn.getcwd()..":" } },
  { type = 'bookmarks', header = { '   Bookmarks' } }
}
vim.g.startify_bookmarks = {
  { s = '~/.config/nvim/lua/chadrc.lua'},
  { S = '~/.config/nvim/lua/plugins/configs/startify.lua'},
  { n = '~/notes/nvchad.md'},
  { c = '~/dev/tmp'},
  { r = '~/.config/ranger/rc.conf'},
  { a = '~/.config/alacritty/alacritty.yml'},
  { f = '~/.config/fish/config.fish'},
  { F = '~/.config/fish/conf.d/functions.fish'},
  { t = '~/notes/todo.md'},
  { l = '~/notes/linux-setup.md'},
}
