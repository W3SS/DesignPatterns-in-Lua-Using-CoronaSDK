require "classes.constants.screen"

Mario={}

function Mario:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Mario()

    end

    function public.jumpAttack()
        print("Jumping on the bad guy's head")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Mario()
    return this
end
return Mario
