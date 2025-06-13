-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return { -- install without yarn or npm
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.opt.rtp:prepend(vim.fn.stdpath 'data' .. '/lazy/markdown-preview.nvim')
    vim.fn['mkdp#util#install']()
  end,
}
