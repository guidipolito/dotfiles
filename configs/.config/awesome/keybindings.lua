local awful = require "awful"
local naughty = require("naughty")
local gears = require("gears")
local modkey = "Mod4"
local alt = "Mod1"
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
local beautiful = require("beautiful")
local audioNotification = false
-- Mouse
root.buttons(gears.table.join(
    awful.button({}, 3, function() mymainmenu:toggle() end),
    awful.button({}, 4, awful.tag.viewnext),
    awful.button({}, 5, awful.tag.viewprev)
))

globalkeys = gears.table.join(
    awful.key({ modkey, }, "s", hotkeys_popup.show_help,
        { description = "show help", group = "awesome" }
    ),
    awful.key({ modkey, "Control" }, "h", awful.tag.viewprev,
        { description = "view previous", group = "tag" }
    ),

    awful.key({ modkey, "Control" }, "l", awful.tag.viewnext,
        { description = "view next", group = "tag" }
    ),

    awful.key({ modkey, }, "h",
        function() awful.client.focus.bydirection('left') end,
        { description = "focus left", group = "client" }
    ),

    awful.key({ modkey, }, "j",
        function() awful.client.focus.bydirection('down') end,
        { description = "focus down", group = "client" }
    ),

    awful.key({ modkey, }, "k",
        function()
            awful.client.focus.bydirection('up')
        end,
        { description = "focus up", group = "client" }
    ),

    awful.key({ modkey, }, "l",
        function()
            awful.client.focus.bydirection('right')
        end,
        { description = "focus right", group = "client" }
    ),

    awful.key({ modkey, }, "w", function() mymainmenu:show() end,
        { description = "show main menu", group = "awesome" }
    ),

    -- Layout manipulation
    awful.key({ modkey, "Shift" }, "j", function() awful.client.swap.byidx(1) end,
        { description = "swap with next client by index", group = "client" }
    ),
    awful.key({ modkey, "Shift" }, "k", function() awful.client.swap.byidx(-1) end,
        { description = "swap with previous client by index", group = "client" }
    ),
    awful.key({ modkey, "Control" }, "j", function() awful.screen.focus_relative(1) end,
        { description = "focus the next screen", group = "screen" }
    ),
    awful.key({ modkey, "Control" }, "k", function() awful.screen.focus_relative(-1) end,
        { description = "focus the previous screen", group = "screen" }
    ),
    awful.key({ modkey, }, "u", awful.client.urgent.jumpto,
        { description = "jump to urgent client", group = "client" }
    ),
    awful.key({ modkey, }, "Tab",
        function()
            awful.tag.history.restore()
        end,
        { description = "go back on tag", group = "client" }
    ),

    -- Standard program
    awful.key({ modkey, }, "Return", function() awful.spawn(terminal) end,
        { description = "open a terminal", group = "launcher" }
    ),
    awful.key({ modkey, "Control" }, "r", awesome.restart,
        { description = "reload awesome", group = "awesome" }
    ),
    awful.key({ modkey, "Shift" }, "q", awesome.quit,
        { description = "quit awesome", group = "awesome" }
    ),
    awful.key({ modkey, "Shift" }, "l", function() awful.tag.incmwfact(0.05) end,
        { description = "increase master width factor", group = "layout" }
    ),
    awful.key({ modkey, "Shift" }, "h", function() awful.tag.incmwfact(-0.05) end,
        { description = "decrease master width factor", group = "layout" }
    ),
    awful.key({ modkey, alt }, "h", function() awful.tag.incnmaster(1, nil, true) end,
        { description = "increase the number of master clients", group = "layout" }
    ),
    awful.key({ modkey, alt }, "l", function() awful.tag.incnmaster(-1, nil, true) end,
        { description = "decrease the number of master clients", group = "layout" }
    ),
    awful.key({ modkey, }, "space", function() awful.layout.inc(1) end,
        { description = "select next", group = "layout" }
    ),

    awful.key({ modkey, "Control" }, "n",
        function()
            local c = awful.client.restore()
            -- Focus restored client
            if c then
                c:emit_signal(
                    "request::activate", "key.unminimize", { raise = true }
                )
            end
        end,
        { description = "restore minimized", group = "client" }
    ),

    -- Prompt
    awful.key({ modkey }, "r", function() awful.screen.focused().mypromptbox:run() end,
        { description = "run prompt", group = "launcher" }
    ),

    awful.key({ modkey }, "x",
        function()
            awful.prompt.run {
                prompt       = "Run Lua code: ",
                textbox      = awful.screen.focused().mypromptbox.widget,
                exe_callback = awful.util.eval,
                history_path = awful.util.get_cache_dir() .. "/history_eval"
            }
        end,
        { description = "lua execute prompt", group = "awesome" }
    ),
    -- Menubar
    awful.key({ modkey }, "p", function() menubar.show() end,
        { description = "show the menubar", group = "launcher" }
    ),

    -- App launchers
    awful.key({ modkey }, "b",
        function() awful.spawn.with_shell("firefox") end,
        { description = "Firefox", group = "apps" }
    ),
    awful.key({ }, "Print",
        function() awful.spawn.with_shell("flameshot gui") end,
        { description = "Flameshot", group = "apps" }
    ),
    awful.key({ modkey, "Control" }, "p",
        function() awful.spawn.with_shell("gpick -p") end,
        { description = "Color picker", group = "apps" }
    ),
    awful.key({ modkey }, "v",
        function() awful.spawn.with_shell("copyq show") end,
        { description = "Clipboard manager (copyq)", group = "apps" }
    ),
    awful.key({ modkey, "Shift" }, "f",
        function() awful.spawn.with_shell("thunar") end,
        { description = "Thunar", group = "apps" }
    ),

    awful.key({}, "XF86AudioRaiseVolume",
        function()
            awful.spawn.with_shell("pamixer --increase 5")
            awful.spawn.easy_async_with_shell("pamixer --get-volume", function(o) 
                audioNotification = naughty.notify({ title = o }) 
            end)
        end,
        { description = "increase audio", group = "awesome" }
    ),
    awful.key({}, "XF86AudioLowerVolume",
        function()
            awful.spawn.with_shell("pamixer --decrease 5")
            awful.spawn.easy_async_with_shell("pamixer --get-volume", function(o) 
                audioNotification = naughty.notify({ title = o, timeout = 2  }) 
            end)
        end,
        { description = "increase audio", group = "awesome" }
    )
)

clientkeys = gears.table.join(
    awful.key({ modkey, }, "f",
        function(c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        { description = "toggle fullscreen", group = "client" }
    ),
    awful.key({ modkey, }, "q", function(c) c:kill() end,
        { description = "close", group = "client" }
    ),
    awful.key({ modkey, "Control" }, "space", awful.client.floating.toggle,
        { description = "toggle floating", group = "client" }
    ),
    awful.key({ modkey, "Control" }, "Return", function(c) c:swap(awful.client.getmaster()) end,
        { description = "move to master", group = "client" }
    ),
    awful.key({ modkey, }, "t", function(c) c.ontop = not c.ontop end,
        { description = "toggle keep on top", group = "client" }
    ),

    awful.key({ modkey, }, "n",
        function(c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end,
        { description = "minimize", group = "client" }
    )
)

-- Bind all key numbers to tags.
for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
            function()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    tag:view_only()
                end
            end,
            { description = "view tag #" .. i, group = "tag" }
        ),
        -- Toggle tag display.
        awful.key({ modkey, "Control" }, "#" .. i + 9,
            function()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    awful.tag.viewtoggle(tag)
                end
            end,
            { description = "toggle tag #" .. i, group = "tag" }
        ),
        -- Move client to tag.
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
            function()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:move_to_tag(tag)
                    end
                end
            end,
            { description = "move focused client to tag #" .. i, group = "tag" }
        ),
        -- Toggle tag on focused client.
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
            function()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:toggle_tag(tag)
                    end
                end
            end,
            { description = "toggle focused client on tag #" .. i, group = "tag" }
        )
    )
end

clientbuttons = gears.table.join(
    awful.button({}, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true }
        )
    end),
    awful.button({ modkey }, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true }
        )
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true }
        )
        awful.mouse.client.resize(c)
    end)
)

-- Bind screen keys 
-- set up keybindings based on existing monitors
for s in screen do
  for screen_name, _ in pairs(s.outputs) do
    if screen_name == "eDP-1" then
      globalkeys = awful.util.table.join(globalkeys,
          awful.key({ modkey }, "F1", function() awful.screen.focus(s) end))
    elseif screen_name == "HDMI-1" then
      globalkeys = awful.util.table.join(globalkeys,
          awful.key({modkey}, "F2", function() awful.screen.focus(s) end))
    end
  end
end

root.keys(globalkeys)
