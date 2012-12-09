class Tuxlang
  #Learning NEW words.
  def learning_new(category,quantity)
    available = @database.cat(category).select {|word| word.level==0}
    @exercising_now = available.shuffle[0..(quantity-1).to_i]
    @learning_now = true
    @exercises = [nil]
    @exercises += @settings.exercises
    next_exercise
  end
  
  #Exercise step
  def next_exercise
    @exercises.delete_at(0)
    if !@exercises.empty?
      @exercise = (0..(@exercising_now.count-1)).to_a
      eval "ex_#{@exercises.first}_main(@exercising_now[@exercise[0]],:good)"
    else
      @exercising_now.each {|word| @database.words[word.id].lvlup }
      @database.save_words
      @learning_now = false
      intro
    end
  end
  
  #Going on with learning
  def learning_continue
    eval "ex_#{@exercises.first}_main(@exercising_now[@exercise[0]],:good)"
  end
  
  #Return error message
  def exercise_error(effect,correct=nil)
    case effect
      when :good
        error=""
      when :bad
        error="Zle, powinno być: #{correct}: ("
      when :close
        error="Niby okej, ale poprawnie jest: #{correct} : |"
    end
    error
  end
end
