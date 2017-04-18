require "classes.constants.screen"
require "classes.CaffeineBeverage"

Tea={}

function Tea:new()
    local this = CaffeineBeverage:new()
    local public = this
    local private = {}

    function private.Tea()

    end

    function public.brew()
        print("Steeping the tea")
    end

    function public.addCondiments()
        print("Adding Lemon")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Tea()
    return this
end
return Tea
