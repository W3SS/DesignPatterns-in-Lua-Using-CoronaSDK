require "classes.constants.screen"

HundredExpression={}

function HundredExpression:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.HundredExpression()

    end

    function public.interpret(context)
        print("hundred #context.getInput():", #context.getInput())
        if context.startsWith(private.nine()) then
            context.setOutput(context.getOutput() + (9 * private.multiplier()))
            context.setInput(context.getInput():sub(3))
        elseif context.startsWith(private.four()) then
            context.setOutput(context.getOutput() + (4 * private.multiplier()))
            context.setInput(context.getInput():sub(3))
        elseif context.startsWith(private.five()) then
            context.setOutput(context.getOutput() + (5 * private.multiplier()))
            context.setInput(context.getInput():sub(2))
        end

        while context.startsWith(private.one()) do
            context.setOutput(context.getOutput() + (1 * private.multiplier()))
            context.setInput(context.getInput():sub(2))
        end
    end

    function private.one()
        local str = "C"
        return str
    end

    function private.four()
        local str = "CD"
        return str
    end

    function private.five()
        local str = "D"
        return str
    end

    function private.nine()
        local str = "CM"
        return str
    end

    function private.multiplier()
        return 100
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.HundredExpression()
    return this
end
return HundredExpression
