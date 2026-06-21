----------------------
--      GENERAL     --
----------------------

hl.config({
	general = {
		-- Gaps and Borders
		gaps_in = 2,
		gaps_out = 4,
		border_size = 2,

		col = {
			active_border = "rgb(adc6ff)",
			inactive_border = "rgb(212227)",
		},

		-- Snap
		snap = {
			enabled = true,
			border_overlap = true,
		},

		-- Layout
		layout = "dwindle",

		-- Tearing
		allow_tearing = true,
	},

	dwindle = {
		preserve_split = true,
		smart_resizing = false,
	},
})

----------------------
--    DECORATION    --
----------------------

hl.config({
	decoration = {
		-- Corners
		rounding = 8,
		rounding_power = 4,

		-- Dim
		dim_inactive = true,
		dim_strength = 0.05,

		-- Blur
		blur = {
			size = 4,
			passes = 2,
		},

		-- Shadow
		shadow = {
			range = 8,
			color = "rgba(00000080)",
		},
	},
})
