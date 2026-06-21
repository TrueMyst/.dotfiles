--------------------
--      INPUT     --
--------------------

hl.config({
	input = {
		-- Keyboard
		kb_layout = "us",
		repeat_rate = 30,
		repeat_delay = 300,

		-- Mouse
		scroll_button_lock = true,

		-- Touchpad
		touchpad = {
			natural_scroll = true,
			middle_button_emulation = true,
		},
	},
})

----------------------
--      MONITOR     --
----------------------

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
})
