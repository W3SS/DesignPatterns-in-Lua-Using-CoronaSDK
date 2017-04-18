require "classes.constants.screen"
require "classes.visitors.SiegeTankBullet"
require "classes.visitors.StatsVisitor"
require "classes.units.Armored"
require "classes.units.Light"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local background = display.newRect(0,0, 360, 570)
    local infantry = {}

    function private.MainClass()

        background.x = screen.centerX
        background.y = screen.centerY

        this:insert(background)

        for i = 0, 10 do
            local light = Light:new()
            light.x = math.random() * screen.width
            light.y = math.random() * screen.height

            this:insert(light)

            light:addEventListener("touch", private.onInfantryClick)

            infantry[#infantry+1]=light

            local armored = Armored:new()
            armored.x = math.random() * screen.width
            armored.y = math.random() * screen.height

            this:insert(armored)

            armored:addEventListener("touch", private.onInfantryClick)

            infantry[#infantry+1]=armored

        end
    end

    function private.onInfantryClick(event)
        if event.phase == "began" then
            local infantryDude = event.target

            local bullet = SiegeTankBullet:new()
            bullet.x = screen.centerX
            bullet.y = screen.centerY
            this:insert(bullet)

            transition.to( bullet, { time=1000, x = infantryDude.x, y = infantryDude.y, onComplete=function() private.onInfantryHit(infantryDude, bullet) end } )
        end
    end

    function private.onInfantryHit(infantryDude, bullet)
        infantryDude.accept(bullet)
    end

    private.MainClass()
    return this
end
return MainClass
