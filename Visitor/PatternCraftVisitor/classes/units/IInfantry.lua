require "classes.constants.screen"

IInfantry={}

function IInfantry:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.IInfantry()

    end

    function public.getMaxHitPoints()
    end

    function public.getHitPoints()
    end

    function public.setHitPoints(value)
    end

    function public.getX()
    end

    function public.getY()
    end

    function public.accept(visitor)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.IInfantry()
    return this
end
return IInfantry
