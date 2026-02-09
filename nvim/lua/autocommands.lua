-- [[ Basic Autocommands ]]

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Настройки для Markdown файлов
local md_group = vim.api.nvim_create_augroup("MarkdownMode", { clear = true })

-- Сохраняем birthtime ДО записи для md‑файлов
vim.api.nvim_create_autocmd("BufWritePre", { -- ДО записи!
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

-- Применяем birthtime ПОСЛЕ записи для md‑файлов
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
  vim.opt.laststatus = 0 -- Markdown: скрыть statusline
  vim.opt.showmode = true
  vim.b.ministatusline_disable = true
  vim.opt.signcolumn = "no"
  vim.opt.number = false
  vim.opt.relativenumber = false
end

local function normal_mode()
  vim.opt.laststatus = 2
  vim.opt.showmode = false
  vim.b.ministatusline_disable = false
  vim.opt.signcolumn = "yes"
  vim.opt.number = true
  vim.opt.relativenumber = true
end

-- Убрать mini.statusline если открыт файл MD
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
  callback = md_mode, -- Включить md-режим при фокусе
})

vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave" }, {
  pattern = "*.md",
  group = md_group,
  callback = normal_mode, -- Выключить при уходе фокуса
})
