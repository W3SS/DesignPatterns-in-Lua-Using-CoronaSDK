require "classes.constants.screen"
require "classes.IUnit"
require "classes.Marine"
require "classes.MarioAdapter"
require "classes.SonicAdapter"
require "classes.Zealot"
require "classes.Zergling"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local zealot = Zealot:new()
    local marine = Marine:new()
    local zergling = Zergling:new()

    local mario = MarioAdapter:new()
    local sonic = SonicAdapter:new()

    local units = {zealot, marine, zergling, mario, sonic}

    function private.MainClass()
        for i, unit in pairs(units) do
            unit.attack()
        end
    end


    private.MainClass()
    return this
end
return MainClass
