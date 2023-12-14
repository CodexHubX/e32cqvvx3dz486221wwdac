
-- game:GetService("ReplicatedStorage").Network.TravelingMerchant_GetState:InvokeServer() -- Merchant Check

local codexlibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/CodexHubX/CodexHubX/main/UWP.lua"))()
    game:GetService("CoreGui").ChildAdded:Connect(function(v)
        pcall(function()
            if v.Name == "CodeX" then 
                 v:WaitForChild("Main")
                 v.Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                 v:WaitForChild("Main"):WaitForChild("ScreenSub")
                 v:WaitForChild("Main"):WaitForChild("ScreenSub"):WaitForChild("TitleHub")
                 v:WaitForChild("Main"):WaitForChild("ScreenSub"):WaitForChild("AnimeImage")
                 v:WaitForChild("Main"):WaitForChild("ScreenSub"):WaitForChild("DescHub")
                 v.Main.ScreenSub.DescHub.Text = "Enjoy."
                 --v.Main.ScreenSub.AnimeImage.Image = "rbxassetid://6909786111"
                 v.Main.ScreenSub.TitleHub.Text = "Code X Hub"
                 v.Main.ScreenSub.PowerBy.Text = "By Code End"
                 v:WaitForChild("Main"):WaitForChild("ScreenSub"):WaitForChild("JoinDiscordButton")
                 v.Main.ScreenSub.JoinDiscordButton:Destroy()
                 v:WaitForChild("Main"):WaitForChild("Sound")
                 repeat wait() v.Main.Sound:Destroy() until not v.Sound
            end
        end)
    end)
    Service = {
        [1] = game:GetService("Workspace"),
        [2] = game:GetService("Players"),
        [3] = game:GetService("ReplicatedStorage"),
        [4] = game:GetService("HttpService"),
        [5] = game:GetService("RunService"),
        [6] = game:GetService("ReplicatedStorage"),
        [7] = game:GetService("UserInputService"),
        [8] = game.Players.LocalPlayer,
        [9] = game:GetService('Stats'),
        [10] = game:GetService("TeleportService")
    }
    Json_Update_data = function() end
    local Area = {};
    local function SetUpArea()
    for i,v in pairs(Service[3].__DIRECTORY.Zones["Early Game"]:GetChildren())do
        table.insert(Area,v.Name)
    end
    for i,v in pairs(Service[3].__DIRECTORY.Zones["Mid Game"]:GetChildren())do
        table.insert(Area,v.Name)
    end
    for i,v in pairs(workspace.Map:GetChildren())do 
        if v:IsA("Folder") then 
                local num = string.match(v.Name,"%d+")
                getgenv()["Area"..tostring(num)] = v
            end
        end
    end
    local AreaAdd = workspace.Map.ChildAdded:Connect(function(v)
        local num = string.match(v.Name,"%d+")
        if not getgenv()["Area"..tostring(num)] then 
            print("Spawn Area")
            getgenv()["Area"..tostring(num)] = v
        end
    end)
    function LODINGORBS()
        for i,v in pairs(getgc(true))do 
            if type(v) == "table" and rawget(v,"id") and rawget(v,"parentID") and rawget(v,"uid")
                and rawget(v,"health") and rawget(v,"model") and rawget(v,"position") then 
                if workspace.__THINGS.Breakables:FindFirstChild(tostring(v.uid)) then 
                    --print('pass')
                    BaseOrbs = v 
                end
            end
        end
        --print(BaseOrbs)
        for i,v in pairs(getgc(true))do
            if type(v) == "table" then 
                for x,y in pairs(v)do 
                    if y == BaseOrbs then 
                        if #v == 0 and not v.BaseOrbs  then 
                            --print(v)
                            OrbData = v
                        end
                    end
                end
            end
        end        
    end
    SetUpArea()
    LODINGORBS()
    DataSave = {}
    codexlibrary.Init()
    local LibraryGameMain = require(game:GetService("ReplicatedStorage").Library)
    function GetPets()
        local pets = {};
        for i,v in pairs(LibraryGameMain.Save.Get().EquippedPets)do 
            table.insert(pets,tostring(i))  
        end
        return pets;
    end

    


    local create = codexlibrary.Create({})
    local Farm = create.CreateTab({Title = "Farm"})
    local Eggs = create.CreateTab({Title = "Eggs"})
    local Main = create.CreateTab({Title = "Main"})
    local Obby = create.CreateTab({Title = "Obby"})
    local Boots = create.CreateTab({Title = "Boots"})
    local Teleport = create.CreateTab({Title = "Teleport"})
    local Misc = create.CreateTab({Title = "Misc"})


    local Page1_Farm = Farm.CreatePage({
        Title = "Farming Tab"
    })

    Page1_Farm.Toggle({
        Title = "Auto Complate Game", 
        Desc = "auto farm from the starting area to the last area", 
        Default = DataSave["Auto Complate Game"], 
        callback = function(v)
            DataSave["Auto Complate Game"] = v
            Json_Update_data()
        end,
    })
    Page1_Farm.Toggle({
        Title = "Auto Buy Gate", 
        Desc = "Buy automatic doors if you have enough coins.", 
        Default = DataSave["Auto Buy Gate"], 
        callback = function(v)
            DataSave["Auto Buy Gate"] = v
            Json_Update_data()
        end,
    })
    Page1_Farm.Toggle({
        Title = "Auto Rebirth", 
        Desc = "Automatic Rebirth if the conditions for Rebirth are met.", 
        Default = DataSave["Auto Rebirth"], 
        callback = function(v)
            DataSave["Auto Rebirth"] = v
            Json_Update_data()
        end,
    })
    Page1_Farm.Toggle({
        Title = "Auto Buy Upgrade", 
        Desc = "Automatic buy upgrade.", 
        Default = DataSave["Auto Buy Upgrade"], 
        callback = function(v)
            DataSave["Auto Buy Upgrade"] = v
            Json_Update_data()
        end,
    })

    local Page2_Farm = Farm.CreatePage({
        Title = "Collect"
    })
    

    --DataSave["Collect Orbs"] = true
    --DataSave["Collect Lootbags"] = true

    Page2_Farm.Toggle({
        Title = "Collect Orbs", 
        Desc = "Automatically collect all Orbs.", 
        Default = DataSave["Collect Orbs"], 
        callback = function(v)
            DataSave["Collect Orbs"] = v
            Json_Update_data()
        end,
    })
    Page2_Farm.Toggle({
        Title = "Collect Lootbags", 
        Desc = "Automatically collect all Lootbags Automatic.", 
        Default = DataSave["Collect Lootbags"], 
        callback = function(v)
            DataSave["Collect Lootbags"] = v
            Json_Update_data()
        end,
    })

   --[[ Page2_Farm.Toggle({
        Title = "Double Collect Reward", 
        Desc = "Collected Orbs will reward you twice as much.", 
        Default = DataSave["Double Collect"], 
        callback = function(v)
            DataSave["Double Collect"] = v
            Json_Update_data()
        end,
    }) ]]

    local Page3_Farm = Farm.CreatePage({
        Title = "Farm Area"
    })
   -- DataSave["Select Area"] = "33 | Wild West"
    Dropdown_Farm_1 = Page3_Farm.Dropdown({
        Title = "Select Area", 
        Mode = false, 
        Item = Area,
        Default = DataSave["Select Area"], 
        callback = function(v)
            DataSave["Select Area"] = v 
            Json_Update_data()
        end,

    })


    --DataSave["Auto Farm Select Area"] = true
    --DataSave["Teleport To Select Area"] = true 
    Page3_Farm.Toggle({
        Title = "Auto Farm Select Area", 
        Desc = "Automatically farm select area.", 
        Default = DataSave["Auto Farm Select Area"], 
        callback = function(v)
            DataSave["Auto Farm Select Area"] = v
            Json_Update_data()
        end,
    })
    Page3_Farm.Toggle({
        Title = "Teleport To Select Area", 
        Desc = "If you are not in the selected area, it will be automatically teleported to the selected area.", 
        Default = DataSave["Teleport To Select Area"], 
        callback = function(v)
            DataSave["Teleport To Select Area"] = v
            Json_Update_data()
        end,
    })






    

    
    local Page4_Farm = Farm.CreatePage({
        Title = "Farm Aura"
    })  

    Page4_Farm.Toggle({
        Title = "Auto Farm Standing Area", 
        Desc = "auto farm area where you are standing.", 
        Default = DataSave["Auto Farm Standing Area"], 
        callback = function(v)
            DataSave["Auto Farm Standing Area"] = v
            Json_Update_data()
        end,
    })



    local Page5_Farm = Farm.CreatePage({
        Title = "Fishing"
    }) 
    Page5_Farm.Toggle({
        Title = "Auto Fishing", 
        Desc = "automatic fishing.", 
        Default = DataSave["Auto Fishing"], 
        callback = function(v)
            DataSave["Auto Fishing"] = v
            Json_Update_data()
        end,
    })



    local Page6_Farm = Farm.CreatePage({
        Title = "Settigs"
    })  
    Page6_Farm.Toggle({
        Title = "Fast Attack [ OP ]", 
        Desc = "Your pet will attack at high speed.", 
        Default = DataSave["Fast Attack"], 
        callback = function(v)
            DataSave["Fast Attack"] = v
            Json_Update_data()
        end,
    })
   

Service[8].Idled:connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

function GetOrbs()
    local Orb = {}
    for i,v in pairs(workspace["__THINGS"].Orbs:GetChildren())do 
        table.insert(Orb,tonumber(v.Name))
    end
    return Orb;
end

function GetLootbag()
    local Lootbag = {}
    for i,v in pairs(workspace["__THINGS"].Lootbags:GetChildren())do 
        table.insert(Lootbag,v.Name)
    end
    return Lootbag;
end


--[[for i,v in pairs(getgc(true))do
    if type(v) == "table" and rawget(v,"owner") then
     	if tostring(v.owner) == game.Players.LocalPlayer.Name then 
			PetsOwner = v 
		end
    end
end

for i,v in pairs(getgc(true))do
    if type(v) == "table" then 
        for x,y in pairs(v)do 
            if y == PetsOwner then 
                if #v == 0 and not v.PetsOwner  then 
                    for xx,yy in pairs(v)do 
                        if yy.owner then 
                            PetsEquipped = v
                        end 
                    end
                end
            end
        end
    end
end ]]


--[[-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Walkspeed",
    [2] = "Colorful Forest"
}

game:GetService("ReplicatedStorage").Network.Upgrades_Purchase:InvokeServer(unpack(args))






local script = require(game:GetService("ReplicatedStorage").Library.Directory.Upgrades)
for i,v in pairs(script)do 
    print(i,v)
end]]




function GetOrbsInArea(Area)
    local OrbsInArea = {};
        for i,v in pairs(OrbData)do
            if v.parentID and v.parentID == Area then 
            table.insert(OrbsInArea,{["ID"] = v.uid,["Health"] = v.health,["MaxHealth"] = v.maxHealth,["Type"] = v.id})
        end
    end
    return OrbsInArea;
end






Loop001 = task.spawn(function()
repeat 
    task.wait(1)
local success, error = pcall(function()
local check = nil;
target = nil;
    NextArea = "";
        for i = 1,58 do 
        if getgenv()["Area"..tostring(i)] and getgenv()["Area"..tostring(i)]:FindFirstChild("INTERACT") then 
            if getgenv()["Area"..tostring(i)].INTERACT:FindFirstChild("Gate") and not check then
                check = true  
                target = getgenv()["Area"..tostring(i-1)]
                NextArea = getgenv()["Area"..tostring(i)].Name
                
            end
        end
        end
    end)
    until getgenv().Teleport == true 
end)





Loop001 = task.spawn(function()
repeat 
    task.wait(0.03)
    local success, error = pcall(function()
    if DataSave["Auto Complate Game"] or DataSave["Auto Buy Gate"] then
        local Gate = "";
            local fullname = NextArea:split("| ")
                Gate = fullname[2]
                if (Service[8].Character.HumanoidRootPart.Position - target.INTERACT.BREAK_ZONES.BREAK_ZONE.Position).magnitude > 15 and DataSave["Auto Complate Game"] then 
                        Service[8].Character.HumanoidRootPart.CFrame = target.INTERACT.BREAK_ZONES.BREAK_ZONE.CFrame * CFrame.new(0,5,0)
                   else
                    local fullname_area = target.Name:split("| ")
                    GetCoinArea = GetOrbsInArea(fullname_area[2])
                    if DataSave["Auto Buy Gate"] then 
                        Service[3]:WaitForChild("Network"):WaitForChild("Zones_RequestPurchase"):InvokeServer(Gate)
                    end
                end
            end
        end)
    until getgenv().Teleport == true 
end)


--[[local countorbs = 0;
local orbsspawn = workspace["__THINGS"].Orbs.ChildAdded:Connect(function()
if DataSave["Double Collect"] then 
    countorbs = countorbs + 1 
        if countorbs >= 50 then 
        local old = Service[8].Character.HumanoidRootPart.CFrame 
            for i,v in pairs(workspace["__THINGS"].Orbs:GetChildren())do 
                Service[8].Character.HumanoidRootPart.CFrame = v.CFrame 
                task.wait(.1)
            end
            countorbs = 0 
            Service[8].Character.HumanoidRootPart.CFrame = old
        end
    end
end)]]
Loop002 = task.spawn(function()
    repeat 
        task.wait(0.03)
            local success, error = pcall(function()
                if DataSave["Collect Orbs"] then
                    if #GetOrbs() >= 5 then 
                        Service[3].Network:FindFirstChild("Orbs: Collect"):FireServer(GetOrbs())    
                    --if not DataSave["Double Collect"] then 
                       for i,v in pairs(workspace["__THINGS"].Orbs:GetChildren())do 
                            v:Destroy()
                        end
                    --end
                        
                    end
                end
                if DataSave["Collect Lootbags"] then 
                    if #GetLootbag() >= 5 then 
                    Service[3].Network.Lootbags_Claim:FireServer(GetLootbag())
                    --if not DataSave["Double Collect"] then 
                       for i,v in pairs(workspace["__THINGS"].Lootbags:GetChildren())do 
                            v:Destroy()
                        end
                    --end
                    end
                end
            end)
        until getgenv().Teleport == true 
    end)






Loop003 = task.spawn(function()
    repeat 
        task.wait(0.03)
            local success, error = pcall(function()
                if DataSave["Auto Farm Select Area"] then 
                    local fullname = DataSave["Select Area"]:split("| ")
                    GetCoinArea = GetOrbsInArea(fullname[2])
                    if DataSave["Teleport To Select Area"] then 
                        if DataSave["Select Area"] then 
                            if (Service[8].Character.HumanoidRootPart.Position - workspace.Map[DataSave["Select Area"]].INTERACT.BREAK_ZONES.BREAK_ZONE.Position).magnitude > 30 then
                                Service[8].Character.HumanoidRootPart.CFrame = workspace.Map[DataSave["Select Area"]].INTERACT.BREAK_ZONES.BREAK_ZONE.CFrame * CFrame.new(0,5,0)
                            end
                        end
                    end
                end
            end)
        until getgenv().Teleport == true 
    end)

    
    function GetClosestArea()
        local closestMobs = nil
        local shortestDistance = math.huge
            for i1, v1 in pairs(workspace.Map:GetChildren()) do
                if v1:FindFirstChild("INTERACT") and v1:FindFirstChild("INTERACT"):FindFirstChild("BREAK_ZONES") then 
                local magnitude = (Service[8].Character.HumanoidRootPart.Position - v1.INTERACT.BREAK_ZONES.BREAK_ZONE.Position).magnitude
                if tonumber(magnitude) < shortestDistance then
                    closestMobs = v1
                    shortestDistance = magnitude
                end
            end
        end
        return closestMobs
    end

    Loop009 = task.spawn(function()
        repeat 
            task.wait(0.03)
                local success, error = pcall(function()
                    if DataSave["Auto Farm Standing Area"] then
                        local GetArea = GetClosestArea()
                        local fullname = GetArea.Name:split("| ")
                        GetCoinArea = GetOrbsInArea(fullname[2])
                    end
                end)
            until getgenv().Teleport == true 
        end)   

    Loop004 = task.spawn(function()
        repeat 
            task.wait(0.03)
                local success, error = pcall(function()
                    if GetCoinArea and (DataSave["Auto Farm Select Area"] or DataSave["Auto Complate Game"] or DataSave["Auto Farm Standing Area"]) then
                    table.sort(GetCoinArea,function(a,b)
                        return a["MaxHealth"] < b["MaxHealth"]
                    end)  
                    if  not DataSave["Fast Attack"] then 
                        targetcoin = nil
                        for i,v in pairs(GetCoinArea)do 
                            targetcoin = v["ID"]
                        end
                        Fire = Service[3].Network.Breakables_PlayerDealDamage:FireServer(targetcoin)
                        local CallPets = GetPets()
                        for i,v in pairs(CallPets)do 
                            Service[3].Network.Breakables_JoinPet:FireServer(targetcoin,v)
                        end
                        else
                        local CallPets = GetPets()
                        local Pet = #CallPets;
                            for i = 1,Pet do 
                                if GetCoinArea[i] then 
                                    Service[3].Network.Breakables_PlayerDealDamage:FireServer(GetCoinArea[i]["ID"])  
                                    Service[3].Network.Breakables_JoinPet:FireServer(GetCoinArea[i]["ID"],CallPets[i])
                                end
                            end
                        end
                    end
                end)
            until getgenv().Teleport == true 
        end)

        Loop005 = task.spawn(function()
            repeat 
                task.wait(0.03)
                    local success, error = pcall(function()
                        if DataSave["Auto Fishing"] then
                            if not Service[8].PlayerGui._INSTANCES.FishingGame.Enabled then 
                                 Service[3].Network.Instancing_FireCustomFromClient:FireServer("Fishing","RequestCast",Vector3.new(1169.73828125, 75.91423034667969, -3453.21923828125))
                                 task.wait(3.5)
                                 Service[3].Network.Instancing_FireCustomFromClient:FireServer("Fishing","RequestReel")
                            end
                        end
                    end)
                until getgenv().Teleport == true 
            end)
            Loop006 = task.spawn(function()
                repeat 
                    task.wait(.1)
                        local success, error = pcall(function()
                            if DataSave["Auto Fishing"] then
                                Service[8].PlayerGui._INSTANCES.FishingGame.GameBar.FishingBar.Size = UDim2.new(1,0,1,0)
                            end
                            if DataSave["Auto Rebirth"] then 
                                if LibraryGameMain.Save.Get().Rebirths == 0 then 
                                    if LibraryGameMain.Save.Get()["UnlockedZones"]["Tiki"] then 
                                        Service[3].Network.Rebirth_Request:InvokeServer("1")
                                        task.wait(5)
                                    end
                                end
                            end
                        end)
                    until getgenv().Teleport == true 
                end)   


   
    
                    workspace:FindFirstChild("__DEBRIS").ChildAdded:Connect(function(v)
                        if DataSave["Super FPS Boost"] then 
                            v:Destroy()
                        end
                    end)


          
    --DataSave["Auto Farm Select Area"]
    --DataSave["Teleport To Select Area"]

--[[Loop003 = task.spawn(function()
    repeat task.wait(0.03)
        local success, error = pcall(function()
            if DataSave["Auto Complate Game"] or DataSave["Auto Buy Gate"] then   
                if not _G.LOOP001 then 
                    _G.LOOP001 = true 
                    SpawnLoop_1()
                end
            end
            if DataSave["Collect Orbs"] or DataSave["Collect Lootbags"] then   
                if not _G.LOOP002 then 
                    _G.LOOP002 = true 
                    SpawnLoop_2()
                end
            end
            if DataSave["Auto Farm Select Area"] or DataSave["Teleport To Select Area"] then   
                if not _G.LOOP003 then 
                    _G.LOOP003 = true 
                    SpawnLoop_3()
                end
            end
        end)
    until getgenv().Teleport == true 
end)]]


Loop007 = task.spawn(function()
    repeat task.wait(240)
        local success, error = pcall(function()
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(3, 5, 0, true, game, 1)
            wait(0.3)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(3, 5, 0, false, game, 1)
        end)
    until getgenv().Teleport == true 
end)
    game:GetService("UserInputService").InputBegan:Connect(function(Input)
        if  Input.KeyCode == Enum.KeyCode.F1 then
            if game:GetService("CoreGui").CodeX.Enabled == true then 
                game:GetService("CoreGui").CodeX.Enabled = false 
                else 
                game:GetService("CoreGui").CodeX.Enabled = true 
            end 
        end
    end)

    function uisize()
        game:GetService("CoreGui").CodeX.Main.Size = UDim2.new(0, 629,0, 565)
        game:GetService("CoreGui").CodeX.Main.Main2.Size = UDim2.new(0, 629,0, 500)
        game:GetService("CoreGui").CodeX.Main.Main2.ContainerPage.Size = UDim2.new(0, 629,0, 500)
        game:GetService("CoreGui").CodeX.Main.Main2.ContainerPage.Position = UDim2.new(0, 0,0, -30)
        for i,v in pairs(game:GetService("CoreGui").CodeX.Main.Main2.ContainerPage:GetChildren())do
            if v:IsA("Frame") then 
                v.Size = UDim2.new(0, 629,0, 500)
                if v.ScrollingMainPage then 
                    v.ScrollingMainPage.Size = UDim2.new(0, 629,0, 500)
                end 
            end     
        end 
    end  
  -- uisize()

    --game:GetService("CoreGui").CodeX.Main.BackgroundImageSet.Size = UDim2.new(0, 629,0, 565)
   for i,v in pairs(game:GetService("CoreGui").CodeX.Main.Main2.ContainerPage:GetDescendants())do
        game:GetService("CoreGui").CodeX.Main.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        if v:IsA('Frame') then 
            v.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            --v.BackgroundTransparency = 0.7
            end
            if v:IsA("TextButton") then 
            v.BackgroundColor3 = Color3.fromRGB(78, 78, 78)
            end
            if v:IsA("TextLabel") then 
                v.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            if v.Name == "Page" then 
            v.BackgroundTransparency = 0.5
        end
    end
    




















--[[local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage").Network.Rebirth_Request:InvokeServer(unpack(args))]]

--[[local args = {
    [1] = "Zebra Egg",
    [2] = 6
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_RequestPurchase"):InvokeServer(unpack(args))]]
-- Script generated by SimpleSpy - credits to exx#9394

--[[local args = {
    [1] = "Minefield",
    [2] = "Finished"
}

game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(args))]]

--[[function ClearObby(Obby)
    if Obby == "Classic" then 
        if workspace:FindFirstChild("Map") then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            = CFrame.new(909.827881, 17.9817581, -212.528046, -0.0400776044, 1.04376818e-08, -0.999196589, -1.82667104e-09, 1, 1.05193427e-08, 0.999196589, 2.24679342e-09, -0.0400776044)
            * CFrame.new(0,0,-5)
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            = CFrame.new(172.25032, 146.702454, -1738.22363, -0.0031999338, 4.39934702e-08, -0.999994874, 1.23666624e-08, 1, 4.39541203e-08, 0.999994874, -1.22259491e-08, -0.0031999338)
            * CFrame.new(0,0,-15)
        end
    elseif Obby == "Minefield" then 
        if workspace:FindFirstChild("Map") then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            = CFrame.new(210.147827, 16.2373466, 320.080231, -0.999971509, 1.06937348e-09, -0.00754881045, 9.8627273e-10, 1, 1.10121894e-08, 0.00754881045, 1.10044303e-08, -0.999971509)
            * CFrame.new(0,0,-10)
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            = CFrame.new(172.25032, 146.702454, -1738.22363, -0.0031999338, 4.39934702e-08, -0.999994874, 1.23666624e-08, 1, 4.39541203e-08, 0.999994874, -1.22259491e-08, -0.0031999338)
            * CFrame.new(0,0,-5)
        end
    end
end 
ClearObby("Classic")

setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))]]
