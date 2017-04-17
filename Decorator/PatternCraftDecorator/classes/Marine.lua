require "classes.constants.screen"
require "classes.Infantry"

Marine={}

function Marine:new()
    local this = Infantry:new()
    local public = this
    local private = {}
    this.damage = 6
    this.armor = 0

    function private.Marine()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Marine()
    return this
end
return Marine
