-- Fill this array with actual monitors from hyprctl
-- this file isn't managed by chezmoi

MONITORS = {
    -- {
    --    name     = "eDP-1",
    --    mode     = "1600x900@60.00",
    --    position = "0x0",
    --    scale    = 1,
    --    bitdepth = 10,
    -- },
}

for _, mon in ipairs(MONITORS) do
    hl.monitor({
        output   = mon.name,
        mode     = mon.mode or "preferred",
        position = mon.position or "auto",
        scale    = mon.scale or "auto",
        bitdepth = mon.bitdepth or 8
    })
end

return MONITORS
