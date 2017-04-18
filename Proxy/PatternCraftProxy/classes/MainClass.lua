require "classes.constants.screen"
require "classes.Cocoon"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local drone
    local button = widget.newButton({
        id = "button",
        left = screen.right-120,
        top = screen.top+10,
        width = 120,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Create Drone",
        onEvent = function(event)
            if event.phase == "ended" then
                private.onButtonTap(event)
            end
        end
    })

    function private.MainClass()

        button:addEventListener("touch", function() return true end)
        Runtime:addEventListener( "touch", private.onTap )

    end

    function private.onTap(event)
        if drone then
            drone.move(event.x, event.y)
        end
    end

    function private.onButtonTap(event)
        drone = Cocoon:new()

        return true
    end


    private.MainClass()
    return this
end
return MainClass
