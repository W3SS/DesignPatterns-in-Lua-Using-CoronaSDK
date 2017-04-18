require "classes.constants.screen"

MarineRecorder={}

function MarineRecorder:new(m)
    local this = display.newGroup()
    local public = this
    local private = {}
    local marine = m
    local mementos = {}
    local mementoIndex = 1

    function private.MarineRecorder()

    end

    function public.play()
        if mementoIndex < #mementos then
            mementoIndex  = mementoIndex +1
            marine.setMemento(mementos[mementoIndex])
        end
    end

    function public.rewind()
        if mementoIndex > 1 then
            mementoIndex = mementoIndex - 1
            marine.setMemento(mementos[mementoIndex])
        end
    end

    function public.record()
        mementos[#mementos+1] = marine.getMemento()
    end

    function public.reset()
        mementos = {}
    end

    function public.stop()
        mementoIndex = #mementos
    end

    function public:destroy()
        for i = 1, #mementos do
            mementos[i]:destroy()
            mementos[i].removeSelf()
            mementos[i] = nil
        end

        this:removeSelf()
        this = nil
    end

    private.MarineRecorder()
    return this
end
return MarineRecorder
