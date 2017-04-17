require "classes.constants.screen"
--require "classes.Soldier"
require "classes.FactorySoldier"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.MainClass()

        --local soldier = Soldier:new()
        local factorySoldier = FactorySoldier:new()
        local soldier = factorySoldier.createSoldier()

    end


    private.MainClass()
    return this
end
return MainClass
