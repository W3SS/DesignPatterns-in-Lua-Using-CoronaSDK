require "classes.constants.screen"

WindowTemplate={}

function WindowTemplate:new()
    local this = display.newGroup()
    local public = this
    local private = {}
    local myRectangle --= display.newRect( 0, 0, 150, 50 )
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

    function public.drawWindow()
        myRectangle = display.newRect( 0, 0, this.widthWindow, this.heightWindow )
        myRectangle.x = this.xWindow
        myRectangle.y = this.yWindow
        myRectangle.strokeWidth = 3
        myRectangle:setFillColor(255/255)
        myRectangle:setStrokeColor( 255/255, 0/255, 0/255 )

        this:insert(myRectangle)
    end

    function public.createWindowTemplate()
        public.initXY()
        public.initWH()
        public.initTitle()
        public.drawWindow()

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
