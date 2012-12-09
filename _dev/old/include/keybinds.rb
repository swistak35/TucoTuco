class Tuxlang
  def keybinds
    description = %q{
    Exercise 'input':
    Enter (Return) - Accept
    
    Exercise 'mean-name':
    1,2,3,4 - buttons
    
    }
    keybinds_gui description
  end
  
  def keybinds_gui(description)
    gui_content_reset
    gui_keybinds_main description
    gui_window_update
  end
end
