require "classes.constants.screen"
require "classes.Map"

GrasslandBuilder={}

function GrasslandBuilder:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local map

    function private.GrasslandBuilder()

    end

    function public.init()
        map = Map:new()
    end

    function public.buildBackground()
        map.background = "grassland background"
    end

    function public.buildTerrain()
        map.terrain = "grassland terrain"
    end

    function public.buildMinerals()
        map.minerals = "grass minerals"
    end

    function public.buildSky()

    end

    function public.getMap()
        return map
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.GrasslandBuilder()
    return this
end
return GrasslandBuilder
