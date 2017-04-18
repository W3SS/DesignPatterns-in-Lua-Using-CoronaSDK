require "classes.constants.screen"
require "classes.CaffeineBeverageWithHook"

TeaWithHook={}

function TeaWithHook:new()
    local this = CaffeineBeverageWithHook:new()
    local public = this
    local private = {}

    function private.TeaWithHook()

    end

    function public.brew()
        print("Steeping the tea")
    end

    function public.addCondiments()
        print("Adding Lemon")
    end

    function public.customerWantsCondiments
    end

    function public.getUserInput()
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.TeaWithHook()
    return this
end
return TeaWithHook
