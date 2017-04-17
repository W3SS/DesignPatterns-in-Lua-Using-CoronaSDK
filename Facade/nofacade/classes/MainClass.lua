require "classes.constants.screen"
require "classes.InputSystem"
require "classes.GameObjects"
require "classes.GameConsole"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local input = InputSystem:new()
    local objects = GameObjects:new()
    local screen = GameConsole:new()

    function private.MainClass()

        --Game loop
        while true do
            --Input
            input.getInput()
            --Update game objects (player, bad guys, etc)
            objects.update(input)
            --Draw
            screen.draw(objects)
        end
    end


    private.MainClass()
    return this
end
return MainClass
