require "classes.constants.screen"

Key={}

function Key:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.moveBehavior = nil

    function private.Key()

    end

    function public.move(x, y)
        print("vehicle is moving")
        this.moveBehavior.move(this, x, y)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Key()
    return this
end
return Key
