require "classes.constants.screen"

Hatchery={}

function Hatchery:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local hatchery = display.newImageRect("img/hatchery.jpg", 83, 86)

    function private.Hatchery()

        this.path = hatchery.path
        this:insert(hatchery)

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Hatchery()
    return this
end
return Hatchery
