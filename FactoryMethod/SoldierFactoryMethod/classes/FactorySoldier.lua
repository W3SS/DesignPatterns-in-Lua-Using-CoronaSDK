require "classes.constants.screen"
require "classes.Soldier"

FactorySoldier={}

function FactorySoldier:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.FactorySoldier()

    end

    function public.createSoldier()
        return Soldier:new()
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.FactorySoldier()
    return this
end
return FactorySoldier

