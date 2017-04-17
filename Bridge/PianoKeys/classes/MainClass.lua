require "classes.constants.screen"
require "classes.ImageKeyImpl"
require "classes.DrawedKeyImpl"
require "classes.WhiteKey"
require "classes.BlackKey"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.MainClass()
        local keyImgImpl = ImageKeyImpl:new()
        local keyD = WhiteKey:new(keyImgImpl)

        keyD.drawKey()
        keyD.x = screen.centerX
        keyD.y = screen.centerY

        local keyDrawedImpl = DrawedKeyImpl:new()
        local keyDSharp = BlackKey:new(keyDrawedImpl)

        keyDSharp.drawKey()
        keyDSharp.x = screen.centerX+100
        keyDSharp.y = screen.centerY

        --key.play()

        this:insert(keyD)
        this:insert(keyDSharp)
    end

    private.MainClass()
    return this
end
return MainClass
