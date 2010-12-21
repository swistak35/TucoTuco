class Tuxlang
  #Print "About" Window, Fuck yeah, info about me ; )
  def about
    description = %q{
    <b>Tuxlang</b> version 0.1 alpha
    Created by: Rafał "Świstak35" Łasocha
    E-mail: tuxlang@swistak35.com
    
    Translators: Rafał "Świstak35" Łasocha (English), Rafał "Świstak35" Łasocha (Polish),
    
    
    
    }
    about_gui(description)
  end
  
  def about_gui(description)
    gui_content_reset
    gui_about_main(description)
    gui_window_update
  end
end
