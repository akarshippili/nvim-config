return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "gopls" },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("gopls")
    end,
  },
}
