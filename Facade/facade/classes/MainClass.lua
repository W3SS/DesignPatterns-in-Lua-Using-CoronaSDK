require "classes.constants.screen"
require "classes.Game"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local game = Game:new()

    function private.MainClass()

        --Game loop
        while true do
            game.update()
        end
    end


    private.MainClass()
    return this
end
return MainClass
