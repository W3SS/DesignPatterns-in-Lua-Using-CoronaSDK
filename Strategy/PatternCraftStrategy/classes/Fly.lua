require "classes.constants.screen"
require "classes.Vehicle"

Fly={}

function Fly:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Fly()

    end

    function public.move(vehicle, x, y)
        transition.to(vehicle, {time=1500, x=x, y=y})
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Fly()
    return this
end
return Fly
