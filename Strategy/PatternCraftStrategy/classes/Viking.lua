require "classes.constants.screen"
require "classes.Vehicle"

Viking={}

function Viking:new()
    local this = Vehicle:new()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 50, 15)

    function private.Viking()

        body:setFillColor(204/255, 0/255, 0/255)

        this:insert(body)

    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.Viking()
    return this
end
return Viking
