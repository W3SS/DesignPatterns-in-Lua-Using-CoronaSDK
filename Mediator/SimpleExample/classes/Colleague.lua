require "classes.constants.screen"

Colleague={}

function Colleague:new(mediator)
    local this = display.newGroup()
    local public = this
    local private = {}
    local mediator = mediator

    function private.Colleague()

    end

    function public.notifyGroup()
        mediator.notifyGroup(this)
    end

    function public.receive(sender)
        print("Receved notification from object ", sender)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Colleague()
    return this
end
return Colleague
