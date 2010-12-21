class Tuxlang
  def gui_intro_main
    intro = Gtk::Image.new("static/logo_proj.png")
    @gui[:content].put(intro,0,0)
  end
end
