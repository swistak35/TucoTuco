class Tuxlang
  #Main screen
  def gui_window
    @gui[:window] = Gtk::Window.new.set_size_request(640,480)
    @gui[:window].set_window_position("center")
    @gui[:window].set_default_size(640,480)
    @gui[:window].border_width=10
    @gui[:window].set_title("Tucotuco")
    @gui[:window].signal_connect('delete_event') { false }
    @gui[:window].signal_connect('destroy') { Gtk.main_quit }
  end
  
  def gui_window_update
    @gui[:window].show_all
  end

  def gui_surface
    @gui[:surface] = Gtk::Fixed.new
    @gui[:window].add @gui[:surface]
  end
  
  def gui_menu(labels)
    @gui[:menu]=Gtk::HBox.new.set_size_request(620,50)
    labels.each do |name|
      btt = Gtk::Button.new(name).set_size_request(103,55)
      btt.signal_connect("clicked") { eval name.downcase }
      @gui[:menu].pack_start_defaults(btt)
    end
    @gui[:surface].put(@gui[:menu],0,420)
  end
  
  def gui_content
    @gui[:content] = Gtk::Fixed.new
  end
  
  def gui_content_reset
    @gui[:content].destroy if !@gui[:content].destroyed?
    @gui[:content] = Gtk::Fixed.new.set_size_request(620,400)
    @gui[:surface].put(@gui[:content],0,0)
  end
end
