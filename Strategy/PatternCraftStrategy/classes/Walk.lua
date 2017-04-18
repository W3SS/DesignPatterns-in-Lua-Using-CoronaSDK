require "classes.constants.screen"
require "classes.Vehicle"

Walk={}

function Walk:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local isMoving = false

    function private.Walk()

    end

    function public.move(vehicle, x, y)
        isMoving = true

        transition.to(vehicle, {time=500,rotation=50, onComplete = private.onVikingRotateLeft})
        transition.to(vehicle, {time=3500, x=x, y=y, onComplete = function(obj)
            isMoving = false
            transition.to(vehicle, {time=500, rotation=0})
        end})
    end

    function private.onVikingRotateLeft(obj)
        if isMoving then
            transition.to(obj, {time=500,rotation=-50, onComplete = function(obj) private.onVikingRotateRight(obj) end})
        end
    end

    function private.onVikingRotateRight(obj)
        if isMoving then
            transition.to(obj, {time=500,rotation=50, onComplete =function(obj) private.onVikingRotateLeft(obj) end})
        end
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Walk()
    return this
end
return Walk
