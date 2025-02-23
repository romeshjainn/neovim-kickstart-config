return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  build = function()
    require("noice").setup({})
  end,
  config = function()
    require("noice").setup({
      cmdline = {
        enabled = true, -- Enables the fancy command line
        view = "cmdline_popup", -- Pop-up style cmdline
      },
      messages = {
        enabled = true, -- Enables message notifications
      },
      popupmenu = {
        enabled = true, -- Enables Noice UI for command suggestions
      },
      presets = {
        command_palette = true, -- Enable command bar (cmdline)
        long_message_to_split = true, -- Show long messages in split
        lsp_doc_border = true, -- Add border around LSP hover docs
      },
    })
  end,
}
