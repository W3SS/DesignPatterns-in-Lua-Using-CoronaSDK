require "classes.constants.screen"

WordProcessor={}

function WordProcessor:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local letters = {}

    function private.WordProcessor()

    end

    function public.addLetter(newLetter)
        letters[#letters+1] = newLetter
    end

    function public.printLetters()
        local value = ""

        for i=1, #letters do
            value=value..letters[i].getValue()
        end

        print(value)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.WordProcessor()
    return this
end
return WordProcessor
