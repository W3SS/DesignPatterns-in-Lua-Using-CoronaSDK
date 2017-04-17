require "classes.constants.screen"

Soldier={}

function Soldier:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local soldier = display.newImageRect("img/soldier.png", 45, 45)

    function private.Soldier()
        this.x = screen.centerX
        this.y = screen.centerY
        this.path = soldier.path
        this:insert(soldier)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Soldier()
    return this
end
return Soldier

