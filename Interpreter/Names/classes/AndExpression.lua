require "classes.constants.screen"

AndExpression={}

function AndExpression:new(newExpr1, newExpr2)
    local this = display.newGroup()
    local private={}
    local expr1 = newExpr1
    local expr2 = newExpr2

    function private.AndExpression()

    end

    function this.interpret(context)
        return expr1.interpret(context) and expr2.interpret(context)
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.AndExpression()
    return this
end
return AndExpression
