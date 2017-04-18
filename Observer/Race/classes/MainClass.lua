require "classes.constants.screen"
require "classes.RaceCar"
require "classes.Lights"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local lights = Lights:new({128, 128, 128})
    local racecarRed = RaceCar:new({255, 0, 0})
    local racecarGreen = RaceCar:new({0, 128, 0})
    local racecarBlue = RaceCar:new({0, 0 ,255})
    local racecarYellow = RaceCar:new({255, 255 ,0})

    function private.MainClass()

        lights.x = screen.centerX+100
        lights.y = screen.centerY

        racecarRed.x = screen.centerX-100
        racecarRed.y = screen.bottom-100

        racecarGreen.x = screen.centerX-50
        racecarGreen.y = screen.bottom-100

        racecarBlue.x = screen.centerX
        racecarBlue.y = screen.bottom-100

        racecarYellow.x = screen.centerX+50
        racecarYellow.y = screen.bottom-100

        this:insert(lights)
        this:insert(racecarRed)
        this:insert(racecarGreen)
        this:insert(racecarBlue)
        this:insert(racecarYellow)

        lights.attach(racecarRed)
        lights.attach(racecarGreen)
        lights.attach(racecarBlue)
        lights.attach(racecarYellow)


        transition.to(lights, { delay=1500,    onComplete=lights.greenLightOn })
    end


    private.MainClass()
    return this
end
return MainClass
