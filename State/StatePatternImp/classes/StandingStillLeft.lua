require "classes.constants.screen"

StandingStillLeft={}

function StandingStillLeft:new(contextObj)
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
    local sequences = { { name="runner", start=1, count=5, time=1000 }, { name="standing", start=1, count=1 }, }

    function private.StandingStillLeft()
        public.standStillLeft()
    end

    function public.standStill()
        context.setState(StandingStill:new(context))
    end

    function public.standStillLeft()
        local animation = display.newSprite(sheet, sequences)
        context.setAnimation(animation)
        animation.xScale = -0.25
        animation:setSequence("horse")
        animation:play()
    end

    function public:destroy()
        context =  nil

        this:removeSelf()
        this = nil
    end

    private.StandingStillLeft()
    return this
end
return StandingStillLeft

