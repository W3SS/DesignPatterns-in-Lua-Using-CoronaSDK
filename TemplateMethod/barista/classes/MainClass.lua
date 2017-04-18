require "classes.constants.screen"
require "classes.Coffe"
require "classes.Tea"

MainClass={}

function MainClass:new()
    local this = display.newGroup()
    local public = this
    local private = {}

    function private.MainClass()
        tea = Tea:new()
        coffe = Coffe:new()

        print("Making coffe...")
        coffe.prepareRecipe()

        print("Making tea...")
        tea.prepareRecipe()
    end

    private.MainClass()
    return this
end
return MainClass
