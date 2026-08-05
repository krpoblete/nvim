return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      local capabilities =
          require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("intelephense", {
        capabilities = capabilities,
      })

      vim.lsp.enable({
        "lua_ls",
        "intelephense",
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          vim.keymap.set(
            "n",
            "gd",
            vim.lsp.buf.definition,
            { buffer = event.buf, desc = "Go to Definition" }
          )

          vim.keymap.set(
            "n",
            "cr",
            vim.lsp.buf.references,
            { buffer = event.buf, desc = "References" }
          )

          vim.keymap.set(
            "n",
            "gi",
            vim.lsp.buf.implementation,
            { buffer = event.buf, desc = "Implementation" }
          )

          vim.keymap.set(
            "n",
            "K",
            vim.lsp.buf.hover,
            { buffer = event.buf, desc = "Hover Documentation" }
          )

          vim.keymap.set(
            "n",
            "<leader>ca",
            vim.lsp.buf.code_action,
            { buffer = event.buf, desc = "Code Actions" }
          )

          vim.keymap.set(
            "n",
            "<leader>cr",
            vim.lsp.buf.rename,
            { buffer = event.buf, desc = "Rename Symbol" }
          )

          vim.keymap.set(
            "n",
            "<leader>xd",
            vim.diagnostic.open_float,
            { buffer = event.buf, desc = "Line Diagnostics" }
          )

          vim.keymap.set("n", "[d", function()
            vim.diagnostic.jump({ count = -1 })
          end, {
            buffer = event.buf,
            desc = "Previous Diagnostic",
          })

          vim.keymap.set("n", "]d", function()
            vim.diagnostic.jump({ count = 1 })
          end, {
            buffer = event.buf,
            desc = "Next Diagnostic",
          })
        end,
      })
    end,
  },
}
