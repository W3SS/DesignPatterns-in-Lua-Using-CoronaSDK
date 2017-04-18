require "classes.constants.screen"
require "classes.WeaponIterator"

WeaponSet={}

function WeaponSet:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local weapon = {}

    function private.WeaponSet()
        weapon[#weapon+1] = "Medicine"
        weapon[#weapon+1] = "Posion"
        weapon[#weapon+1] = "Crossbow"
        weapon[#weapon+1] = "Sword"
        weapon[#weapon+1] = "Dagger"
        weapon[#weapon+1] = "Fist"
    end

    function public.createIterator()
        return WeaponIterator:new(weapon)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.WeaponSet()
    return this
end
return WeaponSet
