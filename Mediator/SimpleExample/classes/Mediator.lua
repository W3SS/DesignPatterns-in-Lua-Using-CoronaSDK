require "classes.constants.screen"

Mediator={}

function Mediator:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local colleagues = {}

    function private.Mediator()

    end

    function public.notifyGroup(sender)
        for i = 1, #colleagues do
            if colleagues[i] ~= sender then
                colleagues[i].receive(sender)
            end
        end
    end

    function public.addColleague(colleague)
        colleagues[#colleagues+1] = colleague
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Mediator()
    return this
end
return Mediator
