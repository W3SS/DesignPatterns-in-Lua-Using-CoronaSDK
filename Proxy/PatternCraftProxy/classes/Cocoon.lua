require "classes.constants.screen"
require "classes.Drone"

Cocoon={}

function Cocoon:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 75, 75)
    local drone
    local rallyPoint

    function private.Cocoon()

        body:setFillColor(204/255, 204/255, 204/255)

        this:insert(body)

        timer.performWithDelay(3000, private.onTimerComplete)

    end

    function private.onTimerComplete(event)
        drone = Drone:new()

        body:removeSelf()
        body = nil

        this:insert(drone)

        if rallyPoint then
            drone.move(rallyPoint.x,  rallyPoint.y)
        end
    end

    function public.move(xPos, yPos)
        if drone then
            drone.move(xPos, yPos)
        else
            rallyPoint = {x = xPos, y = yPos}
        end
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.Cocoon()
    return this
end
return Cocoon
