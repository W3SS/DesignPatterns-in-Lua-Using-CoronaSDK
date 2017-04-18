require "classes.constants.screen"
require "classes.Context"
require "classes.ThousandExpression"
require "classes.HundredExpression"
require "classes.TenExpression"
require "classes.OneExpression"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local roman = "MCMXXVIII"
    local context = Context:new(roman)
    local tree = {
                    ThousandExpression:new(),
                    HundredExpression:new(),
                    TenExpression:new(),
                    OneExpression:new(),
                 }

    function private.MainClass()
        for i = 1, #tree do
            tree[i].interpret(context)
        end

        print(roman.." = "..context.getOutput())

    end

    private.MainClass()
    return this
end
return MainClass
