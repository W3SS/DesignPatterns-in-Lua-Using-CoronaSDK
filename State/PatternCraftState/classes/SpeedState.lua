require "classes.constants.screen"

SpeedState={}

function SpeedState:new(siegeTank)
    local this = display.newGroup()
    local public = this
    local private = {}
    local siegeTank = siegeTank
    this.current = "SpeedState"
    this.damage = 0
    this.canMove = true
    this.color = {0, 0, 204}

    function private.SpeedState()

    end

    function public.getDamage()
        return 0
    end

    function public.getCanMove()
        return true
    end

    function public.getColor()
        return {0, 0, 204}
    end

    function public.move(targetX, targetY)
        siegeTank.moveTextField.text = "Moving quickly to "..targetX..", "..targetY
    end

    function public.attack()
        siegeTank.attackTextField.text = "Can't attack :("
    end

    function public.toTankMode()
        siegeTank.state = siegeTank.tankState
    end

    function public.toSiegeMode()
        siegeTank.state = siegeTank.siegeState
    end

    function public.toSpeedMode()
        siegeTank.messageTextField.text = "Already in Speed Mode!"
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.SpeedState()
    return this
end
return SpeedState
