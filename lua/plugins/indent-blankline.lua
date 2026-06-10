vim.pack.add { 'lukas-reineke/indent-blankline.nvim' }

local highlight = { 'IblHighlight' }
local hooks = require 'ibl.hooks'

hooks.register(hooks.type.HIGHLIGHT_SETUP, function ()
  vim.api.nvim_set_hl(0, 'IblHighlight', { fg = '#6080A0' })
end)
hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

require("ibl").setup({
  scope = {
    highlight = highlight,
    show_start = false,
    show_end = true
  }
})
