return {
    "kurama622/clean-diagnostic",
    event = "LspAttach",
    opts = {
      border = "rounded",
      min_severity = 4,
      max_width = 90,
    },
    keys = {
      {
        "<leader>bd",
        "<cmd>lua require('clean-diagnostic').show()<cr>",
        desc = "show the diagnostic of the current line",
      },
    },
  }
