require "classes.constants.screen"

RaceCar={}

function RaceCar:new(colorRGB)
    local this = display.newGroup()
    local public = this
    local private = {}
    local raceCar = display.newRect(0, 0, 20, 50)

    function private.RaceCar()

        raceCar:setFillColor(colorRGB[1]/255, colorRGB[2]/255, colorRGB[3]/255)
        this:insert(raceCar)

    end

    function public.update()
        print("let's go")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.RaceCar()
    return this
end
return RaceCar
