require 'Qt'
require 'qtuitools'

load 'ui/ui_about.rb'
load 'ui/ui_intro.rb'
load 'ui/ui_main.rb'

load 'includes/word.rb'
load 'includes/database.rb'
load 'includes/settings.rb'

load 'windows/about.rb'
load 'windows/intro.rb'
load 'windows/main.rb'

module Tucotuco
  $world = {}
  application = Qt::Application.new(ARGV)
  intro = Intro.new
  intro.show
  application.exec
end
