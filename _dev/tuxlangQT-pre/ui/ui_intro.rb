=begin
** Form generated from reading ui file 'ui_intro.ui'
**
** Created: niedz. maj 8 18:06:28 2011
**      by: Qt User Interface Compiler version 4.6.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Intro
    attr_reader :label
    attr_reader :db_combo
    attr_reader :launch_main_button

    def setupUi(intro)
    if intro.objectName.nil?
        intro.objectName = "intro"
    end
    intro.resize(400, 300)
    @label = Qt::Label.new(intro)
    @label.objectName = "label"
    @label.geometry = Qt::Rect.new(40, 30, 231, 21)
    @db_combo = Qt::ComboBox.new(intro)
    @db_combo.objectName = "db_combo"
    @db_combo.geometry = Qt::Rect.new(50, 230, 141, 27)
    @launch_main_button = Qt::PushButton.new(intro)
    @launch_main_button.objectName = "launch_main_button"
    @launch_main_button.geometry = Qt::Rect.new(230, 230, 93, 27)

    retranslateUi(intro)
    Qt::Object.connect(@launch_main_button, SIGNAL('clicked()'), intro, SLOT('launch_main()'))

    Qt::MetaObject.connectSlotsByName(intro)
    end # setupUi

    def setup_ui(intro)
        setupUi(intro)
    end

    def retranslateUi(intro)
    intro.windowTitle = Qt::Application.translate("Intro", "Form", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("Intro", "Intro, powitanie, obrazek", nil, Qt::Application::UnicodeUTF8)
    @launch_main_button.text = Qt::Application.translate("Intro", "Start!", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(intro)
        retranslateUi(intro)
    end

end

module Ui
    class Intro < Ui_Intro
    end
end  # module Ui

