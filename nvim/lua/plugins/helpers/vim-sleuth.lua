-- Detect tabstop and shiftwidth automatically

return {
  'tpope/vim-sleuth',
  event = { 'BufReadPost', 'BufNewFile' }, -- Load after your file content
}
