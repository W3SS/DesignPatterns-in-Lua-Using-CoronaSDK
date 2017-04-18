require "classes.constants.screen"

WindowTemplate={}

function WindowTemplate:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    this.title = "Default"
    this.xWindow = 0
    this.yWindow = 0
    this.widthWindow = 0
    this.heightWindow = 0

    function private.WindowTemplate()

    end

    function public.initXY()

    end

    function public.initWH()

    end

    function public.initTitle()
        this.title = "Default Window"
    end

    function public.createWindowTemplate()
        public.initXY()
        public.initWH()
        public.initTitle()

        print("The window that width is "..this.widthWindow.." and height is "..this.heightWindow.." is created at position ("..this.xWindow..", "..this.yWindow..").")
        print("Title: "..this.title)
    end

    function public:destroy()
        this:removeSelf()
        this = nil
    end

    private.WindowTemplate()
    return this
end
return WindowTemplate
