#!/usr/bin/ruby

# ZetCode Ruby Qt tutorial
#
# In this program, use box layouts
# to position two buttons in the
# bottom right corner of the window
#
# author: jan bodnar
# website: www.zetcode.com
# last modified: June 2009

require 'Qt'


class QtApp < Qt::Widget

    def initialize
        super
        
        setWindowTitle "Buttons"
        
        init_ui
        
        resize 330, 170
        move 300, 300

        show
    end
    
    def init_ui
        vbox = Qt::VBoxLayout.new self
        hbox = Qt::HBoxLayout.new

        ok = Qt::PushButton.new "OK", self
        apply = Qt::PushButton.new "Apply", self

        hbox.addWidget ok, 1, Qt::AlignRight
        hbox.addWidget apply

        vbox.addStretch 1
        vbox.addLayout hbox
    end
    
end

app = Qt::Application.new ARGV
QtApp.new
app.exec
