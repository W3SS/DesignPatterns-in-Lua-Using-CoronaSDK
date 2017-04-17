require "classes.constants.screen"
require "classes.InputSystem"
require "classes.GameObjects"
require "classes.GameConsole"

Game={}

function Game:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local input = InputSystem:new()
    local objects = GameObjects:new()
    local screen = GameConsole:new()

    function private.Game()

    end

    function public.update()
        --Input
        input.getInput()
        --Update game objects (player, bad guys, etc)
        objects.update(input)
        --Draw
        screen.draw(objects)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Game()
    return this
end
return Game
