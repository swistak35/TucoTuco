class Tuxlang
  def gui_ln_rep_info_label
    @gui[:ln_rep_info_label] = Gtk::Label.new("Powtórki: ").set_size_request(100,30)
    @gui[:content].put(@gui[:ln_rep_info_label],10,10)
  end
  
  def gui_ln_rep_max(max)
    @gui[:ln_rep_max] = Gtk::Label.new(" / "+max.to_s).set_size_request(100,30)
    @gui[:content].put(@gui[:ln_rep_max],110,40)
  end
  
  def gui_ln_repq_list
    @gui[:ln_repq_list] = Gtk::ComboBoxEntry.new.set_size_request(100,30)
    @gui[:ln_repq_list].signal_connect("changed") do
      gui_window_update
      @settings.last_repq=@gui[:ln_repq_list].active_text
      @settings.save_info
    end
    
    [50,100,150,200,250,300].each {|q| @gui[:ln_repq_list].append_text(q.to_s)}
    @gui[:content].put(@gui[:ln_repq_list],10,40)
  end
  
  def gui_ln_rep_button
    @gui[:ln_rep_button] = Gtk::Button.new("Powtarzaj").set_size_request(100,30)
    @gui[:ln_rep_button].signal_connect("clicked") do
      repetition(@gui[:ln_repq_list].active_text.to_i)
    end
    @gui[:content].put(@gui[:ln_rep_button],10,70)
  end
  
  def gui_ln_category_label
    @gui[:ln_category_label] = Gtk::Label.new("Kategoria: ").set_size_request(100,30)
    @gui[:content].put(@gui[:ln_category_label],10,250)
  end
  
  def gui_ln_quantity_label
    @gui[:ln_quantity_label] = Gtk::Label.new("Ilosc: ").set_size_request(100,30)
    @gui[:content].put(@gui[:ln_quantity_label],10,280)
  end
  
  def gui_ln_category_list(categories)
    @gui[:ln_category_list]=Gtk::ComboBox.new.set_size_request(200,30)
    @gui[:ln_category_list].signal_connect("changed") do
      available = @database.amount_cat(@gui[:ln_category_list].active)
      @gui[:ln_max_label].text=(" / "+available.to_s)
      gui_ln_learn_button_state
      gui_window_update
      @settings.last_category=@gui[:ln_category_list].active
      @settings.save_info
    end
    
    categories.each {|name| @gui[:ln_category_list].append_text(name) }
    @gui[:content].put(@gui[:ln_category_list],110,250)
  end
  
  def gui_ln_quantity_list
    @gui[:ln_quantity_list] = Gtk::ComboBoxEntry.new.set_size_request(100,30)
    
    @gui[:ln_quantity_list].signal_connect("changed") do
      gui_ln_learn_button_state
      @settings.last_quantity=@gui[:ln_quantity_list].active_text
      @settings.save_info
      gui_window_update
    end
    
    [10,20,25,30,40,50].each {|q| @gui[:ln_quantity_list].append_text(q.to_s)}
    @gui[:content].put(@gui[:ln_quantity_list],110,280)
  end
  
  def gui_ln_learn_button_state
    puts "TODO: Turning off learn button" if @gui[:ln_quantity_list].active_text.to_i > @gui[:ln_max_label].text[0..-3].to_i
  end
  
  def gui_ln_max_label
    @gui[:ln_max_label] = Gtk::Label.new.set_size_request(100,30)
    @gui[:content].put(@gui[:ln_max_label],210,280)
  end
  
  def gui_ln_learn_button(visible)
    @gui[:ln_learn_button] = Gtk::Button.new("Ucz sie").set_size_request(100,30)
    @gui[:ln_learn_button].signal_connect("clicked") { learning_new(@gui[:ln_category_list].active,@gui[:ln_quantity_list].active_text.to_i) }
    @gui[:content].put(@gui[:ln_learn_button],210,310) 
  end
  
  def gui_ln_continue_button(visible)
    @gui[:ln_continue] = Gtk::Button.new("Kontynuuj").set_size_request(100,30)
    @gui[:ln_continue].signal_connect("clicked") { learning_continue }
    @gui[:content].put(@gui[:ln_continue],310,310)
  end
  
  def gui_ln_change_to_defaults
    @gui[:ln_quantity_list].append_text(@settings.last_quantity)
    @gui[:ln_quantity_list].active=6
    @gui[:ln_repq_list].append_text(@settings.last_repq)
    @gui[:ln_repq_list].active=6
    @gui[:ln_category_list].active=@settings.last_category.to_i
  end
end
