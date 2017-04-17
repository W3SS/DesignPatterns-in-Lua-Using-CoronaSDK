require "classes.constants.screen"
require "classes.Marine"
require "classes.Marauder"
require "classes.WeaponUpgrade"
require "classes.ArmorUpgrade"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local marine = Marine:new()
    local marauder = Marauder:new()

    function private.MainClass()
        print("Before - Marine damage: "..marine.damage)
        marine = WeaponUpgrade:new(marine)
        print("After - Marine damage: "..marine.damage)

        print("Before - Marine armor: "..marine.armor)
        marine = ArmorUpgrade:new(marine)
        print("After - Marine armor: "..marine.armor)

        print("Before Marauder damage: "..marauder.damage)
        marauder = WeaponUpgrade:new(marauder)
        print("After Marauder damage: "..marauder.damage)

    end

    function private.onTap(event)

    end


    private.MainClass()
    return this
end
return MainClass
