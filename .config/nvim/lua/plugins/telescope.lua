return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-bibtex.nvim",
      "debugloop/telescope-undo.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-tree/nvim-web-devicons",
      "nvim-telescope/telescope-ui-select.nvim"
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")

      -- Keymap configurations
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

      telescope.setup({
        defaults = {
          path_display = { "truncate " },
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-c>"] = actions.close,
              ["<Down>"] = actions.move_selection_next,
              ["<Up>"] = actions.move_selection_previous,
              ["<CR>"] = actions.select_default,
              ["<C-u>"] = actions.preview_scrolling_up,
              ["<C-d>"] = actions.preview_scrolling_down,
              ["<PageUp>"] = actions.results_scrolling_up,
              ["<PageDown>"] = actions.results_scrolling_down,
              ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
              ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
              ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
              ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
            n = {
              ["<esc>"] = actions.close,
              ["<CR>"] = actions.select_default,
              ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
              ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
              ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
              ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
              ["j"] = actions.move_selection_next,
              ["k"] = actions.move_selection_previous,
              ["K"] = actions.move_to_top,
              ["J"] = actions.move_to_bottom,
              ["<Down>"] = actions.move_selection_next,
              ["<Up>"] = actions.move_selection_previous,
              ["gg"] = actions.move_to_top,
              ["G"] = actions.move_to_bottom,
              ["<C-u>"] = actions.preview_scrolling_up,
              ["<C-d>"] = actions.preview_scrolling_down,
              ["<PageUp>"] = actions.results_scrolling_up,
              ["<PageDown>"] = actions.results_scrolling_down,
              ["?"] = actions.which_key,
            },
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
          undo = {
            mappings = {
              i = {
                ["<C-a>"] = require("telescope-undo.actions").yank_additions,
                ["<C-d>"] = require("telescope-undo.actions").yank_deletions,
                ["<C-u>"] = require("telescope-undo.actions").restore,
              },
              n = {
                ["y"] = require("telescope-undo.actions").yank_additions,
                ["Y"] = require("telescope-undo.actions").yank_deletions,
                ["u"] = require("telescope-undo.actions").restore,
              },
            },
          },
          bibtex = {
            depth = 1,
            global_files = { '~/texmf/bibtex/bib/Zotero.bib' },
            search_keys = { 'author', 'year', 'title' },
            citation_format = '{{author}} ({{year}}), {{title}}.',
            citation_trim_firstname = true,
            citation_max_auth = 2,
            custom_formats = {
              { id = 'citet', cite_maker = '\\citet{%s}' }
            },
            format = 'citet',
            context = true,
            context_fallback = true,
            wrap = false,
          },
        },
      })

      -- Load extensions
      telescope.load_extension("fzf")
      telescope.load_extension("yank_history")
      telescope.load_extension("bibtex")
      telescope.load_extension("lazygit")
      telescope.load_extension("ui-select")
    end,
  },
}
