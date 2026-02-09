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

-- Сохраняем birthtime ДО записи для md‑файлов
vim.api.nvim_create_autocmd("BufWritePre", { -- ДО записи!
  pattern = "*.md",
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
  callback = function()
    if vim.g.birthtime and vim.g.current_file then
      vim.fn.system("SetFile -d '" .. vim.g.birthtime .. "' '" .. vim.g.current_file .. "'")
      vim.g.birthtime = nil -- очищаем
      vim.g.current_file = nil
    end
  end,
})
