require "classes.constants.screen"
require "classes.Singleton"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.MainClass()

        Singleton.Instance()

    end


    private.MainClass()
    return this
end
return MainClass
