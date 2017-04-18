require "classes.constants.screen"
require "classes.WindowTemplate"

MainWindow={}

function MainWindow:new()
    local this = WindowTemplate:new()
    local public = this
    local private = {}

    function private.MainWindow()

    end

    function public.initXY()
        this.xWindow = 200
        this.yWindow = 200
    end

    function public.initWH()
        this.widthWindow = 140
        this.heightWindow = 180
    end

    function public:destroy()
        body:removeSelf()
        body = nil

        this:removeSelf()
        this = nil
    end

    private.MainWindow()
    return this
end
return MainWindow
