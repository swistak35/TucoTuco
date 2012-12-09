class Settings
  attr_accessor :name, :dir, :words, :last_quantity, :last_category, :exercises, :last_repq, :rep_ex
  
  #Load settings
  def initialize(short)
    @short = short
    @dir = '/home/swistak35/Projekty/Tucotuco/user/'+@short+'/'
    #@dir = '~/.config/tucotuco/'+short+'/'
    prepare_config_files
    load_info
  end
  
  #Create .config, tucotuco, short, info file
  def prepare_config_files
    #Create .config dir
    #Create tucotuco dir
    #Create short dir
    #Create info file
  end
  
  #Load info, last used category and amount of new words to learn
  def load_info
    info = File.readlines @dir+"info"
    @last_quantity = info[0].chop
    @last_category = info[1].chop.to_i
    @exercises = info[2].chop.split(",")
    @last_repq = info[3].chop
    @rep_ex = info[4].chop
  end
  
  #Saving info.
  def save_info
    @exercises.delete("")
    f = File.new @dir+'info', 'w'
    f.puts @last_quantity
    f.puts @last_category.to_i
    f.puts @exercises.join(",")
    f.puts @last_repq
    f.puts @rep_ex
    f.close
  end
end
