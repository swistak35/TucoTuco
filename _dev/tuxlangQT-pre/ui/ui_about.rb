=begin
** Form generated from reading ui file 'ui_about.ui'
**
** Created: niedz. maj 8 01:36:42 2011
**      by: Qt User Interface Compiler version 4.6.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_About
    attr_reader :label
    attr_reader :exit_button

    def setupUi(about)
    if about.objectName.nil?
        about.objectName = "about"
    end
    about.resize(400, 300)
    @label = Qt::Label.new(about)
    @label.objectName = "label"
    @label.geometry = Qt::Rect.new(30, 30, 211, 41)
    @exit_button = Qt::PushButton.new(about)
    @exit_button.objectName = "exit_button"
    @exit_button.geometry = Qt::Rect.new(290, 270, 93, 27)

    retranslateUi(about)
    Qt::Object.connect(@exit_button, SIGNAL('clicked()'), about, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(about)
    end # setupUi

    def setup_ui(about)
        setupUi(about)
    end

    def retranslateUi(about)
    about.windowTitle = Qt::Application.translate("About", "Form", nil, Qt::Application::UnicodeUTF8)
    @label.text = Qt::Application.translate("About", "ABOUT, INFO R\303\223\305\273NE", nil, Qt::Application::UnicodeUTF8)
    @exit_button.text = Qt::Application.translate("About", "Zamknij", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(about)
        retranslateUi(about)
    end

end

module Ui
    class About < Ui_About
    end
end  # module Ui

