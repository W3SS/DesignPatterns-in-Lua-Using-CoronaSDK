require "classes.constants.screen"

Context={}

function Context:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Context()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Context()
    return this
end
return Context
