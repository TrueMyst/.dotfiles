------------------------
--      KEYBINDS      --
------------------------

-- Variables
local term = "foot"
local file = "nautilus"
local ipc = "noctalia msg"

-- Applications
hl.bind("SUPER + E", hl.dsp.exec_cmd(file))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(term))

-- Windows Management
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q", hl.dsp.exec_cmd("hyprctl kill"))

hl.bind("SUPER + W", function()
	hl.dispatch(hl.dsp.window.float())
	hl.dispatch(hl.dsp.window.resize({ x = 1000, y = 600 }))
end)

hl.bind("SUPER + F", hl.dsp.window.fullscreen({ "maximized", "toggle" }))

-- Mouse Drag and Resize
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

-- Window Navigation
for i = 1, 4 do
	local dir = { "l", "d", "u", "r" }
	local key = { "H", "J", "K", "L" }

	hl.bind("SUPER + " .. key[i], hl.dsp.focus({ direction = dir[i] })) -- Change Window Focus
	hl.bind("SUPER + SHIFT + " .. key[i], hl.dsp.window.swap({ direction = dir[i] })) -- Swap Windows
end

-- Cycle through windows in the current workspace
hl.bind("ALT + Tab", function()
	hl.dispatch(hl.dsp.window.cycle_next()) -- Cycle to the next window
	hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
end)

-- Workspaces
for i = 1, 10 do
	local key = i % 10

	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i })) -- Switch to different workspaces
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) -- Move windows to workspaces
end

-- Cycle through workspaces
hl.bind("SUPER + Z", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + X", hl.dsp.focus({ workspace = "e+1" }))

-- Playerctl
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"))

-- Volume Control
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })

-- Emoji Picker
hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd("smile"))

-- Noctalia
hl.bind("SUPER + COMMA", hl.dsp.exec_cmd(ipc .. " settings-toggle"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd(ipc .. " screenshot-region"))

hl.bind("SUPER + V", hl.dsp.exec_cmd(ipc .. " panel-toggle clipboard"))
hl.bind("SUPER + S", hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))
