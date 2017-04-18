require "classes.constants.screen"
require "classes.CaffeineBeverageWithHook"

CoffeWithHook={}

function CoffeWithHook:new()
    local this = CaffeineBeverageWithHook:new()
    local public = this
    local private = {}

    function private.CoffeWithHook()

    end

    function public.brew()
        print("Dripping Coffe through filter")
    end

    function public.addCondiments()
        print("Adding Sugar and Milk")
    end

    function public.customerWantsCondiments
    end

    function public.getUserInput()
    end

    function this:destroy()
        this:removeSelf()
        this = nil
    end

    private.CoffeWithHook()
    return this
end
return CoffeWithHook
