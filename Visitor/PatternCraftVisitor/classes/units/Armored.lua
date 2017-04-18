require "classes.constants.screen"
require "classes.units.IInfantry"

Armored={}

function Armored:new()
    local this = IInfantry:new()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 30, 30)
    local hitPointsDisplay = display.newText("", 0, 0, native.systemFont, 10)
    local hitPoints = 125

    function private.Armored()
        body:setFillColor(0/255, 204/255, 0/255)

        hitPointsDisplay.x = 5
        hitPointsDisplay.y = 8
        hitPointsDisplay.anchorX = 0
        hitPointsDisplay.anchorY = 0
        hitPointsDisplay:setFillColor(0/255, 0/255, 0/255)

        this:insert(body)
        this:insert(hitPointsDisplay)

        public.updateHitPointsDisplay()
    end

    function public.updateHitPointsDisplay()
        hitPointsDisplay.text = ""..hitPoints .. "/" .. public.getMaxHitPoints()
    end

    function public.getHitPoints()
        return hitPoints
    end

    function public.setHitPoints(value)
        hitPoints = value
        public.updateHitPointsDisplay()
    end

    function public.getX()
        return this.x
    end

    function public.getY()
        return this.y
    end

    function public.getMaxHitPoints()
        return 125
    end

    function public.accept(bullet)
        bullet.visitArmored(this)
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.Armored()
    return this
end
return Armored
