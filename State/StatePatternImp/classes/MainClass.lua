require "classes.constants.screen"
require "classes.Soldier"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local soldier
    local buttonWalk = widget.newButton({
        id = "buttonWalk",
        left = screen.left+80,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Walk",
        onEvent = function(event)
            if event.phase == "began" then
                soldier.standStillLeft()
            elseif event.phase == "ended" then
                soldier.standStill()
            end
        end
    })

    function private.MainClass()

        soldier = Soldier:new()

    end

    function private.changeMovementType(event)
        soldier.standStill()
        return true
    end

    private.MainClass()
    return this
end
return MainClass
