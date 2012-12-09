class Tuxlang
  #"I want to learn" mwahahaha
  def learning
    max = @database.words.count do |word|
      if !word.rep.nil?
        if word.rep < Time.now
          true
        else
          false
        end
      else
        false
      end
    end
    
    continue = @learning_now.nil? ? false : true
    learning_gui(max,@database.categories,continue)
  end
  
  def learning_gui(max,categories,continue_visible)
    gui_content_reset
    gui_ln_rep_info_label
    gui_ln_repq_list
    gui_ln_rep_max(max)
    gui_ln_rep_button
    gui_ln_category_label
    gui_ln_quantity_label
    gui_ln_max_label
    gui_ln_category_list(categories)
    gui_ln_quantity_list
    gui_ln_learn_button
    gui_ln_change_to_defaults
    gui_ln_continue_button(continue_visible)
    gui_window_update
  end
end
