require "classes.constants.screen"
require "classes.WordProcessor"
require "classes.LetterFactory"
--require "classes.Letter"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local wordProcessor = WordProcessor:new()
    local letterFactory = LetterFactory:new()
    local textToAdd = "Hello i'm aaaa wwworddd pprocessorrrrrrr";

    function private.MainClass()

        for i=1, textToAdd:len() do
            local value = textToAdd:sub(i,i)
            wordProcessor.addLetter(letterFactory.createLetter(value))
        end

        wordProcessor.printLetters()
    end

    private.MainClass()
    return this
end
return MainClass
