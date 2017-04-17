require "classes.constants.screen"

Player={}

function Player:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local raceFactory

    function private.Player()

    end
    function public.setRace(newRaceFactory)
        raceFactory = newRaceFactory
    end

    function public.setup(x, y)
        local structure = raceFactory.createBase()
        structure.x=x
        structure.y=y

        local startingUnits = raceFactory.createStartingUnits()
        for i=0, #startingUnits do
            --do something
        end
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Player()
    return this
end
return Player

