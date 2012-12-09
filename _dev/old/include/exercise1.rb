class Tuxlang
  #Exercise with input. Man, the best exercise on the world.
  def ex_1_main(word,effect,correct=nil)
    gui_content_reset
    
    gui_ex_1_error_label(exercise_error(effect,correct))
    gui_ex_1_word_label word.meaning
    gui_ex_1_entry
    gui_ex_1_nextbt word
    
    gui_window_update
  end
  
  #Checking exercise 1
  def ex_1_check(word)
    if @gui[:ex_1_entry].text == word.name
        @exercise.delete_at(0)
        @database.words[word.id].lvlup if !@repetition_now.nil?
        ex_1_main(@exercising_now[@exercise[0]],:good) if !@exercise.empty?
    elsif word.synonyms.include?(@gui[:ex_1_entry].text) && !@gui[:ex_1_entry].text.empty?
        @exercise.delete_at(0)
        @database.words[word.id].lvlup if !@repetition_now.nil?
        ex_1_main(@exercising_now[@exercise[0]],:close,word.name) if !@exercise.empty?
    else
        @exercise << @exercise.delete_at(0)
        @database.words[word.id].lvlres if !@repetition_now.nil?
        ex_1_main(@exercising_now[@exercise[0]],:bad,word.name) if !@exercise.empty?
    end
    
    next_exercise if @exercise.empty? and !@learning_now.nil?
    repetition_end if @exercise.empty? and !@repetition_now.nil?
  end
  
  
  def gui_ex_1_error_label(error)
    @gui[:ex_1_error_label] = Gtk::Label.new(error).set_size_request(400,30)
    @gui[:content].put(@gui[:ex_1_error_label],20,30)
  end
  
  def gui_ex_1_word_label(word_name)
    @gui[:ex_1_word_label] = Gtk::Label.new.set_size_request(400,50).set_markup("<b><big>"+word_name+"</big></b>")
    @gui[:content].put(@gui[:ex_1_word_label],20,60)
  end
  
  def gui_ex_1_entry
    @gui[:ex_1_entry] = Gtk::Entry.new.set_size_request(400,30)
    @gui[:ex_1_entry].signal_connect('activate') { @gui[:ex_1_nextbt].clicked }
    @gui[:content].put(@gui[:ex_1_entry],20,110)
  end
  
  def gui_ex_1_nextbt(word)
    @gui[:ex_1_nextbt]=Gtk::Button.new("Next").set_size_request(160,40)
    @gui[:ex_1_nextbt].signal_connect("clicked") { ex_1_check word }
    @gui[:content].put(@gui[:ex_1_nextbt],130,160)
  end
end
