local M = {}

M.keys = {
  {
    "<leader>ui",
    ":IBLToggle<CR>",
    desc = "toggle » indentation guide",
  },
}

M.config = function(_, opts)
  ---@type ibl.config
  local defaults = {
    enabled = true,
    indent = {
      char = { "│", "»", "┊", "»" },
    },
    scope = {
      enabled = false,
    },
    exclude = {
      buftypes = { "teminal" },
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
        "git",
        "qf",

        -- popup
        "TelescopeResults",
        "TelescopePrompt",
        "neo-tree-popup",
        "DressingInput",
        "flash_prompt",
        "oil_preview",
        "cmp_menu",
        "WhichKey",
        "lspinfo",
        "notify",
        "noice",
        "mason",
        "lazy",
        "oil",
      },
    },
  }

  opts = vim.tbl_deep_extend("force", defaults, opts or {}) or defaults
  require("ibl").setup(opts)
end
return M
