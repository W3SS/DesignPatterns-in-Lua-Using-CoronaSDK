require "classes.constants.screen"
require "classes.PhoneBuilder"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.MainClass()
        p = PhoneBuilder:new()
        .os("Android")
        .ram(2)
        .battery(3000)
        .build()
    end


    private.MainClass()
    return this
end
return MainClass
