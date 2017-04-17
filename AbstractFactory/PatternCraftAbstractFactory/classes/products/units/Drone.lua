require "classes.constants.screen"

Drone={}

function Drone:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local drone = display.newImageRect("img/drone.jpg", 45, 45)

    function private.Drone()

        this.path = drone.path
        this:insert(drone)

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Drone()
    return this
end
return Drone
