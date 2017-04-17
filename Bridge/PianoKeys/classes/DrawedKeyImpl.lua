require "classes.constants.screen"
require "classes.KeyImpl"

DrawedKeyImpl={}

function DrawedKeyImpl:new()
    local this = KeyImpl:new()
    local public = this
    local private = {}
    local body
    local color

    function private.DrawedKeyImpl()

    end

    function public.drawKey()

        if color == "black" then
            body = display.newRect(0, 0, 20, 80)
            body:setFillColor(0/255, 0/255, 0/255)
            body:setStrokeColor(125/255, 125/255, 125/255)
            body.strokeWidth=3
        else
            body = display.newRect(0, 0, 50, 150)
            body:setFillColor(255/255, 255/255, 255/255)
            body:setStrokeColor(155/255, 155/255, 155/255)
            body.strokeWidth=3
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

    private.DrawedKeyImpl()
    return this
end
return DrawedKeyImpl
