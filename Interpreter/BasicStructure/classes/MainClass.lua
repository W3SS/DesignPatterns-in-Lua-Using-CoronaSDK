require "classes.constants.screen"
require "classes.Context"
require "classes.TerminalExpression"
require "classes.NonterminalExpression"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local context = Context:new()
    local list = {}

    function private.MainClass()

        list[#list+1] = TerminalExpression:new()
        list[#list+1] = NonterminalExpression:new()
        list[#list+1] = TerminalExpression:new()
        list[#list+1] = TerminalExpression:new()

        for i = 1, #list do
            list[i].interpret(context)
        end
    end

    private.MainClass()
    return this
end
return MainClass
