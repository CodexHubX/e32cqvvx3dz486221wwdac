        local function NoClip()
            pcall(function() 
                if Service['LocalPlayer'].Character ~= nil and (DataSave['No Clip'] or #NoclipAdd > 0)  
                and Service['LocalPlayer'].Character:FindFirstChild('Humanoid') and Service['LocalPlayer'].Character:FindFirstChild('HumanoidRootPart') then
                    for _, child in pairs(Service['LocalPlayer'].Character:GetChildren()) do
                        local getstate = Service['LocalPlayer'].Character.Humanoid:GetState()    
                            if child:IsA("BasePart")  then
                                if child.CanCollide == true  and getstate ~= Enum.HumanoidStateType.PlatformStanding then
                                child.CanCollide = false
                                elseif child.CanCollide == false and getstate == Enum.HumanoidStateType.PlatformStanding then
                                child.CanCollide = true
                            end     
                        end
                    end
                end
            end)
        end
        
        Connection.Noclip = Service['RunService'].Stepped:Connect(NoClip)
