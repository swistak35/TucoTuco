require 'gtk2'


class Tuxlang
  def initialize(database)
    generating_window
    @database = Database.new(database)
    @settings = Settings.new(database)
  end
end

Dir.new("include").each do |file|
  require "include/"+file if file =~ /\.rb/
end
  
Tuxlang.new("eng1")
Gtk.main

