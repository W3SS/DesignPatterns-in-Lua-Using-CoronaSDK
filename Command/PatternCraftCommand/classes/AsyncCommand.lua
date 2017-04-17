require "classes.constants.screen"

AsyncCommand={}

function AsyncCommand:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.callback = nil

    function private.AsyncCommand()

    end

    function public.execute()

    end

    function public.addCompleteCallback(callback)
        print("addcompletecallback")
        this.callback = callback
    end

    function public.complete()
        print("callback")
        --this.callback.call()
        this.callback()
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.AsyncCommand()
    return this
end
return AsyncCommand
