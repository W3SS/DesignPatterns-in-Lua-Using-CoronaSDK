require "classes.constants.screen"

ThousandExpression={}

function ThousandExpression:new()
    local this = display.newGroup()
    local private={}

    function private.ThousandExpression()

    end

    function this.interpret(context)
        print("thousend #context.getInput():", #context.getInput())
        if context.startsWith(this.nine()) then
            context.setOutput(context.getOutput() + (9 * this.multiplier()))
            context.setInput(context.getInput():sub(3))
        elseif context.startsWith(this.four()) then
            context.setOutput(context.getOutput() + (4 * this.multiplier()))
            context.setInput(context.getInput():sub(3))
        elseif context.startsWith(this.five()) then
            context.setOutput(context.getOutput() + (5 * this.multiplier()))
            context.setInput(context.getInput():sub(2))
        end

        while context.startsWith(this.one()) do
            context.setOutput(context.getOutput() + (1 * this.multiplier()))
            context.setInput(context.getInput():sub(2))
        end
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

    private.ThousandExpression()
    return this
end
return ThousandExpression
