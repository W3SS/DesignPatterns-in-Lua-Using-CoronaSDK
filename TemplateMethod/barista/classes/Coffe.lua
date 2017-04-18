require "classes.constants.screen"
require "classes.CaffeineBeverage"

Coffe={}

function Coffe:new()
    local this = CaffeineBeverage:new()
    local public = this
    local private = {}

    function private.Coffe()

    end

    function public.brew()
        print("Dripping Coffe through filter")
    end

    function public.addCondiments()
        print("Adding Sugar and Milk")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Coffe()
    return this
end
return Coffe
