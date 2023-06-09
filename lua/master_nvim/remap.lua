vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "5j")
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>tl", "<C-w>v<C-w>l:terminal<CR>")
vim.keymap.set("n", "<leader>tj", "<C-w>s<C-w>j:terminal<CR>10<C-w>-")

vim.keymap.set("n", "<leader>fl", "<C-w>v<C-w>l<CR>")
vim.keymap.set("n", "<leader>fh", "<C-w>v<C-w>h<CR>")
vim.keymap.set("n", "<leader>fk", "<C-w>s<C-w>k<CR>")
vim.keymap.set("n", "<leader>fj", "<C-w>s<C-w>j<CR>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>b", ":ls<CR>:b<space>")
