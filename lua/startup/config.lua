local settings = {
  -- every line should be same width without escaped \
  header = {
    "                                          /$$              ",
    "                                         |__/              ",
    " /$$$$$$$   /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ",
    "| $$__  $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$",
    "| $$  \\ $$| $$$$$$$$| $$  \\ $$ \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
    "| $$  | $$| $$_____/| $$  | $$  \\  $$$/  | $$| $$ | $$ | $$",
    "| $$  | $$|  $$$$$$$|  $$$$$$/   \\  $/   | $$| $$ | $$ | $$",
    "|__/  |__/ \\_______/ \\______/     \\_/    |__/|__/ |__/ |__/",
  },
  -- name which will be displayed and command
  tools = {
    [" Find File"] = { "Telescope find_files", "<leader>ff" },
    [" Find Word"] = { "Telescope live_grep", "<leader>lg" },
    [" Recent Files"] = { "Telescope oldfiles", "<leader>of" },
    [" File Browser"] = { "Telescope file_browser", "<leader>fb" },
    [" Config Files"] = {
      'lua require("telescope.builtin").find_files({cwd="~/.config"})',
      "<leader>cf",
    },
    [" Colorschemes"] = { "Telescope colorscheme", "<leader>cs" },
    [" New File"] = { "lua require'startup'.new_file()", "<leader>nf" },
    ["ﲉ Help Files"] = { "Telescope help_tags", "<leader>fh" },
  },
  options = {
    align = "center", -- center or padding
    mapping_names = true,
    padding = 5, -- only used if align padding
  },
  colors = {
    background = "#1f2227",
    heading_fg = "#009900",
    tools_fg = "#009900",
  },
}

return settings