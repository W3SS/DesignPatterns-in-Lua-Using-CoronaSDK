require "classes.constants.screen"
require "classes.units.IInfantry"

Light={}

function Light:new()
    local this = IInfantry:new()
    local public = this
    local private = {}
    local body = display.newCircle(0, 0, 15)
    local hitPointsDisplay = display.newText("", 0, 0, native.systemFont, 10)
    local hitPoints = 45

    function private.Light()
        body:setFillColor(204/255, 0/255, 0/255)

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
        hitPointsDisplay.text = "".. public.getHitPoints() .. "/" .. public.getMaxHitPoints()
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
        return 45
    end

    function public.accept(bullet)
        bullet.visitLight(this)
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.Light()
    return this
end
return Light
