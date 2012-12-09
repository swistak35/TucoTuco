class Tuxlang
  def repetition(quantity)
    @exercising_now = shuffle_repetition_words quantity
    @repetition_now = true
    @exercise = (0..(@exercising_now.count-1)).to_a
    eval "ex_#{@settings.rep_ex}_main(@exercising_now[@exercise[0]],:good)"
  end
  
  def repetition_end
    @database.save_words
    @repetition_now = false
    intro
  end
  
  def shuffle_repetition_words(quantity)
    @database.words.select do |word|
      !word.rep.nil? and word.rep < Time.now
    end.shuffle[0..(quantity-1)]
  end
end
