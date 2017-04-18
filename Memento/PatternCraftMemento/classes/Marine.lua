require "classes.constants.screen"
require "classes.MarineMemento"

Marine={}

function Marine:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local body = display.newCircle(0, 0, 20)

    function private.Marine()

        body:setFillColor(204/255, 0/255, 0/255)

        this:insert(body)

    end

    function public.getMemento()
        return MarineMemento:new(this.x, this.y)
    end

    function public.setMemento(value)
        this.x = value.x
        this.y = value.y
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.Marine()
    return this
end
return Marine
