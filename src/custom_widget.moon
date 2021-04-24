-- Demo for a custom Window

import Gtk, Granite, Handy from require "lgi"

class CustomWindow
    new: =>
        @create!
        @window\show_all!

    create: =>
        @window = Gtk.Window {
            title: "Custom GTK Widget"
            default_width: 400
            default_height: 300
            on_destroy: Gtk.main_quit
        }

{:CustomWindow}

window = CustomWindow!

Gtk.main!

