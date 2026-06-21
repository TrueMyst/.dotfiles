------------------------
--      ANIMATION     --
------------------------

-- Animation Curves (Bezier)
hl.curve("smooth_accel", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("smooth_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })

hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("menu_accel", { type = "bezier", points = { { 0.38, 0.04 }, { 1, 0.07 } } })

-- Windows
hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "smooth_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "smooth_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "smooth_accel", style = "popin 60%" })

-- Layers
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "menu_decel" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "menu_accel" })

-- Fade
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "smooth_decel" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2, bezier = "menu_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2, bezier = "menu_accel" })

-- Border
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 7, bezier = "menu_decel", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "smooth_decel", style = "slidevert" })
