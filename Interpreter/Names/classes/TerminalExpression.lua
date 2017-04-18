require "classes.constants.screen"

TerminalExpression={}

function TerminalExpression:new(newData)
    local this = display.newGroup()
    local private={}
    local data = newData

    function private.TerminalExpression()

    end
    function this.interpret(context)
        if string.match(context, data) then
            return true
        else
            return false
        end
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.TerminalExpression()
    return this
end
return TerminalExpression
