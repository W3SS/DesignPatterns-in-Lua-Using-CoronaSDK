require "classes.constants.screen"

ProcessorSecond={}

function ProcessorSecond:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local next

    function private.ProcessorSecond()

    end

    function public.setNext(newNext)
        next = newNext
    end

    function private.checkIfFree()
        return math.random(0, 2) == 0
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
            print("Processing with Second")
        else
            private.goNext(data)
        end
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.ProcessorSecond()
    return this
end
return ProcessorSecond
