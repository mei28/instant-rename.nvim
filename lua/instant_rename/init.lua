-- Neovim Lua setup to mimic the cnoreabbrev behavior
local function s_abbreviation()
  local cmd_type = vim.fn.getcmdtype()
  local cmd_line = vim.fn.getcmdline()

  if cmd_type == ":" and cmd_line == "s" then
    -- Clear the current command line with <C-u> and replace it
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-u>%s///g<Left><Left>", true, true, true), "n", false)
  end
end

vim.api.nvim_create_autocmd("CmdlineChanged", {
  pattern = "*",
  callback = s_abbreviation
})
