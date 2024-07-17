# nvim-random-id

A Neovim plugin to generate random human-readable IDs used for Inlang.

## Installation

```lua
require('lazy').setup({
  {
    "benjaminshawki/nvim-random-id",
    config = function()
      require('nvim-random-id').setup()
    end,
  },
})
```

or 

```lua
require('lazy').setup({
  {
    "benjaminshawki/nvim-random-id",
    config = function()
      require('nvim-random-id').setup({
        adjectives = { "bright", "cheerful", "happy" },
        animals = { "cat", "dog", "elephant" },
        verbs = { "run", "jump", "swim" },
        adverbs = { "quickly", "eagerly", "boldly" },
      })
    end,
    keys = {
      { "<leader>cg", function() _G.add_key_value_pair() end, desc = "Add key-value pair" },
    },
  },

  -- Other plugins...
})
```
