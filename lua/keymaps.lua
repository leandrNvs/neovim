local key = vim.keymap.set

key("i", "jk", "<Esc>")

key("n", "<leader>q", ":q<cr>")
key("n", "<leader>w", ":w<cr>")

key("n", "<leader>t", "cit")
key("n", "<leader>'", 'ci"')

key("n", "<tab>", ":tabnext<cr>")
key("n", "<S-tab>", ":tabprevious<cr>")

key("n", "n", "nzz")
key("n", "N", "Nzz")
