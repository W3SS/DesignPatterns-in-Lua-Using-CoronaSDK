require "classes.constants.screen"
require "classes.TerminalExpression"
require "classes.OrExpression"
require "classes.AndExpression"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local private={}
    local isMale

    function private.MainClass()
        isMale = this.getMaleExpression()
        isMarriedWoman = this.getMarriedWomanExpression()

        print("John is male? "..tostring(isMale.interpret("John")))
        print("Julie is a married woman? "..tostring(isMarriedWoman.interpret("Married Julie")))
    end

    --Rule: Robert and John are male
    function this.getMaleExpression()
        local robert = TerminalExpression:new("Robert")
        local john = TerminalExpression:new("John")

        return OrExpression:new(robert, john)
    end

    --Rule: Julie is a married woman
    function this.getMarriedWomanExpression()
        local julie = TerminalExpression:new("Julie")
        local married = TerminalExpression:new("Married")

        return AndExpression:new(julie, married)
    end

    private.MainClass()
    return this
end
return MainClass
