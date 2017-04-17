require "classes.constants.screen"

Zergling={}

function Zergling:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Zergling()

    end

    function public.attack()
        print("Zergling clawing attack")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Zergling()
    return this
end
return Zergling
