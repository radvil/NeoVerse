local M = {}

M.keys = {
  {
    "<Leader>bd",
    "<cmd>BD<cr>",
    desc = "buffer » delete",
  },
  {
    "<Leader>bf",
    "<cmd>BF<cr>",
    desc = "buffer » delete [force]",
  },
  {
    "<Leader>bD",
    "<cmd>BAD<cr>",
    desc = "buffer » delete all",
  },
  {
    "<Leader>bF",
    "<cmd>BAF<cr>",
    desc = "buffer » delete all [force]",
  },
}

M.init = function()
  vim.api.nvim_create_user_command("BD", function()
    require("mini.bufremove").delete(0, false)
  end, { desc = "delete current buffer" })

  vim.api.nvim_create_user_command("BAD", function()
    for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_is_loaded(bufnr) then
        require("mini.bufremove").delete(bufnr, false)
      end
    end
  end, { desc = "delete all buffers" })

  vim.api.nvim_create_user_command("BF", function()
    require("mini.bufremove").delete(0, true)
  end, { desc = "delete current buffer [force]" })

  vim.api.nvim_create_user_command("BAF", function()
    for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_is_loaded(bufnr) then
        require("mini.bufremove").delete(bufnr, true)
      end
    end
  end, { desc = "remove all buffers [force]" })
end

return M
