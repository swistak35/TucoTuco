class Database
  attr_accessor :short, :name, :mother, :lang, :words, :sentences, :categories, :sounds
  
  #Load all data from database directory
  def initialize(short)
    @short = short
    load_info
    load_words
    load_sentences
    load_categories
  end
  
  #Loads info about db - name, languages
  def load_info
    info = File.readlines "databases/"+@short+"/info"
    @name, @mother, @lang = info[0..2]
  end
  
  #Loads all words from db
  def load_words
    @words = []
    File.readlines("databases/"+@short+"/words.lang").each do |line|
      word = line.split(";")
      @words[word[0].to_i] = Word.new(word[0].to_i, word[1].to_i, word[2], word[3], word[4].split("/"), word[5].split("/"))
    end
    load_words_user
  end
  
  #Loads words from user repetition file
  def load_words_user
    begin
      File.readlines($world[:settings].dir+"words").each do |line|
        word = line.split(";")
        @words[word[0].to_i].level = word[1].to_i
        @words[word[0].to_i].rep = Time.at(word[2].to_i)
      end
    rescue Errno::ENOENT
    end
  end
  
  #Save words to user repetition file
  def save_words
    f = File.new($settings.dir+"words","w")
    @words.each do |word|
      f.puts word.id.to_s+";"+word.level.to_s+";"+word.rep.to_i.to_s+";" if word.level>0
    end
    f.close
  end
  
  #Loads all sentences from db
  def load_sentences
    @sentences = []
  end
  
  #Loads sentences from user repetition file
  def load_sentences_user
    
  end
  
  #Loads all categories from db
  def load_categories
    @categories = []
    i=0
    File.readlines("databases/"+@short+"/cats.lang").each do |line|
      @categories[i] = line.split(";")[0]
      i+=1
    end
  end
  
  #Returning the amount of words to learn in this category
  def amount_cat(category)
    @words.count {|word| word.level == 0 && word.cat == category}
  end
  
  #Returns the words to learn in this category
  def cat(category)
    @words.select {|word| word.level == 0 && word.cat == category}
  end
end
