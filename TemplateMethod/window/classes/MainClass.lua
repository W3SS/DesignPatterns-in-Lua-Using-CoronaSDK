require "classes.constants.screen"
require "classes.MainWindow"
require "classes.ChildWindow"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.MainClass()
        mainWindow = MainWindow:new()
        mainWindow.createWindowTemplate()

        childWindow = ChildWindow:new()
        childWindow.createWindowTemplate()
    end

    private.MainClass()
    return this
end
return MainClass
