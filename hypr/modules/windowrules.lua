----------------------------
--      WINDOWS RULES     --
----------------------------

-- Emoji Picker
hl.window_rule({
	match = {
		title = "Smile",
	},
	float = true,
})

-- Volume Control
hl.window_rule({
	match = {
		title = "Volume Control",
	},
	center = true,
	float = true,
	size = { "(monitor_w*0.60)", "(monitor_h*0.75)" },
})

-- Screen Sharing
hl.window_rule({
	match = {
		class = "hyprland-share-picker",
	},
	float = true,
	size = { "(monitor_w*0.60)", "(monitor_h*0.75)" },
})

-- Picture-in-Picture
hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	float = true,
	size = { "(monitor_w*0.25)", "(monitor_h*0.25)" },
	move = { "(monitor_w*0.73)", "(monitor_h*0.72)" },
})

-- File Picker Dialogs
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(Library)(.*)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(.*)(wants to save)$" }, center = true, float = true })
hl.window_rule({ match = { title = "^(.*)(wants to open)$" }, center = true, float = true })
