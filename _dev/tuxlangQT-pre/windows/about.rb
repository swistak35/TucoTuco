module TucoTuco
  class About < Qt::Widget
    def initialize(parent = nil)
      super
      @ui = Ui::About.new
      @ui.setupUi self
    end
  end
end
