require "classes.constants.screen"

NoteTool={}

function NoteTool:new(objProtoype)
    local this = display.newGroup()
    local public = this
    local private = {}
    local prototype

    function private.NoteTool()
        prototype = objProtoype
    end

    function public.createNote()
        return prototype.clone()
    end

    function public.setPrototype(newPrototype)
        prototype = newPrototype
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.NoteTool()
    return this
end
return NoteTool
