require "classes.constants.screen"

TankState={}

function TankState:new(siegeTank)
    local this = display.newGroup()
    local public = this
    local private = {}
    local siegeTank = siegeTank
    this.current = "TankState"
    this.damage = 50
    this.canMove = true
    this.color = {204, 0, 0}

    function private.TankState()

    end

    function public.getDamage()
        return 10
    end

    function public.getCanMove()
        return true
    end

    function public.getColor()
        return {204, 0, 0}
    end

    function public.move(targetX, targetY)
        siegeTank.moveTextField.text = "Moving to "..targetX..", "..targetY
    end

    function public.attack()
        siegeTank.attackTextField.text = "Attacking for "..this.damage
    end

    function public.toTankMode()
        siegeTank.messageTextField.text = "Already in Tank Mode!"
    end

    function public.toSiegeMode()
        siegeTank.state = siegeTank.siegeState
    end

    function public.toSpeedMode()
        siegeTank.state = siegeTank.speedState
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.TankState()
    return this
end
return TankState
