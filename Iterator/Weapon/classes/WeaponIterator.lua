require "classes.constants.screen"

WeaponIterator={}

function WeaponIterator:new(weapon)
    local this = display.newGroup()
    local public = this
    local private = {}
    local position = 1
    local weapon = weapon

    function private.WeaponIterator()

    end

    function public.first()
        position = 1
    end

    function public.next()
        return (function() p = position; position = position+1; return weapon[p] end)()
    end

    function public.currentItem()
        return weapon[position]
    end

    function public.isDone()
        return position >= #weapon
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.WeaponIterator()
    return this
end
return WeaponIterator
