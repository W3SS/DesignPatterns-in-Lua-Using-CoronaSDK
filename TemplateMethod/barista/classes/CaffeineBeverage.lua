require "classes.constants.screen"

CaffeineBeverage={}

function CaffeineBeverage:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.CaffeineBeverage()

    end

    function public.prepareRecipe()
        public.boilWater()
        public.brew()
        public.pourInCup()
        public.addCondiments()
    end

    function public.brew() end

    function public.addCondiments() end

    function public.boilWater()
        print("Boiling water")
    end

    function public.pourInCup()
        print("Pouring into cup")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.CaffeineBeverage()
    return this
end
return CaffeineBeverage
