require "classes.constants.screen"

GameObjects={}

function GameObjects:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.GameObjects()

    end

    function public.update(userInput)
        print("Updating positions of game objects...")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.GameObjects()
    return this
end
return GameObjects
