-- Demo for a hello work using Gtk, Granite and Handy

import Gtk, Granite, Handy from require "lgi"

Handy.init!

window = Gtk.Window {
    title: "Moonscript GTK"
    default_width: 400
    default_height: 300
    on_destroy: Gtk.main_quit
}

accel_label = Granite.AccelLabel {
    label: "Hello World"
}

titlebar = Handy.TitleBar {}
headerbar = Handy.HeaderBar {}

headerbar\set_title "Moonscript GTK Handy"
titlebar\add headerbar

window\set_titlebar titlebar
window\add accel_label

window\show_all!
Gtk.main!
