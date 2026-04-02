return {
	'tamton-aquib/zone.nvim',
	config = function ()
		require("zone").setup({
			-- style = "vanish",
			after = 60,
		})
	end
}
