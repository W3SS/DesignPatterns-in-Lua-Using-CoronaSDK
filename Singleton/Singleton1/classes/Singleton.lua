Singleton = {}

local _instance = nil

function Singleton:initialize()
    self.currentValue = nil
end

function Singleton.Instance()
    if not _instance then
        _instance = Singleton
        _instance:initialize()
    end

    return _instance
end

function Singleton:new()
    print('Singleton cannot be instantiated - use getInstance() instead')
end

return Singleton
