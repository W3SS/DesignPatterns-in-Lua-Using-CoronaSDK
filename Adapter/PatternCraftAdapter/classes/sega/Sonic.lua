require "classes.constants.screen"

Sonic={}

function Sonic:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Sonic()

    end

    function public.spinAttack()
        print("Spinning into the bad dudes")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Sonic()
    return this
end
return Sonic
