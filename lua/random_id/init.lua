local M = {}

-- Load the configuration
local config = require('random_id.config')

-- Function to generate a random human-readable ID
local function random_human_id()
	local adjectives = config.adjectives
	local animals = config.animals
	local verbs = config.verbs
	local adverbs = config.adverbs

	local id = string.format(
		"%s_%s_%s_%s",
		adjectives[math.random(#adjectives)],
		animals[math.random(#animals)],
		verbs[math.random(#verbs)],
		adverbs[math.random(#adverbs)],
	)
	return id
end

-- Function to generate a key-value pair and insert it into the buffer
function _G.add_key_value_pair()
	local key = random_human_id()
	local value = vim.fn.input("Enter value: ")
	local pair = string.format('"%s": "%s"', key, value)
	vim.api.nvim_put({ pair }, 'l', true, true)
end

-- Setup function to configure the plugin
function M.setup(user_config)
	config.setup(user_config)
	vim.api.nvim_set_keymap('n', '<leader>cg', ':lua add_key_value_pair()<CR>', { noremap = true, silent = true })
end

return M
