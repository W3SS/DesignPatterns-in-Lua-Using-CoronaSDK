require "classes.constants.screen"
require "classes.MenuComposite"
require "classes.MenuItem"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local menuRoot = MenuComposite:new("Menu")
    local fileMenu = MenuComposite:new("File")
    local editMenu = MenuComposite:new("Edit")

    function private.MainClass()
        menuRoot.addMenuItem(fileMenu)
        menuRoot.addMenuItem(editMenu)

        fileMenu.addMenuItem(MenuItem:new("new"))
        fileMenu.addMenuItem(MenuItem:new("open"))
        fileMenu.addMenuItem(MenuItem:new("save"))

        editMenu.addMenuItem(MenuItem:new("cut"))
        editMenu.addMenuItem(MenuItem:new("copy"))
        editMenu.addMenuItem(MenuItem:new("save"))

        menuRoot.draw()
    end


    private.MainClass()
    return this
end
return MainClass
