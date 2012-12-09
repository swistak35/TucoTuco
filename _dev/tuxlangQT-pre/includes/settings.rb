class Settings
  attr_accessor :name, :dir, :words, :last_learnq, :last_exerq, :last_category, :exercises, :last_repq, :rep_ex
  
  #Load settings
  def initialize(short)
    @short = short
    @dir = '/home/swistak35/Projekty/Tucotuco/user/'+@short+'/'
    load_info
  end
  
  #Load info, last used category and amount of new words to learn
  def load_info
    info = File.readlines @dir+"info"
    @last_learnq = info[0].to_i
    @last_repq = info[1].to_i
    @last_exerq = info[2].to_i
    @last_category = info[3].to_i
    @exercises = info[4].split(",").collect! {|v| v.to_i}
    @rep_ex = info[4].to_i
  end
  
  #Saving info.
  def save_info
    @exercises.delete("")
    f = File.new @dir+'info', 'w'
    f.puts @last_learnq.to_s
    f.puts @last_category.to_s
    f.puts @exercises.to_s.join(",")
    f.puts @last_repq.to_s
    f.puts @rep_ex.to_s
    f.close
  end
end
