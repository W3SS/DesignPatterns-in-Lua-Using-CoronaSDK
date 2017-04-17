require "classes.constants.screen"

CommandList={}

function CommandList:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local commands = {}
    local isBusy = false

    function private.CommandList()

    end

    function public.add(command)
        command.addCompleteCallback(private.executeNext)
        table.insert(commands, command)
        private.attemptExecute()
    end

    function private.attemptExecute()
            if not isBusy then
                private.executeNext()
            end
    end

    function private.executeNext()
        isBusy = false

        if #commands > 0 then
            isBusy = true
            local command = table.remove(commands,1)
            command.execute()
        end
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.CommandList()
    return this
end
return CommandList
