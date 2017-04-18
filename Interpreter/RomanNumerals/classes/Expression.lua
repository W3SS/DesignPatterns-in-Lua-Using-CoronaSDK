require "classes.constants.screen"

Expression={}

function Expression:new()
    local this = display.newGroup()
    local private={}

    function private.Expression()

    end

    function this.interpret(context)
        if this.startsWith(this.nine()) then
            context.setOutput(context.getOutput() + (9 * this.multiplier()))
            context.setInput(context.getInput():sub(3))
        elseif this.startsWith(this.four()) then
            context.setOutput(context.getOutput() + (4 * this.multiplier()))
            context.setInput(context.getInput():sub(3))
        elseif this.startsWith(this.five()) then
            context.setOutput ( context.getOutput() + (5 * this.multiplier()))
            context.setInput ( context.getInput():sub(2))
        elseif this.startsWith(this.one()) then
            context.setOutput ( context.getOutput() + (1 * this.multiplier()))
            context.setInput ( context.getInput():sub(2))
        end
    end

    function this.startsWith(str)
        print(s:sub(1, #str))
        return context.getInput:sub(1, #str)
    end

    function this.one()
        local str = "M"
        return str
    end

    function this.four()
        local str = " "
        return str
    end

    function this.five()
        local str = " "
        return str
    end

    function this.nine()
        local str = " "
        return str
    end

    function this.multiplier()
        return 1000
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.Expression()
    return this
end
return Expression
