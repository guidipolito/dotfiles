local exec = vim.api.nvim_exec -- execute Vimscript
local set = vim.opt -- global options
local cmd = vim.cmd -- execute Vim commands

set.showmode = false

-- =================
-- Colorscheme
-- =================
vim.g.aurora_transparent = 1
cmd[[colorscheme tokyonight-night]]

-- =================
-- Neovide
-- =================
vim.g.guifont = "FantasqueSansMono\\ Nerd\\ Font"
vim.g.fontsize = 11
vim.g.updateFont = function()
    vim.cmd("set guifont="..vim.g.guifont .. ':h' .. vim.g.fontsize)
end
vim.g.updateFont()
vim.g.neovide_refresh_rate=75
vim.g.neovide_transparency=0.95
vim.g.neovide_no_idle=false
vim.g.neovide_fullscreen=false
vim.g.neovide_cursor_animation_length=0.04
vim.g.neovide_cursor_trail_sizeh=0.4
vim.g.neovide_cursor_antialiasing=true
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_opacity=200.0
vim.g.neovide_cursor_vfx_particle_lifetime=1.2
vim.g.neovide_cursor_vfx_particle_density=190.0
vim.g.neovide_cursor_vfx_particle_speed=13.0
vim.g.neovide_cursor_vfx_particle_phase=1.5
vim.g.neovide_cursor_vfx_particle_curl=1.25
set.foldmethod="indent"

-- =================
-- Vim opts
-- =================
set.termguicolors = true -- Enable GUI colors for the terminal to get truecolor
set.list = false -- show whitespace
set.listchars = {
    nbsp = '⦸', -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
    extends = '»', -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
    precedes = '«', -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
    tab = '▷─', -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
    trail = '•', -- BULLET (U+2022, UTF-8: E2 80 A2)
    space = ' '
}
vim.opt.termguicolors = true

set.fillchars = {
    diff = '∙', -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
    eob = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
    fold = '·', -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
    vert = ' ' -- remove ugly vertical lines on window division
}
set.undofile = true
set.undodir = vim.fn.stdpath("config") .. "/undo"
set.clipboard = set.clipboard + "unnamedplus" -- copy & paste
set.wrap = false -- don't automatically wrap on load
set.showmatch = true -- show the matching part of the pair for [] {} and ()
set.cursorline = true -- highlight current line
set.number = true -- show line numbers
set.relativenumber = true -- show relative line number
set.incsearch = true -- incremental search
set.hlsearch = false -- highlighted search results
set.ignorecase = true -- ignore case sensetive while searching
set.smartcase = true
set.scrolloff = 1 -- when scrolling, keep cursor 1 lines away from screen border
set.sidescrolloff = 2 -- keep 30 columns visible left and right of the cursor at all times
set.backspace = 'indent,start,eol' -- make backspace behave like normal again
set.mouse = "a"  		-- turn on mouse interaction
set.updatetime = 500 -- CursorHold interval
set.expandtab = true
set.softtabstop = 2
-- set.textwidth = 100
set.shiftwidth = 2 -- spaces per tab (when shifting), when using the >> or << commands, shift lines by 4 spaces
set.tabstop = 2 -- spaces per tab
set.smarttab = true -- <tab>/<BS> indent/dedent in leading whitespace
set.autoindent = true -- maintain indent of current line
set.shiftround = true
set.splitbelow = true -- open horizontal splits below current window
set.splitright = true -- open vertical splits to the right of the current window
set.laststatus = 2 -- always show status line
-- set.colorcolumn = "79"        -- vertical word limit line

set.hidden = true -- allows you to hide buffers with unsaved changes without being prompted
set.inccommand = 'split' -- live preview of :s results
set.shell = 'zsh' -- shell to use for `!`, `:!`, `system()` etc.
-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500, on_visual=true}
  augroup end
]], false)


-- patterns to ignore during file-navigation
set.wildignore = set.wildignore + '*.o,*.rej,*.so'


-- faster scrolling
set.lazyredraw = true

-- completion options
set.completeopt = 'menuone,noselect,noinsert'

-- 4 spaces for selected filetypes
cmd([[
    autocmd FileType xml,html,xhtml,css,scss,javascript,lua,dart,php,vue, setlocal shiftwidth=4 tabstop=4
    autocmd FileType php,  setlocal autoindent smartindent
]])



-- json
cmd(
    [[ au BufEnter *.json set ai expandtab shiftwidth=2 tabstop=2 sta fo=croql ]])

cmd(
    [[
        au FileType latex,tex,plaintex set wrap linebreak
        au FileType dashboard set foldlevel=200
    ]])

