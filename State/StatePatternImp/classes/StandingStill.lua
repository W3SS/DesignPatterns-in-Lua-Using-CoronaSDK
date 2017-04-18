require "classes.constants.screen"
require "classes.StandingStillLeft"

StandingStill={}

function StandingStill:new(contextObj)
    local this = display.newGroup()
    local public = this
    local private = {}
    local context = contextObj
    local sheetData = {
        frames = {
            {x = 5, y = 5, width = 428, height = 328, sourceX = 0, sourceY = 4, sourceWidth = 428, sourceHeight = 328,},
            {x = 5, y = 343, width = 428, height = 328, sourceX = 5, sourceY = 1, sourceWidth = 428, sourceHeight = 328,},
            {x = 443, y = 5, width = 428, height = 328, sourceX = 12, sourceY = 2, sourceWidth = 428, sourceHeight = 328,},
            {x = 443, y = 343, width = 428, height = 328, sourceX = 11, sourceY = 0, sourceWidth = 428, sourceHeight = 328,},
            {x = 5, y = 681, width = 428, height = 328, sourceX = 12, sourceY = 2, sourceWidth = 428, sourceHeight = 328,},
        }
    }
    local sheet = graphics.newImageSheet("img/runner.png", {frames=sheetData.frames})
    local sequences = { { name="standing", start=3, count=1 }, }

    function private.StandingStill()
        public.standStill()
    end

    function public.standStill()
        local animation = display.newSprite(sheet, sequences)
        context.setAnimation(animation)
        animation:setSequence("standing")
    end

    function public.standStillLeft()
        context.setState(StandingStillLeft:new(context))
    end

    function public:destroy()
        context =  nil

        this:removeSelf()
        this = nil
    end

    private.StandingStill()
    return this
end
return StandingStill

