require "classes.constants.screen"
require "classes.Note"

EightNote={}

function EightNote:new()
    local this = Note:new()
    local public = this
    local private = {}
    local body = display.newImageRect("img/eightnotepinkdefault3.png", 74, 74)
    local name

    function private.EightNote()

        this:insert(body)

    end

    function public.clone()
        --create new clone
        local clone = EightNote:new()
        clone.setName(name)

        return clone
    end

    function public.getName()
        return name
    end

    function public.setName(newName)
        name = newName
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.EightNote()
    return this
end
return EightNote
