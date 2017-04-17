require "classes.constants.screen"

IUnit={}

function IUnit:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.moveBehavior = nil

    function private.Vehicle()

    end

    function public.attack()
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.IUnit()
    return this
end
return IUnit
