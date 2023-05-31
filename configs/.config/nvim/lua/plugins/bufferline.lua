require('bufferline').setup {
  options = {
    numbers = "ordinal",
    -- numbers = "none" | "ordinal" | "buffer_id" | "both",
    diagnostics = "nvim_lsp",
    separator_style = "thin",
    show_tab_indicators = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    icon = ' ',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
  }
}
