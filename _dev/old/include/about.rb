class Tuxlang
  #Print "About" Window, Fuck yeah, info about me ; )
  def about
    description = %q{
    <b>Tuxlang</b> version 0.1 alpha
    Created by: Rafal Swistak35 Lasocha
    E-mail: tuxlang@swistak35.com
    
    
    
    
    }
    about_gui description
  end
  
  #"About" window GUI.
  def about_gui(description)
    gui_content_reset
    gui_about_main description
    gui_window_update
  end
end
