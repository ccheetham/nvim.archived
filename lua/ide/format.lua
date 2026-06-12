vim.pack.add { github 'stevearc/conform.nvim' }

local conform = require('conform')
conform.setup {
  notify_on_error = false,
  formatters = {
    shfmt = {
      prepend_args = { '-i', '2', '-ci', '-sr' }
    }
  },
  formatters_by_ft = {
    sh = { 'shfmt' },
    bash = { 'shfmt' },
    zsh = { 'shfmt' }
  },
  format_on_save = function (bufnr)
    local enabled_fts = { bash = true, c = true, cpp = true, json = true, lua = true, sh = true, zsh = true }
    if enabled_fts[vim.bo[bufnr].filetype] then
      return { timeout_ms = 500 }
    else
      return nil
    end
  end,
  default_format_opts = {
    lsp_format = 'fallback'
  },

  vim.keymap.set({ 'n', 'v' }, '<leader>f', function ()
    conform.format { async = true }
  end, { desc = '[f]ormat buffer' }
  )
}
