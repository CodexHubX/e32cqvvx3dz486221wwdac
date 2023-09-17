local Co;
Co = hookfunction(wait,function(a)
    if _G.FastLoader then 
        return Co()
    end
    return Co(a)
end)
