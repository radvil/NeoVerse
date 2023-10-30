return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    show_help = false,
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
    },
    window = {
      border = vim.g.neo_transparent and "rounded" or "none",
      padding = vim.g.neo_transparent and { 0, 0, 0, 0 } or { 1, 2, 1, 2 },
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = vim.g.neovide and "+ " or "🔸",
    },
    disable = {
      buftypes = { "terminal" },
      filetypes = {
        "DiffviewFiles",
        "NeogitStatus",
        "Dashboard",
        "dashboard",
        "MundoDiff",
        "NvimTree",
        "neo-tree",
        "Outline",
        "prompt",
        "Mundo",
        "alpha",
        "help",
        "dbui",
        "edgy",
        "dirbuf",
        "fugitive",
        "fugitiveblame",
        "gitcommit",
        "Trouble",
        "alpha",
        "help",
        "qf",
      },
    },
    triggers = {
      "<leader>",
      "g",
      "s",
      "`",
      '"',
      "'",
      "[",
      "]",
      "z",
    },
    triggers_nowait = {
      "`",
      "'",
      '"',
      "g`",
      "g'",
      "z=",
      "s",
    },
    defaults = {
      mode = { "n", "x" },
      ["g"] = { name = "Go" },
      ["z"] = { name = "Folds" },
      ["]"] = { name = "Next" },
      ["["] = { name = "Prev" },
      ["<Leader>/"] = { name = "telescope" },
      ["<Leader>x"] = { name = "diagnostic" },
      ["<Leader>b"] = { name = "buffer" },
      ["<leader>c"] = { name = "code" },
      ["<Leader>w"] = { name = "window" },
      ["<Leader>m"] = { name = "miscellaneous" },
      ["<Leader>s"] = { name = "spectre search" },
      ["<Leader>S"] = { name = "session" },
      ["<Leader>f"] = { name = "float" },
      ["<Leader>g"] = { name = "git" },
      ["<Leader>u"] = { name = "toggle" },
      ["<Leader>t"] = { name = "terminal" },
    },
  },

  config = function(_, opts)
    require("which-key").setup(opts)
    require("which-key").register(opts.defaults)
  end,
}
