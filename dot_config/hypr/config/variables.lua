-- Hyprland default apps

TERMINAL     = "kitty"
FILE_MANAGER = "dolphin"
BROWSER      = "zen-browser"
MUSIC        = "spotifast"

require("config.monitors") -- TODO: maybe it should return list of monitors instead?
PRIMARY_MONITOR = MONITORS[1] and MONITORS[1].name
SECONDARY_MONITOR = MONITORS[2] and MONITORS[2].name

-- Workspaces
NUM_WPM = 3 -- Number of workspaces per monitor (Max 10)
