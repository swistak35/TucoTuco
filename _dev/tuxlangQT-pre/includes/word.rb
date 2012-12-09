class Word
  attr_accessor :id, :cat, :name, :meaning, :synonyms, :level, :rep
  
  #Creating new word
  def initialize(id,cat,name,meaning,sentences=[],synonyms=[])
    @id, @cat, @name, @meaning, @sentences, @synonyms, @level = id, cat, name, meaning, sentences, synonyms, 0
  end
  
  #Leveling up the knowledge of the word
  def lvlup
    day = 60*60*24
    @level += 1
    case @level
      when 1
        @rep = Time.now+day
      when 2
        @rep = Time.now+day
      when 3
        @rep = Time.now+2*day
      when 4
        @rep = Time.now+3*day
      when 5
        @rep = Time.now+7*day
      when 6
        @rep = Time.now+180*day
    end
  end
  
  #Reset, user didn't remember word while repetition
  def lvlres
    @level = 0
    lvlup
  end
end
