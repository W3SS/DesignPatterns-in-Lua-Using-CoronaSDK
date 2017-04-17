require "classes.constants.screen"

Director={}

function Director:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Director()

    end

    function public.constructType1(builder)
        builder.init()
        builder.buildBackground()
        builder.buildTerrain()
        builder.buildMinerals()
        return builder.getMap()
    end

    function public.constructType2(builder)
        builder.init()
        builder.buildTerrain()
        builder.buildMinerals()
        return builder.getMap()
    end

    function public.constructType3(builder)
        builder.init()
        builder.buildBackground()
        builder.buildTerrain()
        builder.buildMinerals()
        builder.buildSky()
        return builder.getMap()
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Director()
    return this
end
return Director
