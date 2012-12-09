module Tucotuco
  class Intro < Qt::Widget
    slots 'launch_main()'
    
    def launch_main
      $world[:settings] = Settings.new @ui.db_combo.currentText
      $world[:database] = Database.new @ui.db_combo.currentText
      
      self.close
      main_window = Main.new
      main_window.show
    end
    
    def initialize(parent = nil)
      super
      @ui = Ui::Intro.new
      @ui.setupUi self
      prepare_menu
    end
    
    def prepare_menu
      #TODO: Pobieranie listy bazy danych z katalogu databases/
      @ui.db_combo.insertItems(0, ["eng1","eng2"])
    end
  end
end
