require "classes.constants.screen"

Vehicle={}

function Vehicle:new()
    local this = display.newGroup()
    local private={}
    this.moveBehavior = nil
    this.zombies = {"agr", "rhg", "grr"}

    function private.Vehicle()

    end

    function this.move(x, y)
        print("vehicle is moving")
        this.moveBehavior.move(this, x, y)
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.Vehicle()
    return this
end
return Vehicle
