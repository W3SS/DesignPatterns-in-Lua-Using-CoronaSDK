require "classes.constants.screen"
require "classes.Mediator"
require "classes.Colleague"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local mediator = Mediator:new()
    local colleagueA = Colleague:new(mediator)
    local colleagueB = Colleague:new(mediator)
    local colleagueC = Colleague:new(mediator)

    function private.MainClass()
        mediator.addColleague(colleagueA)
        mediator.addColleague(colleagueB)
        mediator.addColleague(colleagueC)

        colleagueA.notifyGroup()
        colleagueB.notifyGroup()
    end


    private.MainClass()
    return this
end
return MainClass
