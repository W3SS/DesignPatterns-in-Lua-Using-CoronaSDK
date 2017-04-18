require "classes.constants.screen"

Vehicle={}

function Vehicle:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.moveBehavior = nil

    function private.Vehicle()

    end

    function public.move(x, y)
        print("vehicle is moving")
        this.moveBehavior.move(this, x, y)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Vehicle()
    return this
end
return Vehicle
