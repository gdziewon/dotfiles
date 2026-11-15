-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--     output    = "MONITOR1",
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })
MONITORS = {
    {
        name     = "DP-1",
        mode     = "2560x1440@239.97",
        position = "0x0",
        scale    = "1",
        bitdepth = 10
    },
    {
        name     = "DP-2",
        mode     = "1920x1080@144.00",
        position = "2560x0",
        scale    = "1",
        bitdepth = 10
    }
}

PRIMARY_MONITOR = MONITORS[1].name

for _, mon in ipairs(MONITORS) do
    hl.monitor({
        output   = mon.name,
        mode     = mon.mode or "preferred",
        position = mon.position or "auto",
        scale    = mon.scale or "auto",
        bitdepth = mon.bitdepth or 8
    })
end
