require "classes.constants.screen"
require "classes.AsyncCommand"

MoveCommand={}

function MoveCommand:new(scv, targetX, targetY)
    local this = AsyncCommand:new()
    local public = this
    local private = {}
    this.superExecute = this.execute
    this.scv = scv
    this.targetX = targetX
    this.targetY = targetY

    function private.MoveCommand()

    end

    function public.execute()
        this.superExecute()

        local moveTween = scv.move(targetX, targetY)
        moveTween:addEventListener( "MOVECOMPLETE", private.onComplete )
    end

    function private.onComplete(event)
        print("********MOVECOMMAND**************")
        this.complete()
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.MoveCommand()
    return this
end
return MoveCommand
