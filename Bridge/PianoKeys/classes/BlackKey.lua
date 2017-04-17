require "classes.constants.screen"
require "classes.Key"

BlackKey={}

function BlackKey:new(impl)
    local this = Key:new()
    local public = this
    local private = {}
    this.impl=impl

    function private.BlackKey()

    end

    function public.drawKey()
        this.impl.setColor("black")
        this.impl.drawKey()

        this:insert(this.impl)
    end

    function public.setImpl(newImpl)
        this:remove(this.impl)
        this.impl = newImpl
        this:insert(newImpl)

        this:insert(impl)
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.BlackKey()
    return this
end
return BlackKey
