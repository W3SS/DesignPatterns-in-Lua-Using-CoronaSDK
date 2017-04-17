require "classes.constants.screen"
require "classes.Infantry"

Marauder={}

function Marauder:new()
    local this = Infantry:new()
    local public = this
    local private = {}
    this.damage = 10
    this.armor = 1

    function private.Marauder()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Marauder()
    return this
end
return Marauder
