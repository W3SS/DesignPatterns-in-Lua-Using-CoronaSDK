require "classes.constants.screen"

Letter={}

function Letter:new(newValue)
    local this = display.newGroup()
    local public = this
    local private = {}
    local value

    function private.Letter()

        print("New letter created with value: "..newValue)

        value = newValue

    end

    function public.getValue()
        return value
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.Letter()
    return this
end
return Letter
