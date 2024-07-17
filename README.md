# nvim-random-id

A Neovim plugin to generate random human-readable IDs used for Inlang.

## Installation

```lua
require('lazy').setup({
  {
    "benjaminshawki/nvim-random-id",
    -- config = function()
    --   require('random_id').setup({
    --     adjectives = { "bright", "cheerful", "happy" },
    --     animals = { "cat", "dog", "elephant" },
    --     verbs = { "run", "jump", "swim" },
    --   })
    -- end,
    -- keys = {
    --   { "<leader>cg", function() _G.add_key_value_pair() end, desc = "Add key-value pair" },
    -- },
  },
})
