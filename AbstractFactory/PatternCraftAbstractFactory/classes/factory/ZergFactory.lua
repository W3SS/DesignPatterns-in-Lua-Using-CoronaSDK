require "classes.constants.screen"
require "classes.products.structures.Hatchery"
require "classes.products.units.Drone"

ZergFactory={}

function ZergFactory:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local droneCount = 5

    function private.ZergFactory()

    end

    function public.createBase()
        return Hatchery:new()
    end

    function public.createStartingUnits()
        local startingUnits={}
        for i=0, droneCount do
            local drone = Drone:new()
            drone.x = math.random(screen.width)
            drone.y = math.random(screen.height)
            startingUnits[#startingUnits+1] = drone

        end
        return startingUnits
    end

    function public:destroy()

        this:removeSelf()
        this = nil
    end

    private.ZergFactory()
    return this
end
return ZergFactory

