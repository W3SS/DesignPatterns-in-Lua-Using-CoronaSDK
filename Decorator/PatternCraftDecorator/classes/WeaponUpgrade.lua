require "classes.constants.screen"
require "classes.InfantryDecorator"

WeaponUpgrade={}

function WeaponUpgrade:new(infantry)
    local this = InfantryDecorator:new(infantry)
    local public = this
    local private = {}
    this.damage = this.damage+1

    function private.WeaponUpgrade()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.WeaponUpgrade()
    return this
end
return WeaponUpgrade
