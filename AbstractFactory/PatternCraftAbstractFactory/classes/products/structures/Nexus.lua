require "classes.constants.screen"

Nexus={}

function Nexus:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local nexus = display.newImageRect("img/nexus.jpg", 83, 86)

    function private.Nexus()

        this.path = nexus.path
        this:insert(nexus)

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Nexus()
    return this
end
return Nexus
