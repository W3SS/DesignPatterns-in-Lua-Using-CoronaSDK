require "classes.constants.screen"
require "classes.AsyncCommand"

GatherCommand={}

function GatherCommand:new(scv)
    local this = AsyncCommand:new()
    local public = this
    local private = {}
    this.superExecute = this.execute
    this.scv = scv

    function private.GatherCommand()

    end

    function public.execute()
        this.superExecute()
        local gatherTween  = scv.gather()
        gatherTween:addEventListener("GATHERCOMPLETE", private.onComplete)
    end

    function private.onComplete(event)
        print("********GATHERCOMMAND**************")
        this.complete()
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.GatherCommand()
    return this
end
return GatherCommand
