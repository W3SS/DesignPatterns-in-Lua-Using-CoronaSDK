require "classes.constants.screen"

Drone={}

function Drone:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 75, 75)

    function private.Drone()

        body:setFillColor(0/255, 255/255, 0/255)

        this:insert(body)

    end

    function public.move(xPos, yPos)
        transition.to(this, { time=1500, x=xPos, y=yPos })
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.Drone()
    return this
end
return Drone
