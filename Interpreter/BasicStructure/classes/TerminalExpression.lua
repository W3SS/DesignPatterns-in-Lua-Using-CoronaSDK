require "classes.constants.screen"

TerminalExpression={}

function TerminalExpression:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.TerminalExpression()

    end

    function public.interpret(context)
        print("Called Terminal.interpret()")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.TerminalExpression()
    return this
end
return TerminalExpression
