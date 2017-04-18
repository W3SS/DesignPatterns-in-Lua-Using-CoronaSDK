require "classes.constants.screen"

SiegeState={}

function SiegeState:new(siegeTank)
    local this = display.newGroup()
    local public = this
    local private = {}
    local siegeTank = siegeTank
    this.current = "SiegeState"
    this.damage = 20
    this.canMove = false
    this.color = {0, 204, 0}

    function private.SiegeState()

    end

    function public.getDamage()
        return 20
    end

    function public.getCanMove()
        return false
    end

    function public.getColor()
        return {0, 204, 0}
    end

    function public.move(targetX, targetY)
        siegeTank.moveTextField.text = "Can't move :("
    end

    function public.attack()
        siegeTank.attackTextField.text = "Attacking for "..this.damage
    end

    function public.toTankMode()
        siegeTank.state = siegeTank.tankState
    end

    function public.toSiegeMode()
        siegeTank.messageTextField.text = "Already in Siege Mode!"
    end

    function public.toSpeedMode()
        siegeTank.messageTextField.text = "Can't go to speed from siege"
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.SiegeState()
    return this
end
return SiegeState
