require "classes.constants.screen"
require "classes.nintendo.Mario"

MarioAdapter={}

function MarioAdapter:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local mario = Mario:new()

    function private.MarioAdapter()

    end

    function public.attack()
        mario.jumpAttack()
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.MarioAdapter()
    return this
end
return MarioAdapter
