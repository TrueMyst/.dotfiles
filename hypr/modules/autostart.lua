------------------------
--      AUTOSTART     --
------------------------

hl.on("hyprland.start", function()
	-- Noctalia Shell
	hl.exec_cmd("noctalia")

	-- Polkit Agent
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Cursor
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 20")
end)
