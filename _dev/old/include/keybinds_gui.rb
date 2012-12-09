class Tuxlang 
  def gui_keybinds_main(description)
    @gui[:keybinds_text] = Gtk::Label.new.set_markup description
    @gui[:content].put @gui[:keybinds_text], 0, 0
  end
end
