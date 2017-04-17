require "classes.constants.screen"

Zealot={}

function Zealot:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Zealot()

    end

    function public.attack()
        print("Zealot slash attack")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Zealot()
    return this
end
return Zealot
