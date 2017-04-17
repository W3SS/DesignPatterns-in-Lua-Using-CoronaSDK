require "classes.constants.screen"

ProcessorSecond={}

function ProcessorSecond:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.ProcessorSecond()

    end

    function public.setNext(next)
        this.next = next
    end

    function private.checkIfFree()
        return true--new Random().next(2) == 0
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
