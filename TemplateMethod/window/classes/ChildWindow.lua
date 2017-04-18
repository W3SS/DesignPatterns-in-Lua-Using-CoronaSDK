require "classes.constants.screen"
require "classes.WindowTemplate"

ChildWindow={}

function ChildWindow:new()
    local this = WindowTemplate:new()
    local public = this
    local private = {}
    this.superInitTitle = this.initTitle
    this.superInitXY = this.initXY
    this.superInitWH = this.initWH

    function private.ChildWindow()

    end

    function public.initXY()
        this.superInitXY()
        this.xWindow = 20
        this.yWindow = 25
    end

    function public.initWH()
        this.superInitWH()
        this.widthWindow = 400
        this.heightWindow = 300
    end

    function public.initTitle()
        this.superInitTitle()
        this.title = "Child Window"
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.ChildWindow()
    return this
end
return ChildWindow
