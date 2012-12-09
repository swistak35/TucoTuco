require 'Qt'
load 'interface2.rb'

class AppMain < Qt::MainWindow
    def initialize(parent = nil)
        super
        @ui = Ui_MainWindow.new
        @ui.setupUi self
    end
end

application = Qt::Application.new(ARGV)
main_window = AppMain.new
main_window.show
application.exec
