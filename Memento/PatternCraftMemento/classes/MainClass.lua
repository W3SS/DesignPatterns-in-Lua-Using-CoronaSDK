require "classes.constants.screen"
require "classes.MarineRecorder"
require "classes.Marine"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local widget = require("widget")
    local marine = Marine:new()
    local stateSaver
    local isRecording = false
    local buttonRecord = widget.newButton({
        id = "buttonRecord",
        left = screen.left+10,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "record",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeRecordingState(event)
            end
        end
    })
    local buttonUndo = widget.newButton({
        id = "buttonUndo",
        left = screen.left+80,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Undo",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeRecordingState(event)
            end
        end
    })
    local buttonPlay = widget.newButton({
        id = "buttonPlay",
        left = screen.left+150,
        top = screen.top+10,
        width = 60,
        height = 40,
        shape="roundedRect",
        cornerRadius = 2,
        fillColor = {default={128/255, 128/255, 128/255}, over={1, 0.1, 0.7, 0.4}},
        labelColor = {default={1, 1, 1}, over={0, 0, 0, 0.5}},
        label = "Play",
        onEvent = function(event)
            if event.phase == "ended" then
                private.changeRecordingState(event)
            end
        end
    })

    function private.MainClass()
        marine.x = screen.centerX
        marine.y = screen.centerY

        stateSaver = MarineRecorder:new(marine)

        this:insert(buttonRecord)
        this:insert(buttonUndo)
        this:insert(buttonPlay)
        this:insert(marine)

        marine:addEventListener("touch", private.onTouch)
        buttonRecord:addEventListener("tap", function() return true end)
        buttonUndo:addEventListener("tap", function() return true end)
    end

    function private.onTouch(event)
        local target = event.target
        local phase = event.phase

        if phase == "began" then
            local parent = target.parent
            parent:insert(target)
            display.getCurrentStage():setFocus(target)

            target.isFocus = true

            target.x0 = event.x - target.x
            target.y0 = event.y - target.y
        elseif target.isFocus then
            if phase == "moved" then
                target.x = event.x - target.x0
                target.y = event.y - target.y0
            elseif phase == "ended" or phase == "cancelled" then
                display.getCurrentStage():setFocus(nil)
                target.isFocus = false
            end
        end

        return true
    end

    function private.onEnterFrame(event)
        print(marine.x, marine.y)
        stateSaver.record()
    end

    function private.changeRecordingState(event)
        if event.target.id  == "buttonRecord" then
            if isRecording then
                isRecording = false
                event.target:setLabel("rec")
                Runtime:removeEventListener( "enterFrame", private.onEnterFrame )
                stateSaver.stop()
            else
                isRecording = true
                event.target:setLabel("stop rec")
                Runtime:addEventListener( "enterFrame", private.onEnterFrame )
                stateSaver.reset()
            end
            --isRecording = (not isRecording)
        elseif event.target.id  == "buttonPlay" then
            stateSaver.play()
        elseif event.target.id  == "buttonUndo" then
            stateSaver.rewind()
        end
        return true
    end


    private.MainClass()
    return this
end
return MainClass
