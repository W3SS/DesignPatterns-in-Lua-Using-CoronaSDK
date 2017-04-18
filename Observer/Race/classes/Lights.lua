require "classes.constants.screen"

Lights={}

function Lights:new(colorRGB)
    local this = display.newGroup()
    local public = this
    local private = {}
    local lights = display.newRect(0, 0, 40, 100)
    local lightUpOff = display.newCircle(0, 0, 15)
    local lightDownOff = display.newCircle(0, 0, 15)
    local lightRed = display.newCircle(0, 0, 15)
    local lightGreen = display.newCircle(0, 0, 15)
    local observers = {}

    function private.Lights()
        lightUpOff.x = 0
        lightUpOff.y = -20

        lightDownOff.x = 0
        lightDownOff.y = 20

        lightRed.x = 0
        lightRed.y = -20

        lightGreen.x = 0
        lightGreen.y = 20
        lightGreen.alpha = 0

        lights:setFillColor(colorRGB[1]/255, colorRGB[2]/255, colorRGB[3]/255)

        lightUpOff:setFillColor(0/255, 0/255, 0/255)

        lightDownOff:setFillColor(0/255, 0/255, 0/255)

        lightRed:setFillColor(255/255, 0/255, 0/255)

        lightGreen:setFillColor(0/255, 128/255, 0/255)

        this:insert(lights)
        this:insert(lightUpOff)
        this:insert(lightDownOff)
        this:insert(lightRed)
        this:insert(lightGreen)

    end

    function public.attach(observer)
        observers[#observers+1] = observer
    end

    function private.notify()
        for i = 1, #observers do
            observers[i].update()
        end
    end

    function public.redLightOn()
        lightRed.alpha = 1
        lightGreen.alpha = 0
    end

    function public.greenLightOn()
        lightRed.alpha = 0
        lightGreen.alpha = 1

        private.notify()
    end


    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Lights()
    return this
end
return Lights
