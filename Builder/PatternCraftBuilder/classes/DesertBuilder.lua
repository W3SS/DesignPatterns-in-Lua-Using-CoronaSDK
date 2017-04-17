require "classes.constants.screen"
require "classes.Map"

DesertBuilder={}

function DesertBuilder:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local map

    function private.DesertBuilder()

    end

    function public.init()
        map = Map:new()
    end

    function public.buildBackground()
        map.background = "desert background"
    end

    function public.buildTerrain()
        map.terrain = "desert terrain"
    end

    function public.buildMinerals()
        map.minerals = "desert minerals"
    end

    function public.buildSky()
        map.sky = "desert sky"
    end

    function public.getMap()
        return map
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.DesertBuilder()
    return this
end
return DesertBuilder
