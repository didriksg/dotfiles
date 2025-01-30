return { 
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	keys = function() 
		local builtin = require('telescope.builtin');
		return { 
			{'<leader>pf', builtin.find_files, { desc = 'Telescope find files' }},
			{'<C-p>', builtin.git_files, { desc = 'Telescope find git files' }},
			{'<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep > ")}) end }
		}
	end
}
