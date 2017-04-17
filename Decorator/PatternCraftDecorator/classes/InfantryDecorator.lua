require "classes.constants.screen"
require "classes.Infantry"

InfantryDecorator={}

function InfantryDecorator:new(infantry)
    local this = Infantry:new()
    local public = this
    local private = {}
    this.infantry = infantry
    this.damage = infantry.damage
    this.armor = infantry.armor

    function private.InfantryDecorator()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.InfantryDecorator()
    return this
end
return InfantryDecorator
