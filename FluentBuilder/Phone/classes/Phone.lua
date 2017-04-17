require "classes.constants.screen"

Phone={}

function Phone:new(newOs, newRam, newProcessor, newScreenSize, newBattery)
    local this = display.newGroup()
    local public = this
    local private = {}
    local os = newOs
    local ram = newRam
    local processor = newProcessor
    local screenSize = newScreenSize
    local battery = newBattery

    function private.Phone()
        print("Os: ",os)
        print("Ram: ",ram)
        print("Processor: ",processor)
        print("ScreenSize: ",screenSize)
        print("battery: ",battery)
    end


    private.Phone()
    return this
end
return Phone
