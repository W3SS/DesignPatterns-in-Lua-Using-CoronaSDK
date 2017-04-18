require "classes.constants.screen"

OrExpression={}

function OrExpression:new(newExpr1, newExpr2)
    local this = display.newGroup()
    local public = this
    local private = {}
    local expr1 = newExpr1
    local expr2 = newExpr2

    function private.OrExpression()

    end

    function public.interpret(context)
        return expr1.interpret(context) or expr2.interpret(context)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.OrExpression()
    return this
end
return OrExpression
