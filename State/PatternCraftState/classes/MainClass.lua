require "classes.constants.screen"
require "classes.SiegeTank"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local buttonAttack = widget.newButton({
        id = "buttonAttack",
        left = screen.left+10,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Attack",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeStateType(event)
            end
        end
    })
    local buttonTank = widget.newButton({
        id = "buttonTank",
        left = screen.left+80,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Tank",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeStateType(event)
            end
        end
    })
    local buttonSiege= widget.newButton({
        id = "buttonSiege",
        left = screen.left+150,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Siege",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeStateType(event)
            end
        end
    })
    local buttonSpeed = widget.newButton({
        id = "buttonSpeed",
        left = screen.left+220,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Speed",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeStateType(event)
            end
        end
    })

    function private.MainClass()
        siegeTank = SiegeTank:new();

        siegeTank.x = 100;
        siegeTank.y = 100;

        this:insert(siegeTank)

        buttonAttack:addEventListener("tap", function() return true end)
        buttonTank:addEventListener("tap", function() return true end)
        buttonSiege:addEventListener("tap", function() return true end)
        buttonSpeed:addEventListener( "tap", function() return true end)
        Runtime:addEventListener( "tap", private.onTap )
    end

    function private.onTap(event)
        siegeTank.move(event.x, event.y)
    end

    function private.changeStateType(event)
        if event.target.id  == "buttonAttack" then
            siegeTank.attack()
        elseif event.target.id  == "buttonTank" then
            siegeTank.toTankMode()
        elseif event.target.id  == "buttonSiege" then
            siegeTank.toSiegeMode()
        elseif event.target.id  == "buttonSpeed" then
            siegeTank.toSpeedMode()
        end
        return true
    end


    private.MainClass()
    return this
end
return MainClass
