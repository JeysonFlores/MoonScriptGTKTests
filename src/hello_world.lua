local Gtk, Granite, Handy
do
  local _obj_0 = require("lgi")
  Gtk, Granite, Handy = _obj_0.Gtk, _obj_0.Granite, _obj_0.Handy
end
Handy.init()
local window = Gtk.Window({
  title = "Moonscript GTK",
  default_width = 400,
  default_height = 300,
  on_destroy = Gtk.main_quit
})
local accel_label = Granite.AccelLabel({
  label = "Hello World"
})
local titlebar = Handy.TitleBar({ })
local headerbar = Handy.HeaderBar({ })
headerbar:set_title("Moonscript GTK Handy")
titlebar:add(headerbar)
window:set_titlebar(titlebar)
window:add(accel_label)
window:show_all()
return Gtk.main()
