class Tuxlang
  def gui_opt_about_button
    @gui[:opt_about_button]=Gtk::Button.new("About").set_size_request(200,50)
    @gui[:opt_about_button].signal_connect("clicked") { about }
    @gui[:content].put(@gui[:opt_about_button],10,10)
  end
  
  def gui_opt_keybinds_button
    @gui[:opt_keybinds_button]=Gtk::Button.new("Keybindings").set_size_request(200,50)
    @gui[:opt_keybinds_button].signal_connect("clicked") { keybinds }
    @gui[:content].put(@gui[:opt_keybinds_button],210,10)
  end
  
  def gui_opt_awesome_button
    @gui[:opt_awesome_button]=Gtk::Button.new("AWESOME!!!!").set_size_request(200,50)
    @gui[:opt_awesome_button].signal_connect("clicked") { puts "Awesome!" }
    @gui[:content].put(@gui[:opt_awesome_button],410,10)
  end
  
  def gui_opt_learning_label
    @gui[:opt_learning_label]=Gtk::Label.new("Learning exercises:").set_size_request(200,30)
    @gui[:content].put(@gui[:opt_learning_label],10,60)
  end
  
  def gui_opt_repetition_label
    @gui[:opt_repetition_label]=Gtk::Label.new("Repetition exercises:").set_size_request(200,30)
    @gui[:content].put(@gui[:opt_repetition_label],210,60)
  end
  
  def gui_opt_learning_ex(exercises)
    (0..7).each do |id|
      @gui[("opt_learning_ex"+id.to_s).to_sym] = Gtk::ComboBox.new.set_size_request(200,30)
      @gui[("opt_learning_ex"+id.to_s).to_sym].append_text("")
      exercises.each {|name| @gui[("opt_learning_ex"+id.to_s).to_sym].append_text(name) }
      @gui[("opt_learning_ex"+id.to_s).to_sym].active = unless @settings.exercises[id].nil?
        a = exercises.rindex(@settings.exercises[id].to_s)+1
      else
        0
      end
      @gui[:content].put(@gui[("opt_learning_ex"+id.to_s).to_sym],10,90+30*id)
    end
  end
  
  def gui_opt_save_bt
    @gui[:opt_save_bt]=Gtk::Button.new("Zapisz").set_size_request(200,40)
    @gui[:opt_save_bt].signal_connect("clicked") {
      (0..7).each {|id| @settings.exercises[id] = @gui[("opt_learning_ex"+id.to_s).to_sym].active_text }
      @settings.rep_ex = @gui[:opt_repetition_ex].active_text
      @settings.save_info
    }
    @gui[:content].put(@gui[:opt_save_bt],410,360)
  end
  
  def gui_opt_repetition_ex(exercises)
    @gui[:opt_repetition_ex] = Gtk::ComboBox.new.set_size_request(200,30)
    exercises.each {|name| @gui[:opt_repetition_ex].append_text(name) }
    @gui[:opt_repetition_ex].active = exercises.rindex(@settings.rep_ex)
    @gui[:content].put(@gui[:opt_repetition_ex],210,90)
  end
end
