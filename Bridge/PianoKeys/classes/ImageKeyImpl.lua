require "classes.constants.screen"
require "classes.KeyImpl"

ImageKeyImpl={}

function ImageKeyImpl:new()
    local this = KeyImpl:new()
    local public = this
    local private = {}
    local body
    local color

    function private.ImageKeyImpl()

    end

    function public.drawKey()

        if color == "black" then
            body = display.newImageRect("img/key_black_up.png", 15, 53)
        else
            body = display.newImageRect("img/key_white_up.png", 26, 97)
        end

        this:insert(body)
    end

    function public.setColor(keyColor)
        color = keyColor
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.ImageKeyImpl()
    return this
end
return ImageKeyImpl
