require "classes.constants.screen"

GameConsole={}

function GameConsole:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.GameConsole()

    end

    function public.clearScreen()
        print("Clearing screen...")
    end

    function public.draw(objects)
        print("Drawing ...")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.GameConsole()
    return this
end
return GameConsole
