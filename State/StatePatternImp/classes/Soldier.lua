require "classes.constants.screen"
require "classes.StandingStill"

Soldier={}

function Soldier:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local animation
    local state

    function private.Soldier()

        this.x = screen.centerX
        this.y = screen.centerY

        state = StandingStill:new(this)

    end

    function public.standStill()
        state.standStill()
    end

    function public.standStillLeft()
        state.standStillLeft()
    end

    function public.setState(newState)
        state:destroy()
        state = newState
    end

    function public.setAnimation(newAnimation)
        if animation then
            animation:removeSelf()
            animation = nil
        end

        animation = newAnimation
        animation.xScale = 0.25
        animation.yScale = 0.25
        this.path = animation.path
        this:insert(animation)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Soldier()
    return this
end
return Soldier

