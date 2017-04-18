require "classes.constants.screen"

CaffeineBeverageWithHook={}

function CaffeineBeverageWithHook:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.CaffeineBeverageWithHook()

    end

    function public.prepareRecipe()
        public.boilWater()
        public.brew()
        public.pourInCup()
        if this.customersWantsCondiments() then
            public.addCondiments()
        end
    end

    function public.brew() end

    function public.addCondiments() end

    function public.boilWater()
        print("Boiling water")
    end

    function public.pourInCup()
        print("Pouring into cup")
    end

    function public.customersWantsCondiments()
        return true
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.CaffeineBeverageWithHook()
    return this
end
return CaffeineBeverageWithHook
