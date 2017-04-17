require "classes.constants.screen"
require "classes.SCV"
require "classes.AttackCommand"
require "classes.GatherCommand"
require "classes.MoveCommand"
require "classes.CommandList"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local scv
    local commandList = CommandList:new()
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
                private.changeCommand(event)
            end
        end
    })
    local buttonGather = widget.newButton({
        id = "buttonGather",
        left = screen.left+80,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Gather",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeCommand(event)
            end
        end
    })

    function private.MainClass()
        scv = SCV:new()

        scv.x = 100
        scv.y = 100

        this:insert(scv)

        buttonAttack:addEventListener("tap", function() return true end)
        buttonGather:addEventListener("tap", function() return true end)
        Runtime:addEventListener( "tap", private.onTap )
        --timer.performWithDelay(1000, private.executeCommand, 0)
        --this:dispatchEvent({name="GOTOALLPRODUCTS", target=this })
        --screen:addEventListener( "GOTOALLPRODUCTS", showAllProducts )
    end

    function private.executeCommand(event)
        if #commandList > 0 then
            local command = table.remove(commandList,1)
            command.execute()
        end
    end

    function private.onTap(event)
        commandList.add(MoveCommand:new(scv, event.x, event.y))
        --local moveCommand = MoveCommand:new(scv, event.x, event.y)
        --table.insert(commandList, moveCommand)
    end

    function private.changeCommand(event)
        if event.target.id  == "buttonAttack" then
            commandList.add(AttackCommand:new(scv))
            --local attackCommand = AttackCommand:new(scv)
            --table.insert(commandList, attackCommand)
        elseif event.target.id  == "buttonGather" then
            commandList.add(GatherCommand:new(scv))
            --local gatherCommand = GatherCommand:new(scv)
            --table.insert(commandList, gatherCommand)
        end
        return true
    end

    private.MainClass()
    return this
end
return MainClass
