class Tuxlang
  #Display about text.
  def gui_about_main(description)
    @gui[:about_text] = Gtk::Label.new.set_markup description
    @gui[:content].put @gui[:about_text], 0, 0
  end
end
