require "classes.constants.screen"

IVisitor={}

function IVisitor:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.IVisitor()

    end

    function public.visitLight(light)
    end

    function public.visitArmored(armored)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.IVisitor()
    return this
end
return IVisitor
