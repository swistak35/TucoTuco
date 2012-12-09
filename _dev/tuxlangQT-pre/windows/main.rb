module Tucotuco
  class Main < Qt::MainWindow
    slots 'slot1()'
    
    def slot1
    end
    
    def initialize(parent = nil)
      super
      @ui = Ui::Main.new
      @ui.setupUi self
      
      max_in_repetition
      set_defaults
    end
    
    def max_in_repetition
      @ui.repetition_max.text = $world[:database].words.count do |word|
        if !word.rep.nil?
          if word.rep < Time.now
            true
          else
            false
          end
        else
          false
        end
      end
    end
    
    def set_defaults
      @ui.repetition_slider.value = $world[:settings].last_repq
      @ui.learning_slider.value = $world[:settings].last_learnq
      @ui.exercise_slider.value = $world[:settings].last_exerq
      
      @ui.learning_category.insertItems(0, $world[:database].categories)
      @ui.learning_category.currentIndex = $world[:settings].last_category
    end
    
    def repetition
      $world[:exercising_now] = $world[:database].words.select do |word|
        !word.rep.nil? and word.rep < Time.now
      end.shuffle[0..(@ui.repetition_slider.value-1)]
      
      $world[:repetition_now] = true
      @exercise = (0..(@repetition_now.count-1)).to_a
      eval "ex_#{$world[:settings].rep_ex}_main(@exercising_now[@exercise[0]],:good)"
    end
    
    def repetition_end
      @database.save_words
      intro
    end
  end
end
