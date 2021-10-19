U = {}
-- local colors = require("startup.config").colors
local colors = {
  background = "#1f2227",
  heading_fg = "#009900",
  tools_fg = "#009900",
}

function U.spaces(amount)
  return string.rep(" ", amount)
end

function U.default_header()
  local header = {
    "                                          /$$              ",
    "                                         |__/              ",
    " /$$$$$$$   /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ",
    "| $$__  $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$",
    "| $$  \\ $$| $$$$$$$$| $$  \\ $$ \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
    "| $$  | $$| $$_____/| $$  | $$  \\  $$$/  | $$| $$ | $$ | $$",
    "| $$  | $$|  $$$$$$$|  $$$$$$/   \\  $/   | $$| $$ | $$ | $$",
    "|__/  |__/ \\_______/ \\______/     \\_/    |__/|__/ |__/ |__/",
  }
  return header
end

function U.get_oldfiles(amount)
  local oldfiles = { " " }
  local oldfiles_raw = vim.fn.execute "oldfiles"
  local oldfiles_amount = 0
  for file in oldfiles_raw:gmatch "[^\n]+" do
    if oldfiles_amount >= amount then
      break
    end
    table.insert(oldfiles, (string.sub(file, 4, -1)))
    oldfiles_amount = oldfiles_amount + 1
  end
  return oldfiles
end

function U.get_oldfiles_directory(amount)
  local oldfiles = { " " }
  local oldfiles_raw = vim.fn.execute "oldfiles"
  local oldfiles_amount = 0
  local directory = vim.api.nvim_exec([[!pwd]], true)
  directory = string.sub(directory, 9, -2)
  for file in oldfiles_raw:gmatch(directory .. "[^\n]+") do
    if oldfiles_amount >= amount then
      break
    end
    table.insert(oldfiles, (string.sub(file, 1, -1)))
    oldfiles_amount = oldfiles_amount + 1
  end
  return oldfiles
end

function U.longest_line(lines)
  local longest = 0
  for _, line in ipairs(lines) do
    if vim.fn.strdisplaywidth(line) > longest then
      longest = vim.fn.strdisplaywidth(line)
    end
  end
  return longest
end

function U.create_hls()
  vim.cmd("hi StartupHeading guifg=" .. colors.heading_fg)
  vim.cmd("hi StartupTools guifg=" .. colors.tools_fg)
end

function U.set_buf_options()
  vim.api.nvim_buf_set_option(0, "bufhidden", "wipe")
  vim.api.nvim_buf_set_option(0, "buftype", "nofile")
  vim.cmd [[set nowrap]]
  vim.api.nvim_buf_set_option(0, "filetype", "startup")
  vim.api.nvim_buf_set_option(0, "swapfile", false)
  vim.cmd [[setlocal nonu nornu]]
end

return U
