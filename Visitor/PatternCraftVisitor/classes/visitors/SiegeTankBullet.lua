require "classes.constants.screen"
require "classes.visitors.IVisitor"

SiegeTankBullet={}

function SiegeTankBullet:new()
    local this = IVisitor:new()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 6, 6)

    function private.SiegeTankBullet()

        body:setFillColor(0/255, 0/255, 0/255)

        this:insert(body)

    end

    function public.visitLight(light)
        light.setHitPoints(light.getHitPoints() - 34)
    end

    function public.visitArmored(armored)
        armored.setHitPoints(armored.getHitPoints() - 21)
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.SiegeTankBullet()
    return this
end
return SiegeTankBullet
