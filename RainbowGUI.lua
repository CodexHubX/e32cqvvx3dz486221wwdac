
    local TextAdd = {}
    local Folder_Text = nil
    local Text_Storage = {}
    local PlayerGui = get_hidden_gui and get_hidden_gui() or gethui and gethui() or game:GetService("CoreGui")
    
    
    
    local function Startup()
        pcall(function()
            local ClonedScreenGui,ClonedFrame,Folder,UiListLayout = Instance.new("ScreenGui"),Instance.new("Frame"),Instance.new("Folder"),Instance.new("UIListLayout")
            ClonedScreenGui.Parent = PlayerGui
            ClonedFrame.Size,ClonedFrame.Position,ClonedFrame.Transparency,ClonedFrame.Parent = UDim2.fromScale(0.294,0.694),UDim2.fromScale(0.705,0.139),1,ClonedScreenGui
            Folder.Parent = ClonedFrame
            UiListLayout.Parent,UiListLayout.HorizontalAlignment,UiListLayout.VerticalAlignment = Folder,Enum.HorizontalAlignment.Right,Enum.VerticalAlignment.Bottom
            Folder_Text = Folder
        end)
    end

    Startup()
    
    
    local colors = {
        BrickColor.new("Bright red").Color,
        BrickColor.new("Bright orange").Color,
        BrickColor.new("Bright yellow").Color,
        BrickColor.new("Bright green").Color,
        BrickColor.new("Bright blue").Color,
        BrickColor.new("Bright purple").Color
    }
    
    local num_colors = #colors
    local color_length = 1 / num_colors
    local period = 3 --how long it take for full animation
    
    
spawn(function()
    repeat task.wait(0.03)
        pcall(function()
            if Folder_Text ~= nil then
                local progress = (tick() % period) / period
                local newColors = {}
                local wrapColor = false
    
                for i = 1, num_colors + 1 do
                    local color = colors[i] or colors[i-num_colors]
                    local position = progress + (i-1)/num_colors
    
                    if position > 1 then position = position - 1 end
                    if position == 0 or position == 1 then wrapColor = true end
    
                    table.insert(newColors, ColorSequenceKeypoint.new(position, color))
                end
    
                if not wrapColor then
                    local indexProgress = ((1 - progress) / color_length) + 1
                    local col1 = colors[math.floor(indexProgress)]
                    local col2 = colors[math.ceil(indexProgress)] or colors[1]
                    local finalCol = col1:Lerp(col2, indexProgress % 1)
    
                    table.insert(newColors, ColorSequenceKeypoint.new(0, finalCol))
                    table.insert(newColors, ColorSequenceKeypoint.new(1, finalCol))
                end
    
                table.sort(newColors, function(a, b)
                    return a.Time < b.Time
                end)
                    for _,Value in pairs(Folder_Text:GetChildren()) do
                        if Value:IsA("TextLabel") then
                            Value.UIGradient.Color = ColorSequence.new(newColors)
                            end
                        end
                        if getgenv().XenonHubLoding and ItemFolder and TalentsFolder and MantraFolder 
                        and HeadText_1 and HeadText_2 and HeadText_3 then 
                            for _,Value in pairs(ItemFolder:GetChildren()) do
                                if Value:IsA("TextLabel") then
                                    Value.UIGradient.Color = ColorSequence.new(newColors)
                                end
                            end
                            for _,Value in pairs(TalentsFolder:GetChildren()) do
                                if Value:IsA("TextLabel") then
                                    Value.UIGradient.Color = ColorSequence.new(newColors)
                                end
                            end
                            for _,Value in pairs(MantraFolder:GetChildren()) do
                                if Value:IsA("TextLabel") then
                                    Value.UIGradient.Color = ColorSequence.new(newColors)
                                end
                            end
                            HeadText_1.UIGradient.Color = ColorSequence.new(newColors)
                            HeadText_2.UIGradient.Color = ColorSequence.new(newColors)
                            HeadText_3.UIGradient.Color = ColorSequence.new(newColors)
                        end
                    end
                end)
        until getgenv().Teleport == true 
    end)
    
    
    
    local function AddText(Text_T)
        pcall(function()
            if not table.find(TextAdd,Text_T) then 
                table.insert(TextAdd,Text_T)
                local Text_Size = 12
                local BackgroundColor,Transparency = Color3.fromRGB(20,20,20),0.6 
                local Style_Fontt = Enum.Font.Arial 
                local TextLabel,UiGradient = Instance.new("TextLabel"),Instance.new("UIGradient")
                TextLabel.Text,TextLabel.Name = " "..Text_T.." ",Text_T
                table.insert(Text_Storage, {Instance_Text = TextLabel, Lenght = string.len(Text_T)})

                table.sort(Text_Storage, function(a,b)
                    return (a.Lenght > b.Lenght)
                end)


                TextLabel.TextSize = Text_Size
                TextLabel.BorderSizePixel  = 0
                TextLabel.AutomaticSize = Enum.AutomaticSize.XY
                TextLabel.BackgroundColor3,TextLabel.BackgroundTransparency,TextLabel.TextColor3 = BackgroundColor,Transparency,Color3.fromRGB(255,255,255)
                UiGradient.Parent = TextLabel
                TextLabel.Parent  = Folder_Text
                for i,v in pairs(Text_Storage) do
                    v.Instance_Text.LayoutOrder = math.abs(v.Lenght)*-1
                end
            end
        end)
    end
    
    
    local function RemoveText(Text_T)
        pcall(function()
            if table.find(TextAdd,Text_T) then 
                if Folder_Text:FindFirstChild(Text_T) then
                    Folder_Text:FindFirstChild(Text_T):Destroy()
                end
            end
            for i,v in pairs(TextAdd)do 
                if v == Text_T then 
                    table.remove(TextAdd,i)
                end
            end
        end)
    end
