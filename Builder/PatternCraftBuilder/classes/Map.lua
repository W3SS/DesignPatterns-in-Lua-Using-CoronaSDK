require "classes.constants.screen"

Map={}

function Map:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.background = ""
    this.terrain = ""
    this.minerals = ""
    this.sky = ""

    function private.Map()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Map()
    return this
end
return Map
