local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
        },
        -- content = require("startup.headers").neovim_logo_header,
        -- content = require("startup.headers").hydra_header,
        -- highlight = "Error",
        highlight = "Title",
        default_color = "",
        oldfiles_amount = 0,
    },
    -- Random programming quote
    quote = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Quote",
        margin = 5,
        content = require("startup.functions").quote(),
        highlight = "Constant",
        default_color = "",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { "  Find File", "Telescope find_files", "<leader>ff" },
            -- { "󰍉 Find Word", "Telescope live_grep", "<leader>lg" },
            { "  Find Word", "Telescope live_grep", "<leader>lg" },
            { "  Recent Files", "Telescope oldfiles", "<leader>of" },
            -- { " File Browser", "Telescope file_browser", "<leader>fb" },
            { "  Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { "  New File", "lua require'startup'.new_file()", "<leader>nf" },
            { "  Config", "e ~/.config/nvim/", "F2" },
        },
        -- highlight = "String",
        highlight = "Normal",
        default_color = "",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        -- content = { "startup.nvim" },
        content = require("startup.functions").packer_plugins(),
        highlight = "Comment",
        default_color = "",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        -- paddings = { 1, 3, 3, 0 },
        paddings = { 4, 2, 2, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", "footer" },
    -- parts = { "header","quote", "body", "footer" },
}
return settings
