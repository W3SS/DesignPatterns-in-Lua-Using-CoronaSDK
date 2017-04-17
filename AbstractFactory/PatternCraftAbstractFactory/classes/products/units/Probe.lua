require "classes.constants.screen"

Probe={}

function Probe:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local probe = display.newImageRect("img/probe.jpg", 45, 45)

    function private.Probe()

        this.path = probe.path
        this:insert(probe)

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Probe()
    return this
end
return Probe
