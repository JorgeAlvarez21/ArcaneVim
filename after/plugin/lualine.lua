
-- Define the Conda component
local conda_component = vim.CONDA_DEFAULT_ENV 

require('lualine').setup {
    options = {
        icons_enabled = true,
        component_separators = '',
        section_separators = '',
        disabled_filetypes = {},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = conda_component,
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},

    },
}

