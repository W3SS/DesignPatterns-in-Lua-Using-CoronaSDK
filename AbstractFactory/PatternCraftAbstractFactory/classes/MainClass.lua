require "classes.constants.screen"
require "classes.Player"
require "classes.factory.ProtossFactory"
require "classes.factory.ZergFactory"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local zergFactory
    local protossFactory
    local player1
    local player2

    function private.MainClass()

        --zergFactory = ZergFactory:new()
        --player1 = Player:new()

        --player1.setRace(zergFactory)
        --player1.setup(screen.centerX, screen.centerY)

        protossFactory = ProtossFactory:new()
        player2 = Player:new()

        player2.setRace(protossFactory)
        player2.setup(100, 100)
    end


    private.MainClass()
    return this
end
return MainClass
