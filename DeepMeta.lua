pcall(function()
              local old;
                            old = hookmetamethod(game,"__newindex",function(self,key,value)
                                if Service[8] and Service[8].Character and Service[8].Character:FindFirstChild("Humanoid") and key == "WalkSpeed" and self.Name == "Humanoid" and self.Parent.Name == Service[8].Name and DataSave["WalkSpeed"] then 
                                    return old(self,key,tonumber(DataSave["Speed Value"]))
                                elseif Service[8] and Service[8].Character and Service[8].Character:FindFirstChild("Humanoid") and key == "JumpPower" and self.Name == "Humanoid" and self.Parent.Name == Service[8].Name and DataSave["jump power"] then 
                                    return old(self,key,tonumber(DataSave["Jump Value"]))
                                end 
                            return old(self,key,value)
                        end)
                  local old_namecall;
                  old_namecall = hookmetamethod(game,"__namecall",function(self,...)
                  local Args = {...}
                  local Method = getnamecallmethod()
                  if Method == "FireServer" and type(Args[1]) == "number" and not checkcaller() and DataSave["No Fall"] then 
                  return;
                  elseif Method == "FireServer" and self.Name == "AcidCheck" and not checkcaller() and DataSave["Anti Acid"] then 
                  return;
            end
           return old_namecall(self,...)
      end)
end)
