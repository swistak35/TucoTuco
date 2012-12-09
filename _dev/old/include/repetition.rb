class Tuxlang
  def repetition(quantity)
    @repetition_now = @database.words.select do |word|
      !word.rep.nil? and word.rep < Time.now
    end.shuffle[0..(quantity-1)]
    
    @exercising_now = @repetition_now
    @exercise = (0..(@repetition_now.count-1)).to_a
    eval "ex_#{@settings.rep_ex}_main(@exercising_now[@exercise[0]],:good)"
  end
  
  def repetition_end
    @database.save_words
    intro
  end
end
