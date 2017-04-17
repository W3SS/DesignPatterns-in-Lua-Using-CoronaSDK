require "classes.constants.screen"

Marine={}

function Marine:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Marine()

    end

    function public.attack()
        print("Marine firing guns")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Marine()
    return this
end
return Marine
