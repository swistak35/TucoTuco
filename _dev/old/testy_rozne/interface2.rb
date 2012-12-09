=begin
** Form generated from reading ui file 'interface.ui'
**
** Created: sob. mar 19 19:38:46 2011
**      by: Qt User Interface Compiler version 4.6.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :centralwidget
    attr_reader :horizontalLayoutWidget
    attr_reader :menu
    attr_reader :learning_button
    attr_reader :exercise_button
    attr_reader :results_button
    attr_reader :database_button
    attr_reader :options_button
    attr_reader :exit_button
    attr_reader :statusbar

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(800, 600)
    mainWindow.windowTitle = "Tuxlang"
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @horizontalLayoutWidget = Qt::Widget.new(@centralwidget)
    @horizontalLayoutWidget.objectName = "horizontalLayoutWidget"
    @horizontalLayoutWidget.geometry = Qt::Rect.new(10, 490, 781, 81)
    @menu = Qt::HBoxLayout.new(@horizontalLayoutWidget)
    @menu.objectName = "menu"
    @menu.setContentsMargins(0, 0, 0, 0)
    @learning_button = Qt::PushButton.new(@horizontalLayoutWidget)
    @learning_button.objectName = "learning_button"

    @menu.addWidget(@learning_button)

    @exercise_button = Qt::PushButton.new(@horizontalLayoutWidget)
    @exercise_button.objectName = "exercise_button"

    @menu.addWidget(@exercise_button)

    @results_button = Qt::PushButton.new(@horizontalLayoutWidget)
    @results_button.objectName = "results_button"

    @menu.addWidget(@results_button)

    @database_button = Qt::PushButton.new(@horizontalLayoutWidget)
    @database_button.objectName = "database_button"

    @menu.addWidget(@database_button)

    @options_button = Qt::PushButton.new(@horizontalLayoutWidget)
    @options_button.objectName = "options_button"

    @menu.addWidget(@options_button)

    @exit_button = Qt::PushButton.new(@horizontalLayoutWidget)
    @exit_button.objectName = "exit_button"

    @menu.addWidget(@exit_button)

    mainWindow.centralWidget = @centralwidget
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar

    retranslateUi(mainWindow)

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.toolTip = ''
    @learning_button.text = Qt::Application.translate("MainWindow", "Learning", nil, Qt::Application::UnicodeUTF8)
    @exercise_button.text = Qt::Application.translate("MainWindow", "Exercises", nil, Qt::Application::UnicodeUTF8)
    @results_button.text = Qt::Application.translate("MainWindow", "Results", nil, Qt::Application::UnicodeUTF8)
    @database_button.text = Qt::Application.translate("MainWindow", "Database", nil, Qt::Application::UnicodeUTF8)
    @options_button.text = Qt::Application.translate("MainWindow", "Options", nil, Qt::Application::UnicodeUTF8)
    @exit_button.text = Qt::Application.translate("MainWindow", "Exit", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

