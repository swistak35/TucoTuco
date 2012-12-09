class Tuxlang
  #Learning NEW words.
  def learning_new(category,quantity)
    available = @database.cat(category).select {|word| word.level==0}
    @learning_now = available.shuffle[0..(quantity-1).to_i]
    @exercising_now = @learning_now
    @exercises = [nil]
    @exercises += @settings.exercises
    next_exercise
  end
  
  #Exercise step
  def next_exercise
    @exercises.delete_at(0)
    if !@exercises.empty?
      #@learning_now.shuffle
      @exercise = (0..(@learning_now.count-1)).to_a
      eval "ex_#{@exercises.first}_main(@learning_now[@exercise[0]],:good)"
    else
      @learning_now.each {|word| @database.words[word.id].lvlup }
      @database.save_words
      @learning_now=nil
      intro
    end
  end
  
  #Going on with learning
  def learning_continue
    eval "ex_#{@exercises.first}_main(@learning_now[@exercise[0]],:good)"
  end
  
  #Return ełłoł message. Best regards to elwin013 and his weird accent.
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
