require "classes.constants.screen"

ThousandExpression={}

function ThousandExpression:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.ThousandExpression()

    end

    function public.interpret(context)
        print("thousend #context.getInput():", #context.getInput())
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
        local str = "M"
        return str
    end

    function private.four()
        local str = " "
        return str
    end

    function private.five()
        local str = " "
        return str
    end

    function private.nine()
        local str = " "
        return str
    end

    function private.multiplier()
        return 1000
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.ThousandExpression()
    return this
end
return ThousandExpression
