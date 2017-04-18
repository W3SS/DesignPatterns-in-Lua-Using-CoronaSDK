require "classes.constants.screen"
require "classes.NoteTool"
require "classes.EightNote"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local staff = display.newImageRect("img/musicstaff.png", 450, 105)
    local eightNote = EightNote:new()
    local tool
    local note

    function private.MainClass()
        display.setDefault( "background", 1, 1, 1 )

        staff.x = screen.centerX
        staff.y = screen.centerY


        eightNote.x = screen.left + 50
        eightNote.y = screen.centerY + 100


        eightNote:addEventListener("touch", private.onEightNoteTouch)
    end

    function private.onEightNoteTouch(event)
        if event.phase == "began" then
            tool = NoteTool:new(eightNote)
            note = tool.createNote()
            --note:removeEventListener("touch", private.onTouch)
            note:addEventListener("touch", private.onTouch)

            local parent = event.target.parent
            parent:insert(event.target)
            display.getCurrentStage():setFocus(event.target)

            event.target.isFocus = true
            note.x = event.target.x
            note.y = event.target.y
        elseif event.phase == "moved" then
            note.x = event.x
            note.y = event.y
        elseif event.phase == "ended" or event.phase == "cancelled" then

            display.getCurrentStage():setFocus( nil )
            self.isFocus = false
        end
        return true
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


    private.MainClass()
    return this
end
return MainClass
