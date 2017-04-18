require "classes.constants.screen"

OneExpression={}

function OneExpression:new()
    local this = display.newGroup()
    local private={}

    function private.OneExpression()

    end

    function this.interpret(context)
        print("one #context.getInput():", #context.getInput())
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
        local str = "I"
        return str
    end

    function this.four()
        local str = "IV"
        return str
    end

    function this.five()
        local str = "V"
        return str
    end

    function this.nine()
        local str = "IX"
        return str
    end

    function this.multiplier()
        return 1
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.OneExpression()
    return this
end
return OneExpression
