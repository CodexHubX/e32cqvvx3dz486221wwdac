        local old_namecall;
                old_namecall = hookmetamethod(game,"__namecall",function(self,...)
                    local Args = {...}
                    local Method = getnamecallmethod()
                    if Method == "FireServer" and type(Args[1]) == "number" and not checkcaller() and DataSave['No Fall Damage'] then 
                    return;
                    elseif Method == "FireServer" and self.Name == "AcidCheck" and not checkcaller()  and DataSave['Anti Acid'] then 
                    return;
                end
            return old_namecall(self,...)
        end)
