require "classes.constants.screen"

SCV={}

function SCV:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local body = display.newRect(0, 0, 45, 45)

    function private.SCV()

        body:setFillColor(0/255, 0/255, 204/255)

        this:insert(body)

    end

    function public.attack()
        print("SCV - do local attackTween")
        transition.to( this, {time = 1300, rotation=180, onComplete = function(obj)
            transition.to( this, {time = 300, rotation=0, onComplete =
            function(obj) this:dispatchEvent({name="ATTACKCOMPLETE", target=this}) end})
        end})

        return this
    end

    function public.gather()
        print("SCV - do local gatherTween")
        local gatherTween = display.newGroup()
        transition.to( this, {time = 3300, xScale=2, yScale=2, onComplete = function(obj)
            transition.to( this, {time = 300, xScale=1, yScale=1, onComplete = function(obj) gatherTween:dispatchEvent({name="GATHERCOMPLETE", target=gatherTween}) end})
        end})

        return gatherTween
    end

    function public.move(targetX, targetY)
        print("SCV - do local moveTween")
        local moveTween = display.newGroup()
        transition.to(this, {time = 3300, x=targetX, y = targetY, onComplete = function(obj) moveTween:dispatchEvent({name="MOVECOMPLETE", target=moveTween}) end})

        return moveTween
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.SCV()
    return this
end
return SCV
