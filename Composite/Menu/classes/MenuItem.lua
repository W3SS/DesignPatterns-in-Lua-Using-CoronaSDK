require "classes.constants.screen"

MenuItem={}

function MenuItem:new(name)
    local this = display.newGroup()
    local public = this
    local private = {}
    local name = name

    function private.MenuItem()

    end

    function public.draw()
        print("------ "..name)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.MenuItem()
    return this
end
return MenuItem
