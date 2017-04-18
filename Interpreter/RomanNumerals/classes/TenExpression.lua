require "classes.constants.screen"

TenExpression={}

function TenExpression:new()
    local this = display.newGroup()
    local private={}

    function private.TenExpression()

    end

    function this.interpret(context)
        print("ten #context.getInput():", #context.getInput())
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
        local str = "X"
        return str
    end

    function this.four()
        local str = "XL"
        return str
    end

    function this.five()
        local str = "L"
        return str
    end

    function this.nine()
        local str = "XC"
        return str
    end

    function this.multiplier()
        return 10
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.TenExpression()
    return this
end
return TenExpression
