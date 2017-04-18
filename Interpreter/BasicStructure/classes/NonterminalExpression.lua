require "classes.constants.screen"

NonterminalExpression={}

function NonterminalExpression:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.NonterminalExpression()

    end

    function public.interpret(context)
        print("Called Nonterminal.interpret()")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.NonterminalExpression()
    return this
end
return NonterminalExpression
