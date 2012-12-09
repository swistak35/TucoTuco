=begin
** Form generated from reading ui file 'ui_main.ui'
**
** Created: niedz. maj 8 21:47:34 2011
**      by: Qt User Interface Compiler version 4.6.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Main
    attr_reader :actionTerminator
    attr_reader :centralwidget
    attr_reader :exit_button
    attr_reader :options_button
    attr_reader :database_button
    attr_reader :results_button
    attr_reader :repetition_label
    attr_reader :repetition_slider
    attr_reader :repetition_button
    attr_reader :learning_label
    attr_reader :learning_value
    attr_reader :learning_category
    attr_reader :learning_slider
    attr_reader :learning_button
    attr_reader :repetition_max
    attr_reader :exercises_combo
    attr_reader :exercise_slider
    attr_reader :exercise_button
    attr_reader :exercise_value
    attr_reader :repetition_value
    attr_reader :learning_max
    attr_reader :statusbar

    def setupUi(main)
    if main.objectName.nil?
        main.objectName = "main"
    end
    main.resize(800, 607)
    @actionTerminator = Qt::Action.new(main)
    @actionTerminator.objectName = "actionTerminator"
    @actionTerminator.checkable = true
    @centralwidget = Qt::Widget.new(main)
    @centralwidget.objectName = "centralwidget"
    @exit_button = Qt::PushButton.new(@centralwidget)
    @exit_button.objectName = "exit_button"
    @exit_button.geometry = Qt::Rect.new(730, 510, 68, 68)
    @exit_button.styleSheet = ""
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/static_/static/exit.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @exit_button.icon = icon
    @exit_button.iconSize = Qt::Size.new(64, 64)
    @options_button = Qt::PushButton.new(@centralwidget)
    @options_button.objectName = "options_button"
    @options_button.geometry = Qt::Rect.new(660, 510, 68, 68)
    @options_button.styleSheet = ""
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/static_/static/options.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @options_button.icon = icon1
    @options_button.iconSize = Qt::Size.new(64, 64)
    @database_button = Qt::PushButton.new(@centralwidget)
    @database_button.objectName = "database_button"
    @database_button.geometry = Qt::Rect.new(590, 510, 68, 68)
    @database_button.styleSheet = ""
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/static_/static/database.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @database_button.icon = icon2
    @database_button.iconSize = Qt::Size.new(64, 64)
    @results_button = Qt::PushButton.new(@centralwidget)
    @results_button.objectName = "results_button"
    @results_button.geometry = Qt::Rect.new(520, 510, 68, 68)
    @results_button.styleSheet = ""
    icon3 = Qt::Icon.new
    icon3.addPixmap(Qt::Pixmap.new(":/static_/static/results.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @results_button.icon = icon3
    @results_button.iconSize = Qt::Size.new(64, 64)
    @repetition_label = Qt::Label.new(@centralwidget)
    @repetition_label.objectName = "repetition_label"
    @repetition_label.geometry = Qt::Rect.new(10, 10, 136, 34)
    @font = Qt::Font.new
    @font.family = "Monospace"
    @font.pointSize = 14
    @font.bold = true
    @font.italic = true
    @font.weight = 75
    @repetition_label.font = @font
    @repetition_slider = Qt::Slider.new(@centralwidget)
    @repetition_slider.objectName = "repetition_slider"
    @repetition_slider.geometry = Qt::Rect.new(30, 40, 221, 17)
    @repetition_slider.orientation = Qt::Horizontal
    @repetition_button = Qt::PushButton.new(@centralwidget)
    @repetition_button.objectName = "repetition_button"
    @repetition_button.geometry = Qt::Rect.new(30, 70, 101, 27)
    @learning_label = Qt::Label.new(@centralwidget)
    @learning_label.objectName = "learning_label"
    @learning_label.geometry = Qt::Rect.new(10, 130, 136, 34)
    @learning_label.font = @font
    @learning_value = Qt::Label.new(@centralwidget)
    @learning_value.objectName = "learning_value"
    @learning_value.geometry = Qt::Rect.new(160, 240, 62, 17)
    @learning_category = Qt::ComboBox.new(@centralwidget)
    @learning_category.objectName = "learning_category"
    @learning_category.geometry = Qt::Rect.new(30, 160, 221, 31)
    @learning_slider = Qt::Slider.new(@centralwidget)
    @learning_slider.objectName = "learning_slider"
    @learning_slider.geometry = Qt::Rect.new(30, 200, 221, 17)
    @learning_slider.orientation = Qt::Horizontal
    @learning_button = Qt::PushButton.new(@centralwidget)
    @learning_button.objectName = "learning_button"
    @learning_button.geometry = Qt::Rect.new(30, 230, 101, 27)
    @repetition_max = Qt::Label.new(@centralwidget)
    @repetition_max.objectName = "repetition_max"
    @repetition_max.geometry = Qt::Rect.new(170, 80, 62, 17)
    @exercises_combo = Qt::ComboBox.new(@centralwidget)
    @exercises_combo.objectName = "exercises_combo"
    @exercises_combo.geometry = Qt::Rect.new(540, 20, 221, 31)
    @exercise_slider = Qt::Slider.new(@centralwidget)
    @exercise_slider.objectName = "exercise_slider"
    @exercise_slider.geometry = Qt::Rect.new(540, 70, 221, 17)
    @exercise_slider.orientation = Qt::Horizontal
    @exercise_button = Qt::PushButton.new(@centralwidget)
    @exercise_button.objectName = "exercise_button"
    @exercise_button.geometry = Qt::Rect.new(540, 100, 101, 27)
    @exercise_value = Qt::Label.new(@centralwidget)
    @exercise_value.objectName = "exercise_value"
    @exercise_value.geometry = Qt::Rect.new(670, 110, 62, 17)
    @repetition_value = Qt::Label.new(@centralwidget)
    @repetition_value.objectName = "repetition_value"
    @repetition_value.geometry = Qt::Rect.new(140, 20, 62, 17)
    @learning_max = Qt::Label.new(@centralwidget)
    @learning_max.objectName = "learning_max"
    @learning_max.geometry = Qt::Rect.new(240, 240, 62, 17)
    main.centralWidget = @centralwidget
    @statusbar = Qt::StatusBar.new(main)
    @statusbar.objectName = "statusbar"
    main.statusBar = @statusbar
    @learning_value.buddy = @learning_slider
    Qt::Widget.setTabOrder(@repetition_slider, @options_button)
    Qt::Widget.setTabOrder(@options_button, @database_button)
    Qt::Widget.setTabOrder(@database_button, @results_button)
    Qt::Widget.setTabOrder(@results_button, @exit_button)
    Qt::Widget.setTabOrder(@exit_button, @repetition_button)
    Qt::Widget.setTabOrder(@repetition_button, @learning_category)
    Qt::Widget.setTabOrder(@learning_category, @learning_slider)
    Qt::Widget.setTabOrder(@learning_slider, @learning_button)
    Qt::Widget.setTabOrder(@learning_button, @exercises_combo)
    Qt::Widget.setTabOrder(@exercises_combo, @exercise_slider)
    Qt::Widget.setTabOrder(@exercise_slider, @exercise_button)

    retranslateUi(main)
    Qt::Object.connect(@exit_button, SIGNAL('clicked()'), main, SLOT('close()'))
    Qt::Object.connect(@actionTerminator, SIGNAL('triggered()'), main, SLOT('close()'))
    Qt::Object.connect(@database_button, SIGNAL('clicked()'), @actionTerminator, SLOT('trigger()'))
    Qt::Object.connect(@learning_button, SIGNAL('clicked()'), main, SLOT('slot1()'))
    Qt::Object.connect(@repetition_slider, SIGNAL('valueChanged(int)'), @repetition_value, SLOT('setNum(int)'))
    Qt::Object.connect(@learning_slider, SIGNAL('valueChanged(int)'), @learning_value, SLOT('setNum(int)'))
    Qt::Object.connect(@exercise_slider, SIGNAL('valueChanged(int)'), @exercise_value, SLOT('setNum(int)'))
    Qt::Object.connect(@repetition_button, SIGNAL('clicked()'), main, SLOT('repetition()'))
    Qt::Object.connect(@learning_button, SIGNAL('clicked()'), main, SLOT('learn()'))
    Qt::Object.connect(@exercise_button, SIGNAL('clicked()'), main, SLOT('exercise()'))

    Qt::MetaObject.connectSlotsByName(main)
    end # setupUi

    def setup_ui(main)
        setupUi(main)
    end

    def retranslateUi(main)
    main.windowTitle = Qt::Application.translate("Main", "MainWindow", nil, Qt::Application::UnicodeUTF8)
    @actionTerminator.text = Qt::Application.translate("Main", "Terminator", nil, Qt::Application::UnicodeUTF8)
    @actionTerminator.toolTip = Qt::Application.translate("Main", "Terminatorrr", nil, Qt::Application::UnicodeUTF8)
    @actionTerminator.shortcut = Qt::Application.translate("Main", "Ctrl+T", nil, Qt::Application::UnicodeUTF8)
    @exit_button.text = ''
    @options_button.text = ''
    @database_button.text = ''
    @results_button.text = ''
    @repetition_label.text = Qt::Application.translate("Main", "Powt\303\263rki", nil, Qt::Application::UnicodeUTF8)
    @repetition_button.text = Qt::Application.translate("Main", "Repeat!", nil, Qt::Application::UnicodeUTF8)
    @learning_label.text = Qt::Application.translate("Main", "Nauka", nil, Qt::Application::UnicodeUTF8)
    @learning_value.text = Qt::Application.translate("Main", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @learning_button.text = Qt::Application.translate("Main", "Repeat!", nil, Qt::Application::UnicodeUTF8)
    @repetition_max.text = Qt::Application.translate("Main", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @exercise_button.text = Qt::Application.translate("Main", "Repeat!", nil, Qt::Application::UnicodeUTF8)
    @exercise_value.text = Qt::Application.translate("Main", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @repetition_value.text = Qt::Application.translate("Main", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    @learning_max.text = Qt::Application.translate("Main", "TextLabel", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(main)
        retranslateUi(main)
    end

end

module Ui
    class Main < Ui_Main
    end
end  # module Ui

