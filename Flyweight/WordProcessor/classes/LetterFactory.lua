require "classes.constants.screen"
require "classes.Letter"

LetterFactory={}

function LetterFactory:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local letterMap = {}

    function private.LetterFactory()


    end

    function public.createLetter(key)
        local letter = letterMap[key]

        if letter == nil then
            letter = Letter:new(key)
            letterMap[key] = letter
        end

        return letterMap[key]
    end


    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.LetterFactory()
    return this
end
return LetterFactory
