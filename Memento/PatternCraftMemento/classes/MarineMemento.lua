require "classes.constants.screen"

MarineMemento={}

function MarineMemento:new(x, y)
    local this = display.newGroup()
    local public = this
    local private = {}
    this.x = x
    this.y = y

    function private.MarineMemento()

    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.MarineMemento()
    return this
end
return Marine
