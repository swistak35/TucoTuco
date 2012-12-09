class Tuxlang
  #Various options...
  def options
    exercises = Dir.new('include').select{|file| file =~ /exercise/} - ["exercises.rb","exercises_gui.rb"]
    exercises.collect! {|exercise| exercise[9..-4]}
    options_gui(exercises)
  end
  
  def options_gui(exercises)
    gui_content_reset
    
    gui_opt_about_button do
      about
    end
    
    gui_opt_keybinds_button do
      keybinds
    end
    
    gui_opt_awesome_button do
      puts "jajo"
    end
    
    gui_opt_learning_label
    gui_opt_learning_ex(exercises)
    
    gui_opt_repetition_label
    gui_opt_repetition_ex(exercises)
    
    gui_opt_save_bt do
      (0..7).each {|id| @settings.exercises[id] = @gui[("opt_learning_ex"+id.to_s).to_sym].active_text }
      @settings.rep_ex = @gui[:opt_repetition_ex].active_text
      @settings.save_info
    end
    
    gui_window_update
  end
end
