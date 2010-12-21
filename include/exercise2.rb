class Tuxlang
  #Exercise, in which you see word's meaning, and you must choose word.name. Bleh.
  def ex_2_main(word,effect,correct=nil)
    gui_content_reset
    
    gui_ex_2_error_label(exercise_error(effect,correct))
    
    gui_ex_2_word_label(word.meaning)
    
    gui_ex_2_accelerators
    
    options = @database.words.shuffle[0..2]
    (options << word).shuffle!
    gui_ex_2_bt1(word,options[0].name)
    gui_ex_2_bt2(word,options[1].name)
    gui_ex_2_bt3(word,options[2].name)
    gui_ex_2_bt4(word,options[3].name)
    
    
    gui_window_update
  end
  
  def ex_2_check(word,clicked)
    if word.name == clicked
        @exercise.delete_at(0)
        ex_2_main(@learning_now[@exercise[0]],:good) if !@exercise.empty?
    elsif word.synonyms.include?(clicked) && !clicked.empty?
        @exercise.delete_at(0)
        ex_2_main(@learning_now[@exercise[0]],:close,word.name) if !@exercise.empty?
    else
        @exercise << @exercise.delete_at(0)
        ex_2_main(@learning_now[@exercise[0]],:bad,word.name) if !@exercise.empty?
    end
    
    next_exercise if @exercise.empty?
  end
  
  #GUI
  def gui_ex_2_error_label(error)
    @gui[:ex_2_error_label] = Gtk::Label.new(error).set_size_request(400,30)
    @gui[:content].put(@gui[:ex_2_error_label],20,30)
  end
  
  def gui_ex_2_word_label(word_meaning)
    @gui[:ex_2_word_label] = Gtk::Label.new.set_size_request(400,50).set_markup("<b><big>"+word_meaning+"</big></b>")
    @gui[:content].put(@gui[:ex_2_word_label],20,60)
  end
  
  def gui_ex_2_bt1(word,word_name)
    @gui[:ex_2_bt1] = Gtk::Button.new(word_name).set_size_request(300,30)
    @gui[:ex_2_bt1].signal_connect("clicked") { ex_2_check(word,word_name) }
    @gui[:ex_2_bt1].add_accelerator("clicked",@gui[:ex_2_accel],Gdk::Keyval::GDK_1,Gdk::Window::LOCK_MASK, Gtk::ACCEL_VISIBLE)
    @gui[:content].put(@gui[:ex_2_bt1],20,110)
  end
  
  def gui_ex_2_bt2(word,word_name)
    @gui[:ex_2_bt2] = Gtk::Button.new(word_name).set_size_request(300,30)
    @gui[:ex_2_bt2].signal_connect("clicked") { ex_2_check(word,word_name) }
    @gui[:ex_2_bt2].add_accelerator("clicked",@gui[:ex_2_accel],Gdk::Keyval::GDK_2,Gdk::Window::LOCK_MASK, Gtk::ACCEL_VISIBLE)
    @gui[:content].put(@gui[:ex_2_bt2],20,140)
  end
  
  def gui_ex_2_bt3(word,word_name)
    @gui[:ex_2_bt3] = Gtk::Button.new(word_name).set_size_request(300,30)
    @gui[:ex_2_bt3].signal_connect("clicked") { ex_2_check(word,word_name) }
    @gui[:ex_2_bt3].add_accelerator("clicked",@gui[:ex_2_accel],Gdk::Keyval::GDK_3,Gdk::Window::LOCK_MASK,Gtk::ACCEL_VISIBLE)
    @gui[:content].put(@gui[:ex_2_bt3],20,170)
  end
  
  def gui_ex_2_bt4(word,word_name)
    @gui[:ex_2_bt4] = Gtk::Button.new(word_name).set_size_request(300,30)
    @gui[:ex_2_bt4].signal_connect("clicked") { ex_2_check(word,word_name) }
    @gui[:ex_2_bt4].add_accelerator("clicked",@gui[:ex_2_accel],Gdk::Keyval::GDK_4,Gdk::Window::LOCK_MASK, Gtk::ACCEL_VISIBLE)
    @gui[:content].put(@gui[:ex_2_bt4],20,200)
  end
  
  def gui_ex_2_accelerators
    @gui[:ex_2_accel] = Gtk::AccelGroup.new
    @gui[:window].add_accel_group(@gui[:ex_2_accel])
  end
end
