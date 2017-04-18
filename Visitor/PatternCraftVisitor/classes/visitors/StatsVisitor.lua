require "classes.constants.screen"
require "classes.visitors.IVisitor"

StatsVisitor={}

function StatsVisitor:new()
    local this = IVisitor:new()
    local public = this
    local private = {}
    local groupMaxHitPoints = 0
    local groupHitPoints = 0

    function private.StatsVisitor()

    end

    function public.visitLight(light)
        groupMaxHitPoints = groupMaxHitPoints + light.maxHitPoints
        groupHitPoints = groupHitPoints + light.hitPoints
    end

    function public.visitArmored(armored)
        groupMaxHitPoints = groupMaxHitPoints + armored.maxHitPoints
        groupHitPoints = groupHitPoints + armored.hitPoints
    end

    function public.print()
        print("Total "..groupHitPoints.."/".. groupMaxHitPoints)
    end

    function public:destroy()

        this:removeSelf()
        this = nil
    end

    private.StatsVisitor()
    return this
end
return StatsVisitor
