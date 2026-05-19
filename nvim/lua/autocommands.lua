-- [[ Basic Autocommands ]]

---- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

---- auto resize splits when the terminal's window is resized
vim.api.nvim_create_autocmd("VimResized", {
  command = "wincmd =",
})

---- no auto continue comments on new line
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("no_auto_comment", {}),
  callback = function()
    vim.opt_local.formatoptions:remove { "c", "r", "o" }
  end,
})

---- syntax highlighting for dotenv files
vim.api.nvim_create_autocmd("BufRead", {
  group = vim.api.nvim_create_augroup("dotenv_ft", { clear = true }),
  pattern = { ".env", ".env.*" },
  callback = function()
    vim.bo.filetype = "dosini"
  end,
})

---- Settings for Markdown files
local md_group = vim.api.nvim_create_augroup("MarkdownMode", { clear = true })

-- Save birthtime BEFORE saving *.md
vim.api.nvim_create_autocmd("BufWritePre", { -- BEFORE saving!
  pattern = "*.md",
  group = md_group,
  callback = function(ev)
    local filename = vim.fn.expand(ev.file)
    -- Сохраняем birthtime ДО изменения
    vim.g.birthtime = vim.fn.system("stat -f %SB -t '%m/%d/%Y %H:%M:%S' '" .. filename .. "'")
    vim.g.birthtime = vim.g.birthtime:gsub("\n", "")
    vim.g.current_file = filename
  end,
})

-- Load birthtime AFTER saving *.md
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.md",
  group = md_group,
  callback = function()
    if vim.g.birthtime and vim.g.current_file then
      vim.fn.system("SetFile -d '" .. vim.g.birthtime .. "' '" .. vim.g.current_file .. "'")
      vim.g.birthtime = nil -- очищаем
      vim.g.current_file = nil
    end
  end,
})

local function md_mode()
  vim.opt.laststatus = 0 -- Markdown: hide statusline
  vim.opt.signcolumn = "no"
  vim.opt.number = false
  vim.opt.relativenumber = false
end

local function normal_mode()
  vim.opt.laststatus = 2
  vim.opt.signcolumn = "yes"
  vim.opt.number = true
  vim.opt.relativenumber = true
end

-- Remove mini.statusline if opens *.md
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  group = md_group,
  callback = function()
    --
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  pattern = "*.md",
  group = md_group,
  callback = md_mode, -- Load md-mode on buffer focus
})

vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave" }, {
  pattern = "*.md",
  group = md_group,
  callback = normal_mode, -- Disable md-mode on buffer unfocus
})
