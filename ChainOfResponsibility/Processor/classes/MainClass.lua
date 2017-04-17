require "classes.constants.screen"
require "classes.ProcessorMain"
require "classes.ProcessorSecond"
require "classes.ProcessorThird"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local mainProcessor = ProcessorMain:new()
    local secondProcessor = ProcessorSecond:new()
    local thirdProcessor = ProcessorThird:new()

    function private.MainClass()
        mainProcessor.setNext(secondProcessor)
        secondProcessor.setNext(secondProcessor)

        mainProcessor.execute("any data here")
    end


    private.MainClass()
    return this
end
return MainClass
