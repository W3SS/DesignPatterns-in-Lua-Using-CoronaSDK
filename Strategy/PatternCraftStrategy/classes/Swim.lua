require "classes.constants.screen"
require "classes.Vehicle"

Swim={}

function Swim:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local isMoving = false

    function private.Swim()

    end

    function public.move(vehicle, x, y)
        isMoving = true

        transition.to(vehicle, {time=500, xScale=1.8, yScale=1.8, onComplete=private.onVikingRotateRight })
        transition.to(vehicle, {time=3500, x=x, y=y, onComplete = function(obj)
            isMoving = false
            transition.to(vehicle, {time=500, xScale=1, yScale=1})
        end})
    end

    function private.onVikingRotateLeft(obj)
        if isMoving then
            transition.to(obj, {time=500, xScale=1.8, yScale=1.8, onComplete = function(obj) private.onVikingRotateRight(obj) end})
        end
    end

    function private.onVikingRotateRight(obj)
        if isMoving then
            transition.to(obj, {time=500, xScale=1, yScale=1, onComplete =function(obj) private.onVikingRotateLeft(obj) end})
        end
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Swim()
    return this
end
return Swim
