local options = require('smoothpurple.config').options

local variants = {
	main = {
		nc = '#16141f',
		base = '#191724',
		surface = '#1f1d2e',
		overlay = '#26233a',
		muted = '#6e6a86',
		subtle = '#908caa',
		text = '#e0def4',
		love = '#eb6f92',
		gold = '#f6c177',
		rose = '#ebbcba',
		pine = '#31748f',
		foam = '#9ccfd8',
		iris = '#c4a7e7',
		highlight_low = '#21202e',
		highlight_med = '#403d52',
		highlight_high = '#524f67',
		none = 'NONE',
	}
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == 'light' and variants.dawn
	or variants[options.dark_variant or 'main']
