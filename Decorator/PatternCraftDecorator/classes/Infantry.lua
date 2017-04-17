require "classes.constants.screen"

Infantry={}

function Infantry:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.damage = nil
    this.armor = nil

    function private.Infantry()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Infantry()
    return this
end
return Infantry
