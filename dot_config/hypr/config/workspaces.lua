-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Add your workspace rules here. Increment the workspace number as you go. Do not have duplicate workspaces.

-- TODO: better rules?

for i, mon in ipairs(MONITORS) do
	local base = (i-1) * NUM_WPM
	hl.workspace_rule({ workspace = tostring(base+1), monitor = mon, default = true, persistent = true })
	hl.workspace_rule({ workspace = tostring(base+2), monitor = mon, default = true, persistent = true })
	hl.workspace_rule({ workspace = tostring(base+3), monitor = mon, default = true, persistent = true })
end

hl.workspace_rule({ workspace = "name:gaming", monitor = PRIMARY_MONITOR, default = true })

-- For other layouts such as scrolling, see example below
-- hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true, layout = scroling })
