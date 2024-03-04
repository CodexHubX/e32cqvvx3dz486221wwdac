local ESPModule = {
    ChamsEnabled = true,
}
local Entities = {}
local ChamsModule = {}
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local container = Instance.new("Folder");
container.Parent = get_hidden_gui and get_hidden_gui() or gethui and gethui() or game.CoreGui;

local Destroy = false
local entitiesFolder
local espEnabled = false
local espColor = Color3.fromRGB(0, 255, 0)  -- Default color
local limitDistance = 1000  -- Default distance
local showDistance = true
local showHealth = true

local function chams(entity)
    pcall(function()
        if entity:GetAttribute("Chams") then return end
        entity:SetAttribute("Chams", true)
        if entity:FindFirstChildOfClass("Humanoid") and ESPModule.ChamsEnabled then
            local highlight = Instance.new("Highlight", container)
            highlight.Adornee = entity
            ChamsModule[entity] = highlight
        end
    end)
end


local function ESPModule.AddInstance(entity)
    -- wait inf until found Humanoid, HumanoidRootPart
    local humanoid = entity:FindFirstChildOfClass("Humanoid", 1)
    local humanoidRootPart = entity:FindFirstChild("HumanoidRootPart", 1)
 
    if not humanoid or not humanoidRootPart then
        return
    end

   --chams(entity)
 
    Entities[entity] = Drawing.new("Text")
    Entities[entity].Visible = false
    Entities[entity].Center = true
    Entities[entity].Outline = true
    Entities[entity].Font = 2
    Entities[entity].Color = espColor
    Entities[entity].Size = 15

 
    local ancestryChangedConnection
    local healthChangedConnection
    local renderSteppedConnection
 
    local function disconnectConnections()
        pcall(function()
            Entities[entity].Visible = false
            Entities[entity]:Remove()
            if ancestryChangedConnection then
                ancestryChangedConnection:Disconnect()
                ancestryChangedConnection = nil
            end
            if healthChangedConnection then
                healthChangedConnection:Disconnect()
                healthChangedConnection = nil
            end
            if renderSteppedConnection then
                renderSteppedConnection:Disconnect()
                renderSteppedConnection = nil
            end
        end)
    end
 
    ancestryChangedConnection = entity.AncestryChanged:Connect(function(_, parent)
        if not parent then
            disconnectConnections()
        end
    end)
 
    healthChangedConnection = humanoid.HealthChanged:Connect(function(health)
        if health <= 0 then
            disconnectConnections()
        end
    end)
 
    renderSteppedConnection = runService.RenderStepped:Connect(function()
        local succ, err = pcall(function()
            local hrpPosition, hrpOnScreen = camera:WorldToViewportPoint(humanoidRootPart.Position)
            if hrpOnScreen then
                local distance = (camera.CFrame.Position - humanoidRootPart.Position).Magnitude
                local name = entity.Name
                if game.gameId == 3419284255 then -- peroxide support
                    name = entity.Name:split("_")[1]
                elseif game.gameId == 1359573625 then -- deepwoken support
                    name = tostring(entity.Name):gsub("^%.", "")
                    name = name:gsub("%d", "")
                end
                if name and distance <= limitDistance then
                    Entities[entity].Position = Vector2.new(hrpPosition.X, hrpPosition.Y)
                    if showDistance and showHealth then
                        Entities[entity].Text = string.format("%s\n%s studs\nHealth: %s/%s", name, math.floor(distance), math.floor(humanoid.Health), math.floor(humanoid.MaxHealth))
                    elseif showDistance then
                        Entities[entity].Text = string.format("%s\n%s studs", name, math.floor(distance))
                    elseif showHealth then
                        Entities[entity].Text = string.format("%s\nHealth: %s/%s", name, math.floor(humanoid.Health), math.floor(humanoid.MaxHealth))
                    else
                        Entities[entity].Text = name
                    end

                    Entities[entity].Color = espColor
                    Entities[entity].Visible = espEnabled
                    for i,v in pairs(ChamsModule) do
                        v.Enabled = espEnabled
                    end
                else
                    Entities[entity].Visible = false
                    for i,v in pairs(ChamsModule) do
                        v.Enabled = false
                    end
                end
            else
                Entities[entity].Visible = false
            end
        end)
    end)
end

local function toggleESP(status)
    if status ~= nil then
        espEnabled = status
    else
        espEnabled = not espEnabled
    end
end

-- Exposed Library Methods
-- function ESPModule.SetupFolder(folder, ignore)
--     if folder then
--         entitiesFolder = folder
--         if ignore == nil then
--             ignore = "ignore#"
--         end

--         spawn(function()
--             while true do task.wait(1)
--                 if Destroy then break end
--                 local succ, err = pcall(function()
--                     for _, entity in ipairs(entitiesFolder:GetChildren()) do
--                         if entity:IsA("Model") and entity:FindFirstChildOfClass("Humanoid") and entity:FindFirstChild("HumanoidRootPart") and not entity:FindFirstChild(ignore) and not entity:GetAttribute("deployed_esp") then
--                             entity:SetAttribute("deployed_esp", true)
--                             esp(entity)
--                         end
--                     end
--                 end)
--                 if not succ then
--                     warn(err)
--                 end
--             end
--         end)
--     end
-- end

function ESPModule.ToggleESP(status)
    toggleESP(status)
end

function ESPModule.SetColor(color)
    espColor = color
end

function ESPModule.LimitDistance(distance)
    limitDistance = distance
end

function ESPModule.ShowDistance(status)
    showDistance = status
end

function ESPModule.ShowHealth(status)
    showHealth = status
end

function ESPModule.SetChams(status)
    ESPModule.ChamsEnabled = status
end

function ESPModule.Unload()
    spawn(function()
        local succ, err = pcall(function()
            for i,v in pairs(Entities) do
                if i:GetAttribute("Chams") then
                    i:SetAttribute("Chams", false)
                end
                if i:GetAttribute("deployed_esp") then
                    i:SetAttribute("deployed_esp", false)
                end
                v.Visible = false
                if v.Remove then
                    v:Remove()
                end
                if v.Destroy then
                    v:Destroy()
                end
            end
        end)
        if not succ then warn(err) end
    end)
    spawn(function()
        local succ, err = pcall(function()
            for i,v in pairs(ChamsModule) do
                v:Remove()
            end
        end)
        if not succ then warn(err) end
    end)
    Destroy = true
    if container then
        container:Destroy()
    end
end

-- ESPModule.SetupFolder(workspace.Enemies, "none")
-- ESPModule.ToggleESP(true)
-- ESPModule.SetColor(Color3.fromRGB(116, 230, 232))
-- ESPModule.LimitDistance(1000)
-- ESPModule.ShowDistance(true)
-- ESPModule.ShowHealth(true)


-- task.wait(5)
-- ESPModule.Unload()

return ESPModule
