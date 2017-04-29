require "classes.constants.screen"

ProcessorThird={}

function ProcessorThird:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local next

    function private.ProcessorThird()

    end

    function public.setNext(newNext)
        next = newNext
    end

    function private.checkIfFree()
        return false --math.random(0, 2) == 0
    end

    function private.goNext(data)
        if next then
            next.execute(data)
        else
            print("No processor available")
        end
    end

    function public.execute(data)
        if private.checkIfFree() then
            print("Processing with Third")
        else
            private.goNext(data)
        end
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.ProcessorThird()
    return this
end
return ProcessorThird
