spawn(function()
            do
                local Settings = {
                    Box_Color = Color3.fromRGB(255, 0, 0),
                    Box_Thickness = 2,
                    Team_Check = false,
                    Team_Color = false,
                    Autothickness = true
                }
                
                --Locals
                local Space = game:GetService("Workspace")
                local Player = game:GetService("Players").LocalPlayer
                local Camera = Space.CurrentCamera
                
                -- Locals
                local function NewLine(color, thickness)
                    local line = Drawing.new("Line")
                    line.Visible = false
                    line.From = Vector2.new(0, 0)
                    line.To = Vector2.new(0, 0)
                    line.Color = color
                    line.Thickness = thickness
                    line.Transparency = 1
                    return line
                end
                
                local function Vis(lib, state)
                    for i, v in pairs(lib) do
                        v.Visible = state
                    end
                end
                
                local function Colorize(lib, color)
                    for i, v in pairs(lib) do
                        v.Color = color
                    end
                end
                
                local Black = Color3.fromRGB(0, 0, 0)
                
                local function Rainbow(lib, delay)
                    for hue = 0, 1, 1/30 do
                        local color = Color3.fromHSV(hue, 0.6, 1)
                        Colorize(lib, color)
                        wait(delay)
                    end
                    Rainbow(lib)
                end
                --Main Draw Function
                 function Main(plr)
                    repeat wait() until plr ~= nil 
                    local Library = {
                        TL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                        TL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                
                        TR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                        TR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                
                        BL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                        BL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                
                        BR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                        BR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness)
                    }
                    coroutine.wrap(Rainbow)(Library, 0.15)
                    local oripart = Instance.new("Part")
                    oripart.Parent = Space
                    oripart.Transparency = 1
                    oripart.CanCollide = false
                    oripart.Size = Vector3.new(1, 1, 1)
                    oripart.Position = Vector3.new(0, 0, 0)
                    --Updater Loop
                    local function Updater()
                        pcall(function()
                        local c 
                        c = game:GetService("RunService").RenderStepped:Connect(function()
                            pcall(function()
                                
                            if plr:FindFirstChildOfClass("Texture") then
                                local Hum = plr
                                --print(plr.Position)
                                local HumPos, vis = Camera:WorldToViewportPoint(plr.Position)
                                if vis then
                                    oripart.Size = Vector3.new(Hum.Size.X, Hum.Size.Y*1.5, Hum.Size.Z)
                                    oripart.CFrame = CFrame.new(Hum.CFrame.Position, Camera.CFrame.Position)
                                    local SizeX = oripart.Size.X
                                    local SizeY = oripart.Size.Y
                                    local TL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, SizeY, 0)).p)
                                    local TR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, SizeY, 0)).p)
                                    local BL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, -SizeY, 0)).p)
                                    local BR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, -SizeY, 0)).p)
                                    --print(Camera.CFrame.p)
                                    --print(HumPos.Position)
                                    local ratio = (Camera.CFrame.p - Hum.Position).magnitude
                                    local offset = math.clamp(1/ratio*750, 2, 300)
                                    if tostring(game.Players.LocalPlayer.Team) == "Ghosts" then 
                                        if plr:FindFirstChildOfClass("Texture") and (plr:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5558971356" or plr:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5614184106") 
                                        and _G.Box then 
                                        Library.TL1.From = Vector2.new(TL.X, TL.Y)
                                        Library.TL1.To = Vector2.new(TL.X + offset, TL.Y)
                                        Library.TL2.From = Vector2.new(TL.X, TL.Y)
                                        Library.TL2.To = Vector2.new(TL.X, TL.Y + offset)
                
                                        Library.TR1.From = Vector2.new(TR.X, TR.Y)
                                        Library.TR1.To = Vector2.new(TR.X - offset, TR.Y)
                                        Library.TR2.From = Vector2.new(TR.X, TR.Y)
                                        Library.TR2.To = Vector2.new(TR.X, TR.Y + offset)
                
                                        Library.BL1.From = Vector2.new(BL.X, BL.Y)
                                        Library.BL1.To = Vector2.new(BL.X + offset, BL.Y)
                                        Library.BL2.From = Vector2.new(BL.X, BL.Y)
                                        Library.BL2.To = Vector2.new(BL.X, BL.Y - offset)
                
                                            Library.BR1.From = Vector2.new(BR.X, BR.Y)
                                        Library.BR1.To = Vector2.new(BR.X - offset, BR.Y)
                                        Library.BR2.From = Vector2.new(BR.X, BR.Y)
                                        Library.BR2.To = Vector2.new(BR.X, BR.Y - offset)
                                        else
                                            Library.TL1.From = Vector2.new(0,0)
                                            Library.TL1.To = Vector2.new(0,0)
                                            Library.TL2.From = Vector2.new(0,0)
                                            Library.TL2.To = Vector2.new(0,0)
                        
                                            Library.TR1.From = Vector2.new(0,0)
                                            Library.TR1.To = Vector2.new(0,0)
                                            Library.TR2.From = Vector2.new(0,0)
                                            Library.TR2.To = Vector2.new(0,0)
                        
                                            Library.BL1.From = Vector2.new(0,0)
                                            Library.BL1.To = Vector2.new(0,0)
                                            Library.BL2.From = Vector2.new(0,0)
                                            Library.BL2.To = Vector2.new(0,0)
                        
                                            Library.BR1.From = Vector2.new(0,0)
                                            Library.BR1.To = Vector2.new(0,0)
                                            Library.BR2.From = Vector2.new(0,0)
                                            Library.BR2.To = Vector2.new(0,0)
                                        end
                                    else
                                        if plr:FindFirstChildOfClass("Texture") and (plr:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5558971297" or plr:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5614184140") 
                                        and _G.Box then 
                                            Library.TL1.From = Vector2.new(TL.X, TL.Y)
                                            Library.TL1.To = Vector2.new(TL.X + offset, TL.Y)
                                            Library.TL2.From = Vector2.new(TL.X, TL.Y)
                                            Library.TL2.To = Vector2.new(TL.X, TL.Y + offset)
                    
                                            Library.TR1.From = Vector2.new(TR.X, TR.Y)
                                            Library.TR1.To = Vector2.new(TR.X - offset, TR.Y)
                                            Library.TR2.From = Vector2.new(TR.X, TR.Y)
                                            Library.TR2.To = Vector2.new(TR.X, TR.Y + offset)
                    
                                            Library.BL1.From = Vector2.new(BL.X, BL.Y)
                                            Library.BL1.To = Vector2.new(BL.X + offset, BL.Y)
                                            Library.BL2.From = Vector2.new(BL.X, BL.Y)
                                            Library.BL2.To = Vector2.new(BL.X, BL.Y - offset)
                    
                                                Library.BR1.From = Vector2.new(BR.X, BR.Y)
                                            Library.BR1.To = Vector2.new(BR.X - offset, BR.Y)
                                            Library.BR2.From = Vector2.new(BR.X, BR.Y)
                                            Library.BR2.To = Vector2.new(BR.X, BR.Y - offset)
                                        else
                                            Library.TL1.From = Vector2.new(0,0)
                                            Library.TL1.To = Vector2.new(0,0)
                                            Library.TL2.From = Vector2.new(0,0)
                                            Library.TL2.To = Vector2.new(0,0)
                        
                                            Library.TR1.From = Vector2.new(0,0)
                                            Library.TR1.To = Vector2.new(0,0)
                                            Library.TR2.From = Vector2.new(0,0)
                                            Library.TR2.To = Vector2.new(0,0)
                        
                                            Library.BL1.From = Vector2.new(0,0)
                                            Library.BL1.To = Vector2.new(0,0)
                                            Library.BL2.From = Vector2.new(0,0)
                                            Library.BL2.To = Vector2.new(0,0)
                        
                                            Library.BR1.From = Vector2.new(0,0)
                                            Library.BR1.To = Vector2.new(0,0)
                                            Library.BR2.From = Vector2.new(0,0)
                                            Library.BR2.To = Vector2.new(0,0)
                                        end
                                    end	
                                    Vis(Library, true)
                
                                    if Settings.Autothickness then
                                        local distance = (Player.Character.HumanoidRootPart.Position - oripart.Position).magnitude
                                        local value = math.clamp(1/distance*100, 1, 4) --0.1 is min thickness, 6 is max
                                        for u, x in pairs(Library) do
                                            x.Thickness = value
                                        end
                                    else 
                                        for u, x in pairs(Library) do
                                            x.Thickness = Settings.Box_Thickness
                                        end
                                    end
                                else 
                                    Vis(Library, false)
                                end
                            else 
                                Vis(Library, false)
                                --if not plr then
                                    for i, v in pairs(Library) do
                                        v:Remove()
                                        oripart:Destroy()
                                    end
                                    print("Disconnet")
                                    c:Disconnect()
                               -- end
                            end
                        end)
                        end)
                    end)
                    end
                    coroutine.wrap(Updater)()
                end
            end
        end)
        spawn(function()
do 
local Players = game:service("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:service("Workspace").CurrentCamera
local RS = game:service("RunService")
local UIS = game:service("UserInputService")

repeat wait() until Player.Character ~= nil and Player.Character.PrimaryPart ~= nil

local LerpColorModule = loadstring(game:HttpGet("https://pastebin.com/raw/wRnsJeid"))()
local HealthBarLerp = LerpColorModule:Lerp(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0))

local function NewCircle(Transparency, Color, Radius, Filled, Thickness)
    local c = Drawing.new("Circle")
    c.Transparency = Transparency
    c.Color = Color
    c.Visible = false
    c.Thickness = Thickness
    c.Position = Vector2.new(0, 0)
    c.Radius = Radius
    c.NumSides = math.clamp(Radius*55/100, 10, 75)
    c.Filled = Filled
    return c
end

local RadarInfo = {
    Position = Vector2.new(200, 200),
    Radius = 100,
    Scale = 1, -- Determinant factor on the effect of the relative position for the 2D integration
    RadarBack = Color3.fromRGB(10, 10, 10),
    RadarBorder = Color3.fromRGB(75, 75, 75),
    LocalPlayerDot = Color3.fromRGB(255, 255, 255),
    PlayerDot = Color3.fromRGB(60, 170, 255),
    Team = Color3.fromRGB(0, 255, 0),
    Enemy = Color3.fromRGB(255, 0, 0),
    Health_Color = true,
    Team_Check = true
}

local RadarBackground = NewCircle(0.9, RadarInfo.RadarBack, RadarInfo.Radius, true, 1)
RadarBackground.Visible = true
RadarBackground.Position = RadarInfo.Position

local RadarBorder = NewCircle(0.75, RadarInfo.RadarBorder, RadarInfo.Radius, false, 3)
RadarBorder.Visible = true
RadarBorder.Position = RadarInfo.Position

local function GetRelative(pos)
    local char = Player.Character
    if char ~= nil and char.PrimaryPart ~= nil then
        local pmpart = char.PrimaryPart
        local camerapos = Vector3.new(Camera.CFrame.Position.X, pmpart.Position.Y, Camera.CFrame.Position.Z)
        local newcf = CFrame.new(pmpart.Position, camerapos)
        local r = newcf:PointToObjectSpace(pos)
        return r.X, r.Z
    else
        return 0, 0
    end
end

function PlaceDot(plr)
    local PlayerDot = NewCircle(1, RadarInfo.PlayerDot, 3, true, 1)

    local function Update()
        pcall(function()
        local c 
        c = game:service("RunService").RenderStepped:Connect(function()
            pcall(function()
            local char = plr
            if plr:FindFirstChildOfClass("Texture") then
                --local hum = char:FindFirstChildOfClass("Humanoid")
                local scale = RadarInfo.Scale
                local relx, rely = GetRelative(char.Position)
                local newpos = RadarInfo.Position - Vector2.new(relx * scale, rely * scale) 
                
                if (newpos - RadarInfo.Position).magnitude < RadarInfo.Radius-2 then 
                    PlayerDot.Radius = 3   
                    PlayerDot.Position = newpos
                    if _G.Rader then 
                    PlayerDot.Visible = true
                    else
                        PlayerDot.Visible = false
                    end
                else 
                    local dist = (RadarInfo.Position - newpos).magnitude
                    local calc = (RadarInfo.Position - newpos).unit * (dist - RadarInfo.Radius)
                    local inside = Vector2.new(newpos.X + calc.X, newpos.Y + calc.Y)
                    PlayerDot.Radius = 2
                    PlayerDot.Position = inside
                    if _G.Rader then 
                    PlayerDot.Visible = true
                    else
                        PlayerDot.Visible = false
                    end
                end

                PlayerDot.Color = RadarInfo.PlayerDot
            else 
                PlayerDot.Visible = false
                if not plr:FindFirstChildOfClass("Texture") then
                    PlayerDot:Remove()
                    c:Disconnect()
                end
            end
        end)
        end)
    end)
    end
    coroutine.wrap(Update)()
end
local function NewLocalDot()
    local d = Drawing.new("Triangle")
    d.Visible = true
    d.Thickness = 1
    d.Filled = true
    d.Color = RadarInfo.LocalPlayerDot
    d.PointA = RadarInfo.Position + Vector2.new(0, -6)
    d.PointB = RadarInfo.Position + Vector2.new(-3, 6)
    d.PointC = RadarInfo.Position + Vector2.new(3, 6)
    return d
end

local LocalPlayerDot = NewLocalDot()

-- Loop
coroutine.wrap(function()
    local c 
    c = game:service("RunService").RenderStepped:Connect(function()
        if LocalPlayerDot ~= nil then
            if _G.Rader then 
            LocalPlayerDot.Color = RadarInfo.LocalPlayerDot
            LocalPlayerDot.PointA = RadarInfo.Position + Vector2.new(0, -6)
            LocalPlayerDot.PointB = RadarInfo.Position + Vector2.new(-3, 6)
            LocalPlayerDot.PointC = RadarInfo.Position + Vector2.new(3, 6)
            else
                LocalPlayerDot.Color = RadarInfo.LocalPlayerDot
                LocalPlayerDot.PointA = Vector2.new(0, 0)
                LocalPlayerDot.PointB = Vector2.new(0, 0)
                LocalPlayerDot.PointC = Vector2.new(0, 0)  
             end
        end
        if _G.Rader then 
            RadarBackground.Visible = true 
            RadarBackground.Position = RadarInfo.Position
            RadarBackground.Radius = RadarInfo.Radius
            RadarBackground.Color = RadarInfo.RadarBack
            RadarBorder.Visible = true
            RadarBorder.Position = RadarInfo.Position
            RadarBorder.Radius = RadarInfo.Radius
            RadarBorder.Color = RadarInfo.RadarBorder
        else
            RadarBackground.Visible = false 
            RadarBackground.Position = Vector2.new(0, 0)
            RadarBorder.Visible = false 
            RadarBorder.Position = Vector2.new(0, 0)
        end
    end)
end)()

-- Draggable
local inset = game:service("GuiService"):GetGuiInset()

local dragging = false
local offset = Vector2.new(0, 0)
UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
        offset = RadarInfo.Position - Vector2.new(Mouse.X, Mouse.Y)
        dragging = true
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

coroutine.wrap(function()
    local dot = NewCircle(1, Color3.fromRGB(255, 255, 255), 3, true, 1)
    local c 
    c = game:service("RunService").RenderStepped:Connect(function()
        if (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
            if  _G.Rader then 
                dot.Position = Vector2.new(Mouse.X, Mouse.Y + inset.Y)
                dot.Visible = true
                else
                dot.Position = Vector2.new(0,0)
                dot.Visible = false
            end
        else 
            dot.Visible = false
        end
        if dragging then
            if  _G.Rader then 
                RadarInfo.Position = Vector2.new(Mouse.X, Mouse.Y) + offset
            else
                RadarInfo.Position = Vector2.new(0,0)
            end
        end
    end)
end)()
end
do 
local DistFromCenter = 80
local TriangleHeight = 16
local TriangleWidth = 16
local TriangleFilled = true
local TriangleTransparency = 0
local TriangleThickness = 1
local TriangleColor = Color3.fromRGB(255, 255, 255)
local AntiAliasing = false

local Players = game:service("Players")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RS = game:service("RunService")

local V3 = Vector3.new
local V2 = Vector2.new
local CF = CFrame.new
local COS = math.cos
local SIN = math.sin
local RAD = math.rad
local DRAWING = Drawing.new
local CWRAP = coroutine.wrap
local ROUND = math.round

local function GetRelative(pos, char)
    if not char then return V2(0,0) end

    local rootP = char.PrimaryPart.Position
    local camP = Camera.CFrame.Position
    local relative = CF(V3(rootP.X, camP.Y, rootP.Z), camP):PointToObjectSpace(pos)

    return V2(relative.X, relative.Z)
end

local function RelativeToCenter(v)
    return Camera.ViewportSize/2 - v
end

local function RotateVect(v, a)
    a = RAD(a)
    local x = v.x * COS(a) - v.y * SIN(a)
    local y = v.x * SIN(a) + v.y * COS(a)

    return V2(x, y)
end

local function DrawTriangle(color)
    local l = DRAWING("Triangle")
    l.Visible = false
    l.Color = color
    l.Filled = TriangleFilled
    l.Thickness = TriangleThickness
    l.Transparency = 1-TriangleTransparency
    return l
end

local function AntiA(v)
    if (not AntiAliasing) then return v end
    return V2(ROUND(v.x), ROUND(v.y))
end

function ShowArrow(PLAYER)
    local Arrow = DrawTriangle(TriangleColor)

    local function Update()
        local c ; c = RS.RenderStepped:Connect(function()
            if PLAYER:FindFirstChildOfClass("Texture") then
                local CHAR = PLAYER
                --local HUM = CHAR:FindFirstChildOfClass("Humanoid")

                if PLAYER then
                    local _,vis = Camera:WorldToViewportPoint(CHAR.Position)
                    if vis == false then
                        local rel = GetRelative(CHAR.Position, Player.Character)
                        local direction = rel.unit

                        local base  = direction * DistFromCenter
                        local sideLength = TriangleWidth/2
                        local baseL = base + RotateVect(direction, 90) * sideLength
                        local baseR = base + RotateVect(direction, -90) * sideLength

                        local tip = direction * (DistFromCenter + TriangleHeight)
                        
                        Arrow.PointA = AntiA(RelativeToCenter(baseL))
                        Arrow.PointB = AntiA(RelativeToCenter(baseR))

                        Arrow.PointC = AntiA(RelativeToCenter(tip))
                        if _G.Arrow then 
                        Arrow.Visible = true
                        else Arrow.Visible = false 
                    end
                    else Arrow.Visible = false end
                else Arrow.Visible = false end
            else 
                Arrow.Visible = false

                if not PLAYER:FindFirstChildOfClass("Texture") then
                    Arrow:Remove()
                    c:Disconnect()
                end
            end
        end)
    end

    CWRAP(Update)()
end

do 
    -- Preview: https://gyazo.com/02cfb4aa8659ba5f6ee67a90514cc34d
-- Made by Blissful#4992
local Settings = {
    Color = Color3.fromRGB(255, 203, 138), -- Color of the line
    Thickness = 1, -- Thickness of the line (Overruled by AutoThickness if activated)
    Transparency = 1, -- 1 Visible - 0 Not Visible
    AutoThickness = true, -- Makes Thickness above futile, scales according to distance, good for less encumbered screen
    Length = 15, -- In studs of the line
    Smoothness = 0.2 -- 0.01 - Less Smooth(Faster), 1 - Smoother (Slower)
}

local toggle = true -- use this variable if you wanna integrate into a GUI

local player = game:GetService("Players").LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera

function ESP(plr) --//Main function handling specific plr loop esp for line etc
    local line = Drawing.new("Line") --// Parse and Set the line for tracer
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(0, 0)
    line.Color = Settings.Color
    line.Thickness = Settings.Thickness
    line.Transparency = Settings.Transparency

    local function Updater() --// Function to update the ESP therefore, line destinations etc every /render/
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function() -- Putting function in a connection var in order to disconnect if needed, to save performance
            if  plr:FindFirstChildOfClass("Texture") then
                local headpos, OnScreen = camera:WorldToViewportPoint(plr.Parent.PrimaryPart.Position)
                if OnScreen then -- checks if player is on screen or not
                    local offsetCFrame = CFrame.new(0, 0, -Settings.Length)
                    local check = false
                    line.From = Vector2.new(headpos.X, headpos.Y)
                    if Settings.AutoThickness then
                        local distance = (player.Character.HumanoidRootPart.Position - plr.Position).magnitude --//AutoThickness
                        local value = math.clamp(1/distance*100, 0.1, 3) --0.1 is min thickness, 4 is max
                        line.Thickness = value
                    end
                    repeat
                        local dir = plr.Parent.PrimaryPart.CFrame:ToWorldSpace(offsetCFrame)
                        offsetCFrame = offsetCFrame * CFrame.new(0, 0, Settings.Smoothness)
                        local dirpos, vis = camera:WorldToViewportPoint(Vector3.new(dir.X, dir.Y, dir.Z))
                        if vis then
                            check = true
                            line.To = Vector2.new(dirpos.X, dirpos.Y)
                            if _G.ViewTracer then 
                                line.Visible = true
                            else
                                line.Visible = false 
                            end
                            offsetCFrame = CFrame.new(0, 0, -Settings.Length)
                        end
                    until check == true
                else 
                    line.Visible = false
                end
            else 
                line.Visible = false
                if not plr:FindFirstChildOfClass("Texture") then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Updater)()
end
end
do 
    local Settings = {
        Box_Color = Color3.fromRGB(255, 0, 0),
        Tracer_Color = Color3.fromRGB(255, 0, 0),
        Tracer_Thickness = 1,
        Box_Thickness = 1,
        Tracer_Origin = "Bottom", -- Middle or Bottom if FollowMouse is on this won't matter...
        Tracer_FollowMouse = false,
        Tracers = true
    }
    local Team_Check = {
        TeamCheck = false, -- if TeamColor is on this won't matter...
        Green = Color3.fromRGB(0, 255, 0),
        Red = Color3.fromRGB(255, 0, 0)
    }
    local TeamColor = true
    

    local player = game:GetService("Players").LocalPlayer
    local camera = game:GetService("Workspace").CurrentCamera
    local mouse = player:GetMouse()
    
    local function NewQuad(thickness, color)
        local quad = Drawing.new("Quad")
        quad.Visible = false
        quad.PointA = Vector2.new(0,0)
        quad.PointB = Vector2.new(0,0)
        quad.PointC = Vector2.new(0,0)
        quad.PointD = Vector2.new(0,0)
        quad.Color = color
        quad.Filled = false
        quad.Thickness = thickness
        quad.Transparency = 1
        return quad
    end
    
    local function NewLine(thickness, color)
        local line = Drawing.new("Line")
        line.Visible = false
        line.From = Vector2.new(0, 0)
        line.To = Vector2.new(0, 0)
        line.Color = color 
        line.Thickness = thickness
        line.Transparency = 1
        return line
    end
    
    local function Visibility(state, lib)
        for u, x in pairs(lib) do
            x.Visible = state
        end
    end
    
    local function ToColor3(col) --Function to convert, just cuz c;
        local r = col.r --Red value
        local g = col.g --Green value
        local b = col.b --Blue value
        return Color3.new(r,g,b); --Color3 datatype, made of the RGB inputs
    end
    
    local black = Color3.fromRGB(0, 0 ,0)
   function ESP2(plr)
        local library = {
            blacktracer = NewLine(Settings.Tracer_Thickness*2, black),
            tracer = NewLine(Settings.Tracer_Thickness, Settings.Tracer_Color),
            --black = NewQuad(Settings.Box_Thickness*2, black),
           -- box = NewQuad(Settings.Box_Thickness, Settings.Box_Color),
            --healthbar = NewLine(3, black),
            --greenhealth = NewLine(1.5, black)
        }
    
        local function Colorize(color)
            for u, x in pairs(library) do
                if x ~= library.healthbar and x ~= library.greenhealth and x ~= library.blacktracer and x ~= library.black then
                    x.Color = color
                end
            end
        end
    
        local function Updater()
            local connection
            connection = game:GetService("RunService").RenderStepped:Connect(function()
                if  plr:FindFirstChildOfClass("Texture") then
                    local HumPos, OnScreen = camera:WorldToViewportPoint(plr.Position)
                    if OnScreen then
                        local head = camera:WorldToViewportPoint(plr.Parent.PrimaryPart.Position)
                        local DistanceY = math.clamp((Vector2.new(head.X, head.Y) - Vector2.new(HumPos.X, HumPos.Y)).magnitude, 2, math.huge)
                        
                       --[[ local function Size(item)
                            item.PointA = Vector2.new(HumPos.X + DistanceY, HumPos.Y - DistanceY*2)
                            item.PointB = Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2)
                            item.PointC = Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)
                            item.PointD = Vector2.new(HumPos.X + DistanceY, HumPos.Y + DistanceY*2)
                        end]]
                        --Size(library.box)
                        --Size(library.black)
    
                        --//Tracer 
                        if _G.Tracers then
                            if Settings.Tracer_Origin == "Middle" then
                                library.tracer.From = camera.ViewportSize*0.5
                                library.blacktracer.From = camera.ViewportSize*0.5
                            elseif Settings.Tracer_Origin == "Bottom" then
                                library.tracer.From = Vector2.new(camera.ViewportSize.X*0.5, camera.ViewportSize.Y) 
                                library.blacktracer.From = Vector2.new(camera.ViewportSize.X*0.5, camera.ViewportSize.Y)
                            end
                            if Settings.Tracer_FollowMouse then
                                library.tracer.From = Vector2.new(mouse.X, mouse.Y+36)
                                library.blacktracer.From = Vector2.new(mouse.X, mouse.Y+36)
                            end
                            library.tracer.To = Vector2.new(HumPos.X, HumPos.Y + DistanceY*2)
                            library.blacktracer.To = Vector2.new(HumPos.X, HumPos.Y + DistanceY*2)
                        else 
                            library.tracer.From = Vector2.new(0, 0)
                            library.blacktracer.From = Vector2.new(0, 0)
                            library.tracer.To = Vector2.new(0, 0)
                            library.blacktracer.To = Vector2.new(0, 02)
                        end
    
                        --// Health Bar
                       --[[ local d = (Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2) - Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)).magnitude 
                        local healthoffset = plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth * d
    
                        library.greenhealth.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
                        library.greenhealth.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2 - healthoffset)
    
                        library.healthbar.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
                        library.healthbar.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y - DistanceY*2)
    
                        local green = Color3.fromRGB(0, 255, 0)
                        local red = Color3.fromRGB(255, 0, 0)
    
                        library.greenhealth.Color = red:lerp(green, plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth);]]
                        Visibility(true, library)
                    else 
                        Visibility(false, library)
                    end
                else 
                    Visibility(false, library)
                    if not plr:FindFirstChildOfClass("Texture") then
                        connection:Disconnect()
                    end
                end
            end)
        end
        coroutine.wrap(Updater)()
    end
    
end


for i,v in pairs(workspace.Players:GetDescendants())do 
	if v:IsA("Part") and v.Parent:IsA("Model") and v.Size == Vector3.new(2,2,1) then 
        v.Parent.PrimaryPart.Name = "Head"
        if tostring(game.Players.LocalPlayer.Team) == "Ghosts" then 
            if v:FindFirstChildOfClass("Texture") and 
            (v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5558971356" or v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5614184106") then 
                v.Name = "HumanoidRootPart"
                PlaceDot(v)
                ShowArrow(v)
                coroutine.wrap(Main)(v)
                coroutine.wrap(ESP)(v)
                coroutine.wrap(ESP2)(v)
            end
            else    
            if v:FindFirstChildOfClass("Texture") and 
            (v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5558971297" or v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5614184140") then 
                v.Name = "HumanoidRootPart"
                PlaceDot(v)
                ShowArrow(v)
                coroutine.wrap(Main)(v)
                coroutine.wrap(ESP)(v)
                coroutine.wrap(ESP2)(v)
            end
        end 
	end
end
workspace.Players.DescendantAdded:Connect(function(v)
	if v:IsA("Part") and v.Parent:IsA("Model") and v.Size == Vector3.new(2,2,1) then 
        --v.Name = "HumanoidRootPart"
        v.Parent.PrimaryPart.Name = "Head"
        if tostring(game.Players.LocalPlayer.Team) == "Ghosts" then 
            if v:FindFirstChildOfClass("Texture") and 
            (v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5558971356" or v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5614184106") then 
                v.Name = "HumanoidRootPart"
                PlaceDot(v)
                ShowArrow(v)
                coroutine.wrap(Main)(v)
                coroutine.wrap(ESP)(v)
                coroutine.wrap(ESP2)(v)
            end
            else    
            if v:FindFirstChildOfClass("Texture") and 
            (v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5558971297" or v:FindFirstChildOfClass("Texture").Texture == "rbxassetid://5614184140") then 
                v.Name = "HumanoidRootPart"
                PlaceDot(v)
                ShowArrow(v)
                coroutine.wrap(Main)(v)
                coroutine.wrap(ESP)(v)
                coroutine.wrap(ESP2)(v)
            end
        end 
	end
end)


end
end)
