require "classes.constants.screen"

OneExpression={}

function OneExpression:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.OneExpression()

    end

    function public.interpret(context)
        print("one #context.getInput():", #context.getInput())
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
        local str = "I"
        return str
    end

    function private.four()
        local str = "IV"
        return str
    end

    function private.five()
        local str = "V"
        return str
    end

    function private.nine()
        local str = "IX"
        return str
    end

    function private.multiplier()
        return 1
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.OneExpression()
    return this
end
return OneExpression
