vim.lsp.config("yamlls", {
  settings = {
    yaml = {
      schemaStore = {
        enable = false, -- disable built-in store; we use SchemaStore.nvim
        url = ""
      }
    }
  }
})
vim.lsp.enable("yamlls")
