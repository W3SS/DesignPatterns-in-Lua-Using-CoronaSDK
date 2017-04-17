require "classes.constants.screen"
require "classes.Director"
require "classes.GrasslandBuilder"
require "classes.DesertBuilder"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local director = Director:new()
    local grasslandBuilder = GrasslandBuilder:new()
    local desertBuilder = DesertBuilder:new()
    local map
    local map2

    function private.MainClass()
        map = director.constructType1(grasslandBuilder)

        map2 = director.constructType3(desertBuilder)

        print(map.background, map.terrain, map.minerals)
        print(map2.background, map2.terrain, map2.minerals, map2.sky)
    end


    private.MainClass()
    return this
end
return MainClass
