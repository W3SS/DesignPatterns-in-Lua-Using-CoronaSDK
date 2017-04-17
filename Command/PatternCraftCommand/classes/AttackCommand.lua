require "classes.constants.screen"
require "classes.AsyncCommand"

AttackCommand={}

function AttackCommand:new(scv)
    local this = AsyncCommand:new()
    local public = this
    local private = {}
    this.superExecute = this.execute
    this.scv = scv

    function private.AttackCommand()

    end

    function public.execute()
        this.superExecute()
        print("execute attack")
        local attackTween = scv.attack()
        attackTween:addEventListener("ATTACKCOMPLETE", private.onComplete)
    end

    function private.onComplete(event)
        print("********ATTACK**************")
        this.complete()
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.AttackCommand()
    return this
end
return AttackCommand
