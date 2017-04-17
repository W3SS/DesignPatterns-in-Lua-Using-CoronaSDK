require "classes.constants.screen"
require "classes.products.structures.Nexus"
require "classes.products.units.Probe"

ProtossFactory={}

function ProtossFactory:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local probeCount = 5

    function private.ProtossFactory()

    end

    function public.createBase()
        return Nexus:new()
    end

    function public.createStartingUnits()
        local startingUnits={}
        for i=0, probeCount do
            local probe = Probe:new()
            probe.x = math.random(screen.width)
            probe.y = math.random(screen.height)
            startingUnits[#startingUnits+1] = probe

        end
        return startingUnits
    end

    function public:destroy()

        this:removeSelf()
        this = nil
    end

    private.ProtossFactory()
    return this
end
return ProtossFactory

