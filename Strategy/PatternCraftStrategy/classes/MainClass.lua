require "classes.constants.screen"
require "classes.Vehicle"
require "classes.Viking"
require "classes.Fly"
require "classes.Walk"
require "classes.Swim"
require "classes.Teleport"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local viking = Viking:new()
    local buttonFly = widget.newButton({
        id = "buttonFly",
        left = screen.left+10,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Fly",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeMovementType(event)
            end
        end
    })
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
            if event.phase == "ended" then
                private.changeMovementType(event)
            end
        end
    })
    local buttonSwim = widget.newButton({
        id = "buttonSwim",
        left = screen.left+150,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Swim",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeMovementType(event)
            end
        end
    })
    local buttonTeleport = widget.newButton({
        id = "buttonTeleport",
        left = screen.left+220,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Teleport",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeMovementType(event)
            end
        end
    })

    function private.MainClass()
        viking.x = screen.centerX
        viking.y = screen.centerY
        viking.moveBehavior = Walk:new()

        this:insert(buttonFly)
        this:insert(buttonWalk)
        this:insert(viking)

        buttonFly:addEventListener("tap", function() return true end)
        buttonWalk:addEventListener("tap", function() return true end)
        buttonSwim:addEventListener("tap", function() return true end)
        buttonTeleport:addEventListener( "tap", function() return true end)
        Runtime:addEventListener( "tap", private.onTap )
    end

    function private.onTap(event)
        viking.move(event.x, event.y)
    end

    function private.changeMovementType(event)
        if event.target.id  == "buttonFly" then
            viking.moveBehavior = Fly:new()
        elseif event.target.id  == "buttonWalk" then
            viking.moveBehavior = Walk:new()
        elseif event.target.id  == "buttonSwim" then
            viking.moveBehavior = Swim:new()
        elseif event.target.id  == "buttonTeleport" then
            viking.moveBehavior = Teleport:new()
        end
        return true
    end


    private.MainClass()
    return this
end
return MainClass
