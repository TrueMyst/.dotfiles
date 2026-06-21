--------------------
--      MISC      --
--------------------

hl.config({
	misc = {
		-- 🙂‍↔️👎️
		disable_hyprland_logo = true,
		disable_splash_rendering = true,

		-- DPMS
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,

		-- Animate resize & dragging
		animate_manual_resizes = false,
		animate_mouse_windowdragging = true,

		-- Disable middle-paste
		middle_click_paste = false,
	},

	xwayland = {
		force_zero_scaling = true,
	},

	ecosystem = {
		no_donation_nag = true,
	},
})
