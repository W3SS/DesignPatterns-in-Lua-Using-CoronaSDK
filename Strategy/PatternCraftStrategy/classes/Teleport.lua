require "classes.constants.screen"
require "classes.Vehicle"

Teleport={}

function Teleport:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Teleport()

    end

    function public.move(vehicle, x, y)
        vehicle.x = x
        vehicle.y = y
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Teleport()
    return this
end
return Teleport
