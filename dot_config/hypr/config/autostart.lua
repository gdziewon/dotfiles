-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function ()
    local services = {
        "dbus-update-activation-environment --systemd --all",
        "noctalia",
        "xhost +SI:localuser:root",
        "hypridle",


        "pipewire",
        "wireplumber",
        "pipewire-pulse",
    }

    for _, cmd in ipairs(services) do
        hl.exec_cmd(cmd)
    end
end)
