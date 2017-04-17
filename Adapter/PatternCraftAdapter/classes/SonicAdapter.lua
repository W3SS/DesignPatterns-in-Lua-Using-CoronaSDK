require "classes.constants.screen"
require "classes.sega.Sonic"

SonicAdapter={}

function SonicAdapter:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local sonic = Sonic:new()

    function private.SonicAdapter()

    end

    function public.attack()
        sonic.spinAttack()
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.SonicAdapter()
    return this
end
return SonicAdapter
