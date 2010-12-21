class Settings
  attr_accessor :name, :dir, :words, :last_quantity, :last_category, :exercises, :last_repq, :rep_ex
  
  #Load settings
  def initialize(short)
    @dir='/home/swistak35/Projekty/tuxlang/user/'+short+'/'
    #@dir='~/.tuxlang/'+short+'/'
    load_info
  end
  
  #Load info, last used category and amount of new words to learn
  def load_info
    f = File.new(@dir+'info','r')
    @last_quantity=f.gets.chop
    @last_category=f.gets.chop.to_i
    @exercises=f.gets.chop.split(",")
    @last_repq=f.gets.chop
    @rep_ex=f.gets.chop
    f.close
  end
  
  #Saving info.
  def save_info
    @exercises.delete("")
    f = File.new(@dir+'info','w')
    f.puts @last_quantity
    f.puts @last_category.to_i
    f.puts @exercises.join(",")
    f.puts @last_repq
    f.puts @rep_ex
    f.close
  end
end
