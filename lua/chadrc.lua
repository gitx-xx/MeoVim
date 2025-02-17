-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
local M = {}
M.ui, M.options, M.plugin_status, M.mappings, M.custom = {}, {}, {}, {}, {}

-- non plugin ui configs, available without any plugins
M.ui = {
   italic_comments = true,
   theme = "onedark", -- use leader+th to see alternatives
   -- theme toggler, activate with leader+tt
   theme_toggler = {
      enabled = false,
      fav_themes = {
         "onedark",
         "one-light",
      },
   },
   transparency = true,
}

M.ui.plugin = {
   -- statusline related options
   statusline = {
      -- these are filetypes, not pattern matched
      -- if a filetype is present in shown, it will always show the statusline, irrespective of filetypes in hidden
      hidden = {},
      shown = {},
      -- default, round , slant , block , arrow
      style = "default",
   },
}

-- non plugin normal, available without any plugins
M.options = {
   clipboard = "unnamedplus",
   cmdheight = 1,
   copy_cut = true, -- copy cut text ( x key ), visual and normal mode
   copy_del = true, -- copy deleted text ( dd key ), visual and normal mode
   expandtab = true,
   hidden = true,
   ignorecase = true,
   insert_nav = true, -- navigation in insertmode
   mapleader = " ",
   mouse = "a",
   number = false,
   numberwidth = 2,
   relativenumber = false,
   permanent_undo = true,
   shiftwidth = 2,
   smartindent = true,
   tabstop = 8, -- Number of spaces that a <Tab> in the file counts for
   timeoutlen = 450,
   ruler = false,
   updatetime = 400,
   scrolloff = 999,
   sidescrolloff = 0,
   smartcase = true,
   shortmess = "I",
   linebreak = true,
   -- used for updater
   update_url = "https://github.com/NvChad/NvChad",
   update_branch = "main",
}

-- these are plugin related options
M.options.plugin = {
   autosave = false, -- autosave on changed text or insert mode leave
   -- timeout to be used for using escape with a key combination, see mappings.plugin.better_escape
   esc_insertmode_timeout = 300,
}

-- enable and disable plugins (false for disable)
M.plugin_status = {
   autosave = false, -- to autosave files
   blankline = false, -- beautified blank lines
   bufferline = true, -- buffer shown as tabs
   cheatsheet = true, -- fuzzy search your commands/keymappings
   colorizer = true,
   comment = true, -- universal commentor
   dashboard = false, -- a nice looking dashboard
   esc_insertmode = true, -- escape from insert mode using custom keys
   feline = false, -- statusline
   gitsigns = true, -- gitsigns in statusline
   lspsignature = true, -- lsp enhancements
   neoformat = true, -- universal formatter
   neoscroll = false, -- smooth scroll
   telescope_media = false, -- see media files in telescope picker
   -- truezen = true, -- no distraction mode for nvim
   -- vim_fugitive = true, -- git in nvim
   vim_matchup = true, -- % magic, match it but improved
}

-- mappings -- don't use a single keymap twice --
-- non plugin mappings
M.mappings = {
   -- close current focused buffer
   close_buffer = "<leader>x",
   copy_whole_file = "<C-a>", -- copy all contents of the current buffer
   -- navigation in insert mode, only if enabled in options
   insert_nav = {
      backward = "<C-h>",
      end_of_line = "<C-e>",
      forward = "<C-l>",
      next_line = "<C-k>",
      prev_line = "<C-j>",
      top_of_line = "<C-a>",
   },
   line_number_toggle = "<leader>n", -- show or hide line number
   new_buffer = "<S-t>", -- open a new buffer
   new_tab = "<C-t>b", -- open a new vim tab
   save_file = "<C-s>", -- save file using :w
   theme_toggler = "<leader>tt", -- for theme toggler, see in ui.theme_toggler

   -- terminal related mappings
   terminal = {
      -- multiple mappings can be given for esc_termmode and esc_hide_termmode
      -- get out of terminal mode
      esc_termmode = { "jk" }, -- multiple mappings allowed
      -- get out of terminal mode and hide it
      -- it does not close it, see pick_term mapping to see hidden terminals
      esc_hide_termmode = { "JK" }, -- multiple mappings allowed
      -- show hidden terminal buffers in a telescope picker
      pick_term = "<leader>W",
      new_horizontal = "<leader>h",
      new_vertical = "<leader>v",
      new_window = "<leader>w",
   },
   -- update nvchad from nvchad, chadness 101
   update_nvchad = "<leader>uu",
}

-- all plugins related mappings
-- to get short info about a plugin, see the respective string in plugin_status, if not present, then info here
M.mappings.plugin = {
   bufferline = {
      next_buffer = "<TAB>", -- next buffer
      prev_buffer = "<S-Tab>", -- previous buffer
      --better window movement
      moveLeft = "<C-h>",
      moveRight = "<C-l>",
      moveUp = "<C-k>",
      moveDown = "<C-j>",
   },
   chadsheet = {
      default_keys = "<leader>dk",
      user_keys = "<leader>uk",
   },
   comment = {
      toggle = "<leader>/", -- trigger comment on a single/selected lines/number prefix
   },
   dashboard = {
      bookmarks = "<leader>bm",
      new_file = "<leader>fn", -- basically create a new buffer
      open = "<leader>db", -- open dashboard
      session_load = "<leader>l", -- load a saved session
      session_save = "<leader>s", -- save a session
   },
   -- note: this is an edditional mapping to escape, escape key will still work
   better_escape = {
      esc_insertmode = { "jk" }, -- multiple mappings allowed
   },
   nvimtree = {
      toggle = {"<C-n>", "<leader>e"}, -- file manager
   },
   neoformat = {
      format = "<leader>fm",
   },
   telescope = {
      buffers = "<leader>fb",
      find_files = "<leader>ff",
      git_commits = "<leader>cm",
      git_status = "<leader>fg",
      help_tags = "<leader>fh",
      themes = "<leader>th",
   },
   telescope_media = {
      media_files = "<leader>fp",
   },
   truezen = { -- distraction free modes mapping, hide statusline, tabline, line numbers
      ataraxis_mode = "<leader>zz", -- center
      focus_mode = "<leader>zf",
      minimalistic_mode = "<leader>zm", -- as it is
   },
   vim_fugitive = {
      diff_get_2 = "<leader>gh",
      diff_get_3 = "<leader>gl",
      git = "<leader>gs",
      git_blame = "<leader>gb",
   },
}

-- user custom mappings
-- e.g: name = { "mode" , "keys" , "cmd" , "options"}
-- name: can be empty or something unique with repect to other custom mappings
--    { mode, key, cmd } or name = { mode, key, cmd }
-- mode: usage: mode or { mode1, mode2 }, multiple modes allowed, available modes => :h map-modes,
-- keys: multiple keys allowed, same synxtax as modes
-- cmd:  for vim commands, must use ':' at start and add <CR> at the end if want to execute
-- options: see :h nvim_set_keymap() opts section
M.custom.mappings = {
  -- {"n", " ", "<NOP>"}, -- disable space
  {"", 'B', '^'}, -- beginning of line
  {"", 'E', '$'}, -- end of line
  {"n", 'M', '`'}, -- bookmark
  {{"n", "v"}, "J", "12j"}, -- faster vertical movement
  {{"n", "v"}, "K", "12k"}, -- faster verstical movement
  -- better intenting
  {"v", ">", ">gv"},
  {"v", "<", "<gv"},
  -- buffers
  {"n", "H", ":BufferLineCyclePrev<CR>"}, -- prev buffer
  {"n", "L", ":BufferLineCycleNext<CR>"}, -- next buffer
  {"n", "<C-b>", ":e #<CR>"}, -- ?
  {"n", "<M-b>", ":BufferLinePick<CR>"}, -- pick buffer
  {"n", "<M-q>", ":CommentToggle<CR>"}, -- toggle line
  {"v", "<M-q>", ":CommentToggle<CR>gv"}, -- toggle block
  {"n", "S", ":HopPattern<CR>"}, -- toggle block
  {"n", "s", ":HopChar2<CR>"}, -- toggle block
  {"n", "<leader>h", ":Startify<CR>"},
  {"n", "<leader>r", ":RnvimrToggle<CR>"}, -- ranger
  {"n", "<M-w>", ":TZMinimalist<CR>"}, -- ranger
  {"n", "<M-e>", ":TZAtaraxis<CR>"}, -- zenmode
  {"n", "<leader>tn", ":setlocal number!<CR>"}, -- toggle number
  {"n", "<leader>tw", ":setlocal wrap!<CR>"}, -- toggle wrap
  {"n", "<leader>ts", ":setlocal spell!<CR>"}, -- toggle wrap
  {"n", "<leader>tm", ":TZMinimalist<CR>"}, -- toggle wrap
  {{"n", "i"}, "<C-y>", "<esc>:%y<CR>"}, -- copy buffer
  {"n", "<C-l>", ":nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>"}, -- better redraw
}

M.plugins = {
   lspconfig = {
      servers = {"html", "cssls", "tsserver"}
   },
}

return M
