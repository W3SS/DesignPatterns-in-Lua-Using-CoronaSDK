require "classes.constants.screen"
require "classes.InfantryDecorator"

ArmorUpgrade={}

function ArmorUpgrade:new(infantry)
    local this = InfantryDecorator:new(infantry)
    local public = this
    local private = {}
    this.armor = this.armor+1

    function private.ArmorUpgrade()


    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.ArmorUpgrade()
    return this
end
return ArmorUpgrade
