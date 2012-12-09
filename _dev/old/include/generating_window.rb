class Tuxlang
  def generating_window
    @gui={}
    gui_window #Creating main window
    gui_surface #Creating fixed surface
    labels = %w[Learning Exercises Results Database Options Exit]
    gui_menu(labels) #Generating bottom menu
    gui_content #Creating content area
    gui_content_reset
    gui_window_update
    intro #Displaying intro
  end
end
