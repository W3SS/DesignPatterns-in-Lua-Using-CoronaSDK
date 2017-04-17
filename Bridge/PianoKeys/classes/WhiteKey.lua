require "classes.constants.screen"
require "classes.Key"

WhiteKey={}

function WhiteKey:new(impl)
    local this = Key:new()
    local public = this
    local private = {}
    this.impl = impl

    function private.WhiteKey()

    end

    function public.drawKey()
        this.impl.setColor("white")
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

    private.WhiteKey()
    return this
end
return WhiteKey
