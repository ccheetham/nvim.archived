vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  virtual_text = not vim.g.diag_beneath_line, -- diag at end of line
  virtual_lines = vim.g.diag_beneath_line,    -- diag beneath line

  jump = {
    on_jump = function (_, bufnr)
      vim.diagnostic.open_float { bufnr = bufnr, scope = 'cursor', focus = false }
    end
  }
}

require(submod(..., 'treesitter'))
require(submod(..., 'lsp'))
require(submod(..., 'format'))
