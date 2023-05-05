

local t = require("telescope")
local z_utils = require("telescope._extensions.zoxide.utils")

t.load_extension('zoxide')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fr', builtin.git_files, {})
vim.keymap.set('n', '<leader>th', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

-- Configure the extension
t.setup({
  extensions = {
    zoxide = {
      prompt_title = "[ Walking on the shoulders of TJ ]",
      mappings = {
        default = {
          after_action = function(selection)
            print("Update to (" .. selection.z_score .. ") " .. selection.path)
          end
        },
        ["<C-s>"] = {
          before_action = function(selection) print("before C-s") end,
          action = function(selection)
            vim.cmd.edit(selection.path)
          end
        },
        ["<C-q>"] = { action = z_utils.create_basic_command("split") },
      },
    },
  },
    pickers = {
        colorscheme = {
          enable_preview = true
        }
      },
    repo = {
          list = {
            fd_opts = {
              "--no-ignore-vcs",
            },
            search_dirs = {
              "~/Documents/Projects",
              "~/Documents/JSProjects",
              "~/Documents/dev_projects",
              "~PycharmProjects/",

            },
          },
        },

})

t.load_extension("repo")


