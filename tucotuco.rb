require 'rubygems'
require 'gtk2'

if ARGV[0].nil?
  puts "Uruchamianie: ruby tucotuco.rb BAZA"
  puts "Uzyj eng1, nic lepszego nie ma."
  exit
end

class Tuxlang
  def initialize(database)
    generating_window
    @database = Database.new(database)
    @settings = Settings.new(database)
  end
end

Dir.new("include").each do |file|
  load "include/"+file if file =~ /\.rb/
end
  
Tuxlang.new(ARGV[0])
Gtk.main
