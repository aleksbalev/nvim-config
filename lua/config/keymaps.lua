-- better up/down
vim.keymap.set(
  { "n", "x" },
  "j",
  "v:count == 0 ? 'gj' : 'j'",
  { expr = true, silent = true }
)
vim.keymap.set(
  { "n", "x" },
  "k",
  "v:count == 0 ? 'gk' : 'k'",
  { expr = true, silent = true }
)

-- Move selected code up/down with Alt + K/J
vim.keymap.set(
  "v",
  "J",
  ":m '>+1<cr>gv=gv",
  { noremap = true, desc = "Move highlighted code down" }
)
vim.keymap.set(
  "v",
  "K",
  ":m '<-2<cr>gv=gv",
  { noremap = true, desc = "Move highlighted code down" }
)

-- Perusing code faster with K and J
vim.keymap.set("n", "K", "5k", { noremap = true, desc = "Up faster" })
vim.keymap.set("n", "J", "5j", { noremap = true, desc = "Down faster" })

-- Remap K and J
vim.keymap.set(
  { "n", "v" },
  "<leader>k",
  "K",
  { noremap = true, desc = "Keyword" }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>j",
  "J",
  { noremap = true, desc = "Join lines" }
)

-- Open file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file tree" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set(
  "n",
  "<C-h>",
  "<C-w>h",
  { desc = "Go to left window", remap = true }
)
vim.keymap.set(
  "n",
  "<C-j>",
  "<C-w>j",
  { desc = "Go to lower window", remap = true }
)
vim.keymap.set(
  "n",
  "<C-k>",
  "<C-w>k",
  { desc = "Go to upper window", remap = true }
)
vim.keymap.set(
  "n",
  "<C-l>",
  "<C-w>l",
  { desc = "Go to right window", remap = true }
)

-- Resize window using <ctrl> arrow keys
vim.keymap.set(
  "n",
  "<C-Up>",
  "<cmd>resize +2<cr>",
  { desc = "Increase window height" }
)
vim.keymap.set(
  "n",
  "<C-Down>",
  "<cmd>resize -2<cr>",
  { desc = "Decrease window height" }
)
vim.keymap.set(
  "n",
  "<C-Left>",
  "<cmd>vertical resize -2<cr>",
  { desc = "Decrease window width" }
)
vim.keymap.set(
  "n",
  "<C-Right>",
  "<cmd>vertical resize +2<cr>",
  { desc = "Increase window width" }
)

-- When navigating code with n-N and <C-d>-<C-u> keys hold cursore in the middle of display
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace selected code without saving it in to buffer
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without saving deleted" })

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("v", "<leader>Y", '"+Y')

-- prevent fast quitting
vim.keymap.set("n", "Q", "<nop>")

-- replace word under cursore with typed word
vim.keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "replace word" }
)

-- Open empty file to the chosen side
vim.keymap.set(
  "n",
  "<leader>fl",
  "<C-w>v<C-w>l<CR>",
  { desc = "Open empty file to the right" }
)
vim.keymap.set(
  "n",
  "<leader>fh",
  "<C-w>v<C-w>h<CR>",
  { desc = "Open empty file to the left" }
)
vim.keymap.set(
  "n",
  "<leader>fk",
  "<C-w>s<C-w>k<CR>",
  { desc = "Open empty file to the up" }
)
vim.keymap.set(
  "n",
  "<leader>fj",
  "<C-w>s<C-w>j<CR>",
  { desc = "Open empty file to the down" }
)

-- Open list of files in buffer and open one by chosen number
vim.keymap.set("n", "<leader>b", ":ls<CR>:b<space>")

-- Better escape using jk in insert and terminal mode
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l")

-- Better indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
