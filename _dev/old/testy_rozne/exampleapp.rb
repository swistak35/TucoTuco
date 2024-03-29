#!/usr/bin/ruby

# ZetCode Ruby Qt tutorial
#
# This code shows a tooltip on 
# a window and a button
#
# author: jan bodnar
# website: www.zetcode.com
# last modified: June 2009


require 'Qt'


class QtApp < Qt::Widget

    def initialize
        super
        
        setWindowTitle "Tooltip"

        setToolTip "This is Widget"
        
        resize 250, 150
        move 300, 300

        show
    end
end

app = Qt::Application.new ARGV
QtApp.new
app.exec
