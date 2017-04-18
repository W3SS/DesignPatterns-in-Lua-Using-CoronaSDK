require "classes.constants.screen"

Context={}

function Context:new(inputStr)
    local this = display.newGroup()
    local private={}
    local input = inputStr --string
    local output = 0 --int

    function private.Context()

    end

    function this.getInput()
        return input
    end

    function this.setInput(inputS)
        input = inputS
    end

    function this.getOutput()
        return output
    end

    function this.setOutput(outputI)
        output = outputI
    end

    function this.startsWith(str)
        return this.getInput():sub(1, #str)  == str
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.Context()
    return this
end
return Context
