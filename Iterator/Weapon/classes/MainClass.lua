require "classes.constants.screen"
require "classes.WeaponSet"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local labelWeapon = display.newText("", screen.centerX, screen.centerY, nil, 30)
    local weaponSet = WeaponSet:new()
    local weaponIterator = nil
    local buttonNext = widget.newButton({
        id = "buttonNext",
        x = screen.centerX,
        y = screen.centerY - 60,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Next",
        onEvent = function(event)
            if event.phase == "ended" then
                private.onNext(event)
            end
        end
    })

    function private.MainClass()

        this:insert(labelWeapon)
        this:insert(buttonNext)

        weaponIterator = weaponSet.createIterator()

        weaponIterator.first()

        labelWeapon.text = weaponIterator.next()

    end

    function private.onNext(event)
        if not weaponIterator.isDone() then
         labelWeapon.text = weaponIterator.next()
        else
            weaponIterator.first()
            labelWeapon.text = weaponIterator.next()
        end
    end

    private.MainClass()
    return this
end
return MainClass
