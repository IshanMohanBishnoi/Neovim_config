vim.opt.number = true --line numbers
vim.opt.relativenumber = true --relative numberings
vim.opt.cursorline = true --highlighting the line where cursor is
vim.opt.guicursor = "" --makes fat cursor even in insert mode 

vim.g.netrw_banner = 0  -- removes the netrw banner

--making tab make sense in vim and beyond || not sure this will work or not || not permanent
vim.opt.tabstop  = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = false --no term gui colors


--keymapping
vim.g.mapleader = ' '
vim.keymap.set('i','jk','<Esc>',{desc ="jk for entering normal mode"})
vim.keymap.set('n','r','<C-r>',{desc="r for redoing undo just works good"})
vim.keymap.set('n',"<leader>fe",vim.cmd.Ex,{desc="for opening explorer"})
vim.keymap.set('n',"<leader>t",vim.cmd.term,{desc="for opening terminal in vim"})
vim.keymap.set('n',"<leader>pv",vim.cmd.MarkdownPreview,{desc="for previewing a markdown file."})
vim.keymap.set('n',"nh",vim.cmd.noh,{desc="stops highlighting of searched text"})
vim.keymap.set('t',"<A-k>",[[<C-\><C-n>]],{desc="for entering the normal mode in neovim terminal"})


--keybindigins for lsp

vim.keymap.set('n', '<leader>w', vim.diagnostic.open_float, { desc = "mapping for checking errors in diagnostics from lsp" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "mapping for code actions" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "mapping for go deffinition of stuf on which cursor is on" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "mapping for hover information about stuff on which cursor is on" })--lsp request for documentation


--copies the file path of the file currenlty opened or the path of the directory will work as  :!pwd when a file is not opened.

vim.keymap.set("n", "<leader>p", function()
  local dir = vim.fn.expand("%:p:h")
  if dir == "" then
    dir = vim.fn.getcwd()
  end
  vim.fn.setreg("+", dir)
end, { noremap = true, silent = true })


vim.keymap.set('n', '<A-Left>',  '<C-w><', { desc = 'Decrease window width' })
vim.keymap.set('n', '<A-Right>', '<C-w>>', { desc = 'Increase window width' })
vim.keymap.set('n', '<A-Up>',    '<C-w>+', { desc = 'Increase window height' })
vim.keymap.set('n', '<A-Down>',  '<C-w>-', { desc = 'Decrease window height' })
vim.keymap.set('n', '<leader>r', ':%s///gc<Left><Left><Left>', { desc = 'Search & replace in file (confirm each)' })
vim.keymap.set('n','<C-d>','<C-d>zz',{desc="for centering the view after half page down"})
vim.keymap.set('n','<C-u>','<C-u>zz',{desc="for centering the view after half page up"})

-- Split windows
vim.keymap.set("n", "<leader>wv", "<C-w>v", {desc="<leader>+v → vertical split"})
vim.keymap.set("n", "<leader>ws", "<C-w>s", {desc="<leader>+s → horizontal split"})

-- Window navigation
vim.keymap.set("n", "<leader>wh", "<C-w>h", {desc="<leader>+h → left"})
vim.keymap.set("n", "<leader>wj", "<C-w>j", {desc="<leader>+j → down"})
vim.keymap.set("n", "<leader>wk", "<C-w>k", {desc="<leader>+k → up"})
vim.keymap.set("n", "<leader>wl", "<C-w>l", {desc="<leader>+l → right"})
vim.keymap.set("n", "<leader>ww", "<C-w>w", {desc="<leader>+w → cycle windows"})
vim.keymap.set("n", "<leader>wo", "<C-w>o", {desc="<leader>+o → keep only current window"})

--having numbers on file explorer

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end,
})

