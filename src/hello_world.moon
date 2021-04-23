import Gtk, Granite, Handy from require "lgi"

window = 0

window = Gtk.Window {
    title : "Moonscript GTK"
    default_width : 400
    default_height : 300
    on_destroy : Gtk.main_quit
}

accel_label = Granite.AccelLabel {
    label : "Hello World"
}

window:add(accel_label)

window:show_all()
Gtk.main()