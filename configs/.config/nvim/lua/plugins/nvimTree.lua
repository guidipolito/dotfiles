require("nvim-web-devicons").setup()
require("nvim-tree").setup({
  update_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})
