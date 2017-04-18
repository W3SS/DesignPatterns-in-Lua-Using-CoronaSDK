require "classes.constants.screen"

Context={}

function Context:new(inputStr)
    local this = display.newGroup()
    local public = this
    local private = {}
    local input = inputStr --string
    local output = 0 --int

    function private.Context()

    end

    function public.getInput()
        return input
    end

    function public.setInput(inputS)
        input = inputS
    end

    function public.getOutput()
        return output
    end

    function public.setOutput(outputI)
        output = outputI
    end

    function public.startsWith(str)
        return this.getInput():sub(1, #str)  == str
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Context()
    return this
end
return Context
