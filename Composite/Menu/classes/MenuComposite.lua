require "classes.constants.screen"

MenuComposite={}

function MenuComposite:new(name)
    local this = display.newGroup()
    local public = this
    local private = {}
    local name = name
    local items = {}

    function private.MenuComposite()

    end

    function public.addMenuItem(item)
        items[#items+1] = item
    end

    function public.draw()
        print(""..name)
        for i = 1, #items do
            items[i].draw()
        end
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.MenuComposite()
    return this
end
return MenuComposite
