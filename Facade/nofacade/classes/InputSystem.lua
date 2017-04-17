require "classes.constants.screen"

InputSystem={}

function InputSystem:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.InputSystem()

    end

    function public.getInput()
        print("Getting input ...")
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.InputSystem()
    return this
end
return InputSystem
