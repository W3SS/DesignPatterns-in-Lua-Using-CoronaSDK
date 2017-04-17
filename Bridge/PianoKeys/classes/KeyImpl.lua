require "classes.constants.screen"

KeyImpl={}

function KeyImpl:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.KeyImpl()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.KeyImpl()
    return this
end
return KeyImpl
