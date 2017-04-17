require "classes.Phone"

PhoneBuilder={}

function PhoneBuilder:new(newName)
    local this = display.newGroup()
    local public = this
    local private = {}
    local os = newName
    local ram
    local processor
    local screenSize
    local battery

    function private.PhoneBuilder()

    end

    function public.os(newOs)
        os = newOs
        return this
    end

    function public.ram(newRam)
        ram = newRam
        return this
    end

    function public.processor(newProcessor)
        processor = newProcessor
        return this
    end

    function public.screenSize(newScreenSize)
        screenSize = newScreenSize
        return this
    end

    function public.battery(newBattery)
        battery = newBattery
        return this
    end

    function public.build()
        return Phone:new(os, ram, processor, screenSize, battery)
    end



    private.PhoneBuilder()
    return this
end
return PhoneBuilder
