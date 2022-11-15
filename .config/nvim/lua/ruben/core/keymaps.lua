vim.g.mapleader = " "

local keymap = vim.keymap

-- jvim tree
keymap.set("n", "sf", ":NvimTreeToggle<CR>")

-- disable highlighted search
keymap.set("n", "<leader>no", ":noh<CR>")

-- move between windows
keymap.set("n", "<C-j>", "<C-W>j")
keymap.set("n", "<C-k>", "<C-W>k")
keymap.set("n", "<C-h>", "<C-W>h")
keymap.set("n", "<C-l>", "<C-W>l")

-- move up/down with auto center
-- old maps
-- keymap.set("n", "L", "Lzz")
-- keymap.set("n", "H", "Hzz")
-- new maps
keymap.set("n", "L", "<C-d>zz")
keymap.set("n", "H", "<C-u>zz")

-- splits
keymap.set("n", "<leader>sv", ":vs<CR>") -- split windows vertical
keymap.set("n", "<leader>sh", ":sv<CR>") -- split windows horizontal
keymap.set("n", "<leader>se", "<C-w>=") -- make windows equal width

-- resize windows
keymap.set("n", "<C-w><right>", "<C-w>5>")
keymap.set("n", "<C-w><left>", "<C-w>5<")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- paste and copy from system clipboard
keymap.set("v", "<leader><space>y", "\"+y");
keymap.set({ "n", "v" }, "<leader><space>p", "\"+p");

-- neoclide coc
-- local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- confirm
-- keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- scroll through the options
-- keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
-- keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
