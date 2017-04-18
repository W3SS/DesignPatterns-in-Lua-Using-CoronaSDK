require "classes.constants.screen"

Note={}

function Note:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.Note()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Note()
    return this
end
return Note
