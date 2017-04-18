require "classes.constants.screen"
require "classes.TankState"
require "classes.SiegeState"
require "classes.SpeedState"

SiegeTank={}

function SiegeTank:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 300, 100)
    local lastState
    this.messageTextField = display.newText("", 0, 0, native.systemFont, 12)
    this.moveTextField = display.newText("", 0, 0, native.systemFont, 12)
    this.attackTextField = display.newText("", 0, 0, native.systemFont, 12)
    this.state = nil
    this.tankState = nil
    this.siegeState = nil
    this.speedState = nil

    function private.SiegeTank()
        this.messageTextField.x = 0
        this.messageTextField.y = -30

        this.moveTextField.x = 0
        this.moveTextField.y = -5

        this.attackTextField.x = 0
        this.attackTextField.y = 20

        this:insert(body)
        this:insert(this.messageTextField)
        this:insert(this.moveTextField)
        this:insert(this.attackTextField)

        this.tankState = TankState:new(this)
        this.siegeState = SiegeState:new(this)
        this.speedState = SpeedState:new(this)

        this.state = this.tankState
        private.applyState()
        lastState = this.tankState.current
    end

    function public.toTankMode()
        this.state.toTankMode()
        if lastState ~= this.state.current then
            private.applyState()
            lastState = this.state.current
        end
    end

    function public.toSiegeMode()
        this.state.toSiegeMode()
        if lastState ~= this.state.current then
            private.applyState()
            lastState = this.state.current
        end
    end

    function public.toSpeedMode()
        this.state.toSpeedMode()
        if lastState ~= this.state.current then
            private.applyState()
            lastState = this.state.current
        end
    end

    function private.applyState()
        this.messageTextField.text = "Status: damage: "..this.state.damage.." canMove: "..tostring(this.state.canMove)
        this.moveTextField.text = ""
        this.attackTextField.text = ""

        body:setFillColor(this.state.color[1]/255, this.state.color[2]/255, this.state.color[3]/255)
    end

    function public.attack()
        this.state.attack()
    end

    function public.move(targetX, targetY)
        this.state.move(targetX, targetY)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.SiegeTank()
    return this
end
return SiegeTank
