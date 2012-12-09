class Tuxlang
  #Various options...
  def options
    exercises = Dir.new('include').select{|file| file =~ /exercise/} - ["exercises.rb","exercises_gui.rb"]
    exercises.collect! {|exercise| exercise[8..-4]}
    options_gui(exercises)
  end
  
  def options_gui(exercises)
    gui_content_reset
    gui_opt_about_button("about")
    gui_opt_keybinds_button("keybinds")
    gui_opt_awesome_button("puts 'Awesome!'")
    gui_opt_learning_label
    gui_opt_learning_ex(exercises)
    
    gui_opt_repetition_label
    gui_opt_repetition_ex(exercises)
    
    gui_opt_save_bt
    gui_window_update
  end
end
