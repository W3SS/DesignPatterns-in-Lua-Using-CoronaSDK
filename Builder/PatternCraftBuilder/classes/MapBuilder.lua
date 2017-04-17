require "classes.constants.screen"
require "classes.Map"

MapBuilder={}

function MapBuilder:new()
    local this = display.newGroup()
    local private={}
    this.map = nil

    function private.MapBuilder()

    end

    function public.init()
        --map = Map:new()
        this.map = "abc"
    end

    function public.buildBackground()

    end

    function public.buildTerrain()

    end

    function public.buildMinerals()

    end

    function public.getMap()
        return map
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.MapBuilder()
    return this
end
return MapBuilder
