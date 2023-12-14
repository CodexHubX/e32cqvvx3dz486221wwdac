
repeat task.wait() until game:IsLoaded()
repeat task.wait() until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Loading")
function LodingScript()
    
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/A1phes/DeityHub/main/UI/Linoria/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/CodexHubX/e32cqvvx3dz486221wwdac/main/ThemeManager.lua"))() 
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/CodexHubX/e32cqvvx3dz486221wwdac/main/SaveManager.lua"))() 
    
if not isfolder("Xenon Hub Anime Adventures") then makefolder("Xenon Hub Anime Adventures") end
if not isfolder("Xenon Hub Anime Adventures/Marco") then makefolder("Xenon Hub Anime Adventures/Marco") end
if not isfolder("Xenon Hub Anime Adventures/User") then makefolder("Xenon Hub Anime Adventures/User") end

Service = { 
    [1] = game:GetService("Workspace"),
    [2] = game:GetService("Players"),
    [3] = game:GetService("ReplicatedStorage"),
    [4] = game:GetService("HttpService"),
    [5] = game:GetService("RunService"),
    [6] = game:GetService("ReplicatedStorage"),
    [7] = game:GetService("UserInputService"),
    [8] = game.Players.LocalPlayer,
    [9] =  {"Tank Enemies","Short Range","Fast Enemies","High Cost","Regen Enemies","Shield Enemies"},
    [10] = {"Reward: Extra Gold","Reward: Star Remnant","Reward: Star Fruit (Rainbow)","Reward: Star Fruits (Random)","Reward: Extra Gems"},
    [11] = {"Cursed Womb","Cursed Parade"},
    [12] = {"Hidden Sand Village","Shiganshinu District","Infinity Train","West City"},
    [13] = {'Planet Namak','Shiganshinu District', 'Hidden Sand Village', 'Ghoul City',"Magic Town","Cursed Academy"},
    [14] = {'Tank Enemies', 'Short Range', 'Fast Enemies', 'High Cost', "Regen Enemies" , 'Shield Enemies'},
    [15] = {'0','1','2', '3', '4',"5","6","7","8","9","10","11","12","13","14","15"
    ,"16","17","18","19","20"},
    [16] = game:GetService("TeleportService"),
    [17] = {"1","2","3","4","5"},
    [18] = {"Steel","Steel Shiv","Kunai","Amplifying Codex"},
    [19] = {"Orwin","Wenda","Leafy"},
    [20] = game:GetService("MarketplaceService"),
    [21] = game:GetService("VirtualInputManager"),
    [22] = game:GetService("UserInputService"),
    [23] = {"Alien Portal","Demon Leader's Portal","Puppet Portal","Eclipse Portal","Noble Portal","Port Agency Portal"},
}

local HasData = {
    ["A"] = "C6x1",
    ["B"] = "pqz1",
    ["C"] = "r3c1",
    ["D"] = "vb41",
    ["E"] = "x4c1",
    ["F"] = "opq1",
    ["G"] = "zqt1",
    ["H"] = "uym1",
    ["I"] = "jhg1",
    ["J"] = "uim1",
    ["K"] = "ghj1",
    ["L"] = "pou1",
    ["M"] = "fgh1",
    ["N"] = "pop1",
    ["O"] = "wer1",
    ["P"] = "qdf1",
    ["Q"] = "gbn1",
    ["R"] = "cvx1",
    ["S"] = "tyu1",
    ["T"] = "mzx1", 
    ["U"] = "pui1",
    ["V"] = "klz1",
    ["W"] = "zxc1", 
    ["S"] = "tgb1",
    ["X"] = "udv4",
    ["Y"] = "nma1",
    ["Z"] = "awm1",
    ["a"] = "C6x2",
    ["b"] = "pqz2",
    ["c"] = "r3c2",
    ["d"] = "vb42",
    ["e"] = "x4c2",
    ["f"] = "opq2",
    ["g"] = "zqt2",
    ["h"] = "uym2",
    ["i"] = "jhg2",
    ["j"] = "uim2",
    ["k"] = "ghj2",
    ["l"] = "pou2",
    ["m"] = "fgh2",
    ["n"] = "pop2",
    ["o"] = "wer2",
    ["p"] = "qdf2",
    ["q"] = "gbn2",
    ["r"] = "cvx2",
    ["s"] = "tyu2",
    ["t"] = "mzx2", 
    ["u"] = "pui2",
    ["v"] = "klz2",
    ["w"] = "zxc2", 
    ["x"] = "udv2",
    ["s"] = "tgb2",
    ["y"] = "nma2",
    ["z"] = "awm2",
    ["_"] = "2n9q",
    ["1"] = "sptf",
    ["2"] = "cort",
    ["3"] = "cuit",
    ["4"] = "cvbz",
    ["5"] = "8uio",
    ["6"] = "9xio",
    ["7"] = "8bnz",
    ["8"] = "7cq2",
    ["9"] = "spuo",
    ["0"] = "mvpc",
}

function HasString(value)
    local has = ""
    for i = 1,#value do 
        local p1 = string.sub(value,i)
        local p2 = string.sub(p1,1,1)
        if HasData[p2] then 
            has = has..HasData[p2]
        end
    end
    return has;
end
function DeHas(value)
    local rawstrig = ""
    local dehas = ""
    local countstring = 0;
    for i = 1,#value do
        local p1 = string.sub(value,i)
        local p2 = string.sub(p1,1,1)
        rawstrig = rawstrig..p2
        countstring = countstring + 1
            if countstring == 4 then 
                for x,y in pairs(HasData)do 
                    if rawstrig == y then 
                    dehas = dehas..tostring(x)
                end
            end
            countstring = 0 
            rawstrig = ""
        end
    end
    return dehas;
end




getgenv().Json_load_data = function() -- read data .json
    local json_file = readfile("Xenon Hub Anime Adventures/User".."/"..Service[8].Name..".json")
    local Decode = Service[4]:JSONDecode(json_file)
    getgenv().DataSave = Decode.DataSave
        getgenv().Json_Update_data = function() -- save data .json
        local my_data = {DataSave = getgenv().DataSave}
        local is_json = Service[4]:JSONEncode(my_data)
        writefile("Xenon Hub Anime Adventures/User".."/"..Service[8].Name..".json", is_json)
    end
end

if isfile("Xenon Hub Anime Adventures/User".."/"..Service[8].Name..".json") then 
    Json_load_data()
else
    local is_data_ = {}
    local is_json_ = Service[4]:JSONEncode(is_data_)
    writefile("Xenon Hub Anime Adventures/User".."/"..Service[8].Name..".json", is_json_)
    Json_load_data()
end
Json_Update_data()
if getgenv().DataSave == nil then getgenv().DataSave = {} end
if DataSave["Ignore Challenge Worlds"] == nil then 
DataSave["Ignore Challenge Worlds"] = {} end
if DataSave["Ignore Challenge Difficulty"] == nil then 
DataSave["Ignore Challenge Difficulty"] = {} end
if DataSave["Ignore Challenge Reward"] == nil then 
DataSave["Ignore Challenge Reward"] = {} end
if DataSave["Infinity Castle Set Max Level"] == nil then 
DataSave["Infinity Castle Set Max Level"] = 150 end 
if DataSave["Infinity Castle Set Max Lost"] == nil then 
DataSave["Infinity Castle Set Max Lost"]  = 10 end
if DataSave["Select Infinity Castle Difficulty"] == nil then 
DataSave["Select Infinity Castle Difficulty"] = "Normal" end
--[[if DataSave["Select Raid World"] == nil then 
DataSave["Select Raid World"] = {} end]]
--[[if DataSave["Select Raid Stages"] == nil then 
DataSave["Select Raid Stages"] = {} end]]
if DataSave["Raid Join"] == nil then 
DataSave["Raid Join"] = 1 end
if DataSave["Dungeon Join"] == nil then 
DataSave["Dungeon Join"] = 1 end
if DataSave["Select Buy Key Method"] == nil then 
DataSave["Select Buy Key Method"] = {} end
if DataSave["Join Data"] == nil then 
DataSave["Join Data"] = {} end
if DataSave['General Join'] == nil then 
DataSave['General Join'] = 1 end
if DataSave["Select Join Method"] == nil then 
DataSave["Select Join Method"] = {} end
if DataSave["Legend Stage Join"] == nil then 
DataSave["Legend Stage Join"] = 1 end
if DataSave["Ignore Infinite Daily Quest Worlds"] == nil then
DataSave["Ignore Infinite Daily Quest Worlds"] = {} end
if DataSave["Portal Info"] == nil then 
DataSave["Portal Info"] = 1 end
if DataSave["Friends Only"] == nil then 
DataSave["Friends Only"] =  false end
--[[if DataSave["Selects Portal"] == nil then 
DataSave["Selects Portal"] = {} end]]
if DataSave["Selects Portal Tier"] == nil then 
DataSave["Selects Portal Tier"] = {} end
if DataSave["Ignore Portal Worlds"] == nil then 
DataSave["Ignore Portal Worlds"] = {} end
if DataSave["Ignore Portal Difficulty"] == nil then 
DataSave["Ignore Portal Difficulty"] = {} end
if DataSave["Merchant Item"] == nil then 
DataSave["Merchant Item"] = {} end
if DataSave["Set Limit X Count"] == nil then 
DataSave["Set Limit X Count"] = 1 end
if  DataSave["Item Select Gold Shop"] == nil then 
DataSave["Item Select Gold Shop"] = {} end
if DataSave["Choose the purchase amount"] == nil then 
DataSave["Choose the purchase amount"] = "x10" end
if DataSave["Relics Select"] == nil then 
DataSave["Relics Select"] = {} end
if DataSave["Selects Capsule"]  == nil then 
DataSave["Selects Capsule"]  = {} end
if DataSave["Ignore Mission Worlds"] == nil then 
DataSave["Ignore Mission Worlds"] = {} end
if DataSave["Select Skin Rarity"]== nil then 
DataSave["Select Skin Rarity"] = {} end
if DataSave["UnitSave"] == nil then 
DataSave["UnitSave"] = {} end
if DataSave["Select Banner"] == nil then 
DataSave["Select Banner"] = {} end
if DataSave["Choose the summon amount"] == nil then 
DataSave["Choose the summon amount"] = "x10" end
if DataSave["Banner Sniper"] == nil then 
DataSave["Banner Sniper"] = {} end
if DataSave["Limit Units Rate"] == nil then 
DataSave["Limit Units Rate"] = 1 end
if DataSave["Record Method"] == nil then 
DataSave["Record Method"] = {} end
if DataSave["Ignore Auto Skip Wave"] == nil then 
DataSave["Ignore Auto Skip Wave"] = true end
if DataSave["Ignore Auto Use Abilltie"] == nil then 
DataSave["Ignore Auto Use Abilltie"] = true end
if DataSave["Auto Leave When Mission Completed"] == nil then 
DataSave["Auto Leave When Mission Completed"] = true end 
if DataSave["Show Mission Progress"] == nil then 
DataSave["Show Mission Progress"] = true end
if DataSave["Dungeon Join"] == nil then 
DataSave["Dungeon Join"] = 1 end 
if DataSave["Start Auto Join Delay"] == nil then 
 DataSave["Start Auto Join Delay"] = 5 end
if DataSave["Item Select Merchant"] == nil then 
DataSave["Item Select Merchant"] = {} end
if DataSave["Select Challenge Marco"] == nil then 
DataSave["Select Challenge Marco"] = {} end
if DataSave["Select Inf Marco"] == nil then 
DataSave["Select Inf Marco"] = {} end

-- Xenon -- -- -- -- -- -- -- -- -- -- -- -- -- 
if DataSave["Select Challenge Worlds"] == nil then
DataSave["Select Challenge Worlds"] = {} end
if DataSave["Select Challenge Difficulty"] == nil then
DataSave["Select Challenge Difficulty"] = {} end
if DataSave["Select Challenge Reward"] == nil then
DataSave["Select Challenge Reward"] = {} end
if DataSave["Select Infinite Daily Quest Worlds"] == nil then 
DataSave["Select Infinite Daily Quest Worlds"] = {} end
if DataSave["Save Portal Difficulty"] == nil then 
DataSave["Save Portal Difficulty"] = {} end
if DataSave["Save Portal Worlds"] == nil then 
DataSave["Save Portal Worlds"] = {} end
if DataSave["Save Item Select Merchant"] == nil then 
DataSave["Save Item Select Merchant"] = {} end
if DataSave["Save Item Select Gold Shop"] == nil then 
DataSave["Save Item Select Gold Shop"] = {} end
if DataSave["Save UnitSave"] == nil then 
DataSave["Save UnitSave"] = {} end
if DataSave["Save Select Banner"] == nil then 
DataSave["Save Select Banner"] = {} end
if DataSave["Save Relics Select"] == nil then 
DataSave["Save Relics Select"] = {} end
if DataSave["Save Capsule Select"] == nil then  
DataSave["Save Capsule Select"] = {} end
if DataSave["Save Reroll Select"] == nil then 
DataSave["Save Reroll Select"] = {} end
if  DataSave["Save Skin Select"] == nil then 
DataSave["Save Skin Select"] = {} end
if DataSave["Save Portal Sell"] == nil then 
DataSave["Save Portal Sell"] = {} end
if DataSave["Portal Sell"] == nil then 
DataSave["Portal Sell"] = {} end
if DataSave["Save Record Method"] == nil then 
DataSave["Save Record Method"] = {["Place"] = true,["Upgrade"] = true,["Sell"] = true,["Target"] = true,["Use Abilltie"] = true} end
if DataSave["Select Wave Sell SpeedWagon"] == nil then 
DataSave["Select Wave Sell SpeedWagon"] = 15 end
if DataSave["Play Method"] == nil then 
    DataSave["Play Method"]  = "Hybrid Index" end
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
if DataSave["Save Portal Sell Tier"] == nil then 
DataSave["Save Portal Sell Tier"] = {} end
if DataSave["Portal Tier Sell"] == nil then 
DataSave["Portal Tier Sell"] = {} end
if DataSave["Save Portal Ignore World Sell"] == nil then 
DataSave["Save Portal Ignore World Sell"] = {} end
if DataSave["Portal Ignore World Sell"] == nil then 
DataSave["Portal Ignore World Sell"]= {} end
if DataSave["Portal Ignore Difficulty Sell"] == nil then 
DataSave["Portal Ignore Difficulty Sell"]= {} end
if DataSave["Save Portal Ignore Difficulty Sell"] == nil then 
DataSave["Save Portal Ignore Difficulty Sell"]= {} end
if DataSave["Selects Trait"] == nil then 
DataSave["Selects Trait"] = {} end
if DataSave["U1 Upgrade Cap"] == nil then 
DataSave["U1 Upgrade Cap"] = 15 end
if DataSave["U2 Upgrade Cap"] == nil then 
DataSave["U2 Upgrade Cap"] = 15 end
if DataSave["U3 Upgrade Cap"] == nil then 
DataSave["U3 Upgrade Cap"] = 15 end
if DataSave["U4 Upgrade Cap"] == nil then 
DataSave["U4 Upgrade Cap"] = 15 end
if DataSave["U5 Upgrade Cap"] == nil then 
DataSave["U5 Upgrade Cap"] = 15 end
if DataSave["U6 Upgrade Cap"] == nil then 
DataSave["U6 Upgrade Cap"] = 15 end
if DataSave["Select Wave Sell"] == nil then 
DataSave["Select Wave Sell"] = 20 end
if DataSave["Abillties_Select"] == nil then 
DataSave["Abillties_Select"] = {} end
if DataSave["Universe Auto Abillties"] == nil then 
DataSave["Universe Auto Abillties"] = {} end
if DataSave["U1_delay"] == nil then 
DataSave["U1_delay"] = 0 end
if DataSave["U2_delay"] == nil then 
DataSave["U2_delay"] = 0 end
if DataSave["U3_delay"] == nil then 
DataSave["U3_delay"] = 0 end
if DataSave["U4_delay"] == nil then 
DataSave["U4_delay"] = 0 end
if DataSave["U5_delay"] == nil then 
DataSave["U5_delay"] = 0 end
if DataSave["U6_delay"] == nil then 
DataSave["U6_delay"] = 0 end
if DataSave["Save UI Key"] == nil then 
DataSave["Save UI Key"] = "F1" end
if  DataSave["FPS CAP"] == nil then 
DataSave["FPS CAP"] = 165 end
if DataSave["Auto Start"] == nil then 
DataSave["Auto Start"] = true end
if DataSave["Select Port Agency Marco"] == nil then 
DataSave["Select Port Agency Marco"] = {} end
if DataSave["U1 Spawn Cap"] == nil then 
DataSave["U1 Spawn Cap"] = 6 end
if DataSave["U2 Spawn Cap"] == nil then 
DataSave["U2 Spawn Cap"] = 6 end
if DataSave["U3 Spawn Cap"] == nil then 
DataSave["U3 Spawn Cap"] = 6 end
if DataSave["U4 Spawn Cap"] == nil then 
DataSave["U4 Spawn Cap"] = 6 end
if DataSave["U5 Spawn Cap"] == nil then 
DataSave["U5 Spawn Cap"] = 6 end
if DataSave["U6 Spawn Cap"] == nil then 
DataSave["U6 Spawn Cap"] = 6 end
if DataSave["Ignore Map Halloween Dungeon Base"] == nil then 
DataSave["Ignore Map Halloween Dungeon Base"] = {} end
if DataSave["Ignore Map Halloween Dungeon"] == nil then 
DataSave["Ignore Map Halloween Dungeon"] = {} end

do 
    DataWorld = require(Service[3]["src"]["Data"]["Worlds"])
    DataRaid = require(Service[3].src.Data.Worlds["Worlds_raids"])
    ItemsForSale = require(Service[3]["src"]["Data"]["ItemsForSale"])
    AllItem = require(Service[3]["src"]["Data"]["Items"])
end


function GetCapsule()
    CapsuleData = {}
    local capsule = {}
    local p1 = 1 
    for i,v in pairs(AllItem)do
        if string.find(tostring(i),"capsule") then
            table.insert(capsule,v.name)
            CapsuleData[p1] = {
                ["Name"] = v.name, 
                ["Id"] = v.id
            }
            p1 = p1 + 1
        end
    end
    return capsule;
end 

function GetRelics()
    local relics = {}
    for i,v in pairs(AllItem)do
        if v.relic_data and v.crafting_recipe then
            table.insert(relics,v.name)
        end
    end
    return relics;
end
raidworldCheck = {}
for x,y in pairs(DataRaid)do 
    if y.name ~= "Shiganshinu District" and y.name ~= "Hidden Sand Village" then 
        table.insert(raidworldCheck,y.name)
    end
end
function GetWorld()
    local world = {}
    for i,v in pairs(DataWorld)do
        if  v.name and not string.find(v.name,"Invasion") and not table.find(world,v.name) and not string.find(tostring(i),"legend")  then 
            if  not table.find(raidworldCheck,v.name) and not table.find(world,v.name) then
                table.insert(world,v.name)
            end
        end
    end
    table.insert(world,"Thriller Park")
    return world;
end

function GetRaid()
    local raid = {}
    for i,v in pairs(DataRaid)do 
        table.insert(raid,v.name)
    end
    return raid;
end

function GetNightmareHuntMap()
    local NightmareHuntMap = {}
    for i,v in pairs(GetWorld())do 
        table.insert(NightmareHuntMap,v)
    end
    for i,v in pairs(GetRaid())do 
        if not table.find(NightmareHuntMap,v) then 
            table.insert(NightmareHuntMap,v)
        end
    end
    return NightmareHuntMap;
end

function GetLegendStage()
    local legendstage = {}
    for i,v in pairs(DataWorld)do 
        if string.find(tostring(i),"legend") then
            if not table.find(legendstage,v.name) then 
                table.insert(legendstage,v.name)
            end
        end
    end
    return legendstage;
end

function GetMarchantItem()
    local allitem = {}
    for i,v in pairs(ItemsForSale)do
        for x,y in pairs(AllItem)do
            if v.id == tostring(x) then
                table.insert(allitem,y.name)
                table.sort(allitem)
            end
        end
    end    
    return allitem;
end

function GetGoldShop()
    local item = {}
    for i,v in pairs(AllItem)do 
        if string.find(v.name,"Star Fruit") or (v.usage and v.usage["type"] and v.usage["type"] == "xp_feed") then
            table.insert(item,v.name)
        end
    end
    return item;
end

function GetTrait()
    local trait = {"Unique","Divine","Golden","Celestial","Reaper","Godspeed","Sniper"}
    return trait;
end

GetMission = {}
function GetMissionfunc()
for i,v in pairs(getgc(true))do 
    if type(v) == "table" and rawget(v,"quest_name") then 
        if v.quest_name == "Daily Mission" and not v["expiry_time"] then 
                table.insert(GetMission,v.id)
            end
        end
    end
end GetMissionfunc()
do -- data loader 
    GetDataInModule = require(Service[3].src.Loader)
    LoderSelfData = GetDataInModule.load_client_service(script, "ItemInventoryServiceClient")
    ItemData = LoderSelfData["session"]['inventory']['inventory_profile_data']['normal_items']
    PortalData = LoderSelfData["session"]['inventory']['inventory_profile_data']['unique_items']
    Old_item_data = {}
for i,v in pairs(ItemData)do 
    table.insert(Old_item_data,tostring(i).." : "..tostring(v))
end
PortalItem = {}
for i,v in pairs(PortalData)do 
    if string.find(v.item_id,"portal") then 
        if not PortalItem[v.item_id] then 
                 PortalItem[v.item_id] = 1 
                 else
                 PortalItem[v.item_id] = PortalItem[v.item_id] + 1
            end
        end
    end
end
ItemInGame = {}
for i,v in pairs(require(Service[3].src.Data.Items))do 
    ItemInGame[v.id] = v.name
end
for i,v in pairs(PortalItem)do 
    if ItemInGame[i] then 
         table.insert(Old_item_data,tostring(ItemInGame[i]).." : "..tostring(v))
    end
end
AllUnit = {}
DataBaseUnit = {}

do -- Update Time Zone 
    function UpdateTime() 
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        local LocalizationService = game:GetService("LocalizationService")
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local name = player.Name
        local result, code = pcall(function()   
        return LocalizationService:GetCountryRegionForPlayerAsync(player) 
        end)
    end
    local updatetimezone = Service[5].Stepped:Connect(UpdateTime)
end

-- GetUnit Data Base 

function GetUnitDataBase()
    for i,v in pairs(Service[3]["src"]["Data"]["Units"]:GetDescendants())do
        if v:IsA("ModuleScript") and v.Name ~= "UnitPresets" and not string.find(v.Name,"_PVE")  then
            for x,y in pairs(require(v))do  
                if  not string.find(tostring(x),"_test") 
                    and not string.find(tostring(x),"test_")then
                    if y.rarity  then 
                        local upcost = 0;
                        if y.upgrade then 
                            for x2,y2 in pairs(y.upgrade)do 
                            upcost = upcost + y2.cost
                            end
                            upgradelvl = #y.upgrade
                        else
                            upgradelvl = "nil"
                        end
                    --print(y.upgrade)
                    --local GetMaxUpgradeDPS = y.upgrade[tonumber(#y.upgrade)].damage / y.upgrade[tonumber(#y.upgrade)].attack_cooldown
                    if y.hybrid_placement then 
                        DataBaseUnit[y.id] = {
                        ["Name"] = y.name,
                        ["Cost"] = y.cost,
                        ["Attack"] = y._base_damage_type,
                        ["SpawnCap"] = y.spawn_cap, 
                        ["UpgradeCap"] = upgradelvl,
                        ["Total Upgrade Cost"] = upcost,
                        ["Type"] = "Hybrid",
                        ['Rarity'] = y.rarity,
                        }
                    elseif y.hill_unit then 
                        DataBaseUnit[y.id] = {
                            ["Name"] = y.name,
                            ["Cost"] = y.cost,
                            ["Attack"] = y._base_damage_type,
                            ["SpawnCap"] = y.spawn_cap, 
                            ["Total Upgrade Cost"] = upcost,
                            ["UpgradeCap"] = upgradelvl,
                            ["Type"] = "Hill",
                            ['Rarity'] = y.rarity,
                            }
                        else
                        DataBaseUnit[y.id] = {
                        ["Name"] = y.name,
                        ["Cost"] = y.cost,
                        ["Attack"] = y._base_damage_type,
                        ["SpawnCap"] = y.spawn_cap, 
                        ["Total Upgrade Cost"] = upcost,
                        ["UpgradeCap"] = upgradelvl,
                        ["Type"] = "Grnd",
                        ['Rarity'] = y.rarity,
                        }
                        end

                        
                    end
                end
            end
        end
    end
end
GetUnitDataBase()
function GetUnitInGame()
    for i,v in pairs(Service[3]["src"]["Data"]["Units"]:GetDescendants())do
        if v:IsA("ModuleScript") and v.Name ~= "UnitPresets" and not string.find(v.Name,"_PVE")  then
            for x,y in pairs(require(v))do  
                if not string.find(tostring(x),"_evolved") 
                    and not string.find(tostring(x),"_test") 
                    and not string.find(tostring(x),"test_")then
                    if y.rarity and not y.evolved then 
                        local upcost = 0;
                        if y.upgrade then 
                            for x2,y2 in pairs(y.upgrade)do 
                            upcost = upcost + y2.cost
                            end
                            upgradelvl = #y.upgrade
                        else
                            upgradelvl = "nil"
                        end
                    --print(y.upgrade)
                    --local GetMaxUpgradeDPS = y.upgrade[tonumber(#y.upgrade)].damage / y.upgrade[tonumber(#y.upgrade)].attack_cooldown
                    if y.hybrid_placement then 
                        AllUnit[y.id] = {
                        ["Name"] = y.name,
                        ["Cost"] = y.cost,
                        ["Attack"] = y._base_damage_type,
                        ["SpawnCap"] = y.spawn_cap, 
                        ["UpgradeCap"] = upgradelvl,
                        ["Total Upgrade Cost"] = upcost,
                        ["Type"] = "Hybrid",
                        ['Rarity'] = y.rarity,
                        }
                    elseif y.hill_unit then 
                        AllUnit[y.id] = {
                            ["Name"] = y.name,
                            ["Cost"] = y.cost,
                            ["Attack"] = y._base_damage_type,
                            ["SpawnCap"] = y.spawn_cap, 
                            ["Total Upgrade Cost"] = upcost,
                            ["UpgradeCap"] = upgradelvl,
                            ["Type"] = "Hill",
                            ['Rarity'] = y.rarity,
                            }
                        else
                        AllUnit[y.id] = {
                        ["Name"] = y.name,
                        ["Cost"] = y.cost,
                        ["Attack"] = y._base_damage_type,
                        ["SpawnCap"] = y.spawn_cap, 
                        ["Total Upgrade Cost"] = upcost,
                        ["UpgradeCap"] = upgradelvl,
                        ["Type"] = "Grnd",
                        ['Rarity'] = y.rarity,
                        }
                        end

                        
                    end
                end
            end
        end
    end
end
GetUnitInGame()











List_files = function()
    local list = listfiles("Xenon Hub Anime Adventures/Marco")
    local out = {}
    for i = 1, #list do
        local file = list[i]
        if file:sub(-5) == '.json' then
            local pos = file:find('.json', 1, true)
            local start = pos
    
            local char = file:sub(pos, pos)
            while char ~= '/' and char ~= '\\' and char ~= '' do
                pos = pos - 1
                char = file:sub(pos, pos)
            end
    
            if char == '/' or char == '\\' then
                table.insert(out, file:sub(pos + 1, start - 1))
            end
        end
    end
    return out
end



Marco_Data = {}
Index = 0 
UnitInMarco = {}
Information = {}
UpdateMarcoData = function()
    Information["Config version"] = "v.1.2"
    Information["Map"] = tostring(MapData.name) 
    Information["Mode"] = tostring(MapData.mode)
    Information["Difficulty"] = tostring(MapData.difficulty)
    Information["Recording Time"] = tostring(datetime).." / "..tostring(timezone)
    local marcodata = {
    ["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"] = Marco_Data,
    ["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"] = Index,
    ["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"] = UnitInMarco,
    ["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"] = Information
    }
    local is_json_marco = Service[4]:JSONEncode(marcodata)
    writefile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Select"]..".json", is_json_marco)
end

FormatMarco = function()
    if isfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Edit Select"]..".json") then 
        local marcodata = {}
        local is_json_marco = Service[4]:JSONEncode(marcodata)
        writefile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Edit Select"]..".json", is_json_marco)
    end
end
-- Index : lopu2NCM8Rfm0vLpyIyrI7I0njUrnS
-- UnitInMarco : YXuDfJDFv7PqGvqVpghJG7JPcpNFl6
-- Marco_Data : 6vR8uBlYkojIa2EEf7BXIT7lp1lrPH
-- Information : 96VMzyFUPFvSCTVauPtk6KpSQAyG9a

ReadingRecordMarco = function()
    if isfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Select"]..".json") then 
        local json_Data = readfile("Xenon Hub Anime Adventures/Marco/"..ReadingMarco..".json")
        local Decode_marco = Service[4]:JSONDecode(json_Data)
        if Decode_marco["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"] then 
            Marco_Data = Decode_marco["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"]
            Index = Decode_marco["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"]
            UnitInMarco = Decode_marco["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"]
            Information = Decode_marco["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"]
        end
    end
end

ReadMarcoData = function()
    --print(ReadingMarco)
    if isfile("Xenon Hub Anime Adventures/Marco/"..ReadingMarco..".json") then 
        local json_Data = readfile("Xenon Hub Anime Adventures/Marco/"..ReadingMarco..".json")
        local Decode_marco = Service[4]:JSONDecode(json_Data)
        if Decode_marco["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"] then 
            Marco_Data = Decode_marco["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"]
            Index = Decode_marco["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"]
            UnitInMarco = Decode_marco["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"]
            Information = Decode_marco["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"]
        elseif Decode_marco.At_Time and Decode_marco.At_Wave then 
            local SetIndex = 1;
            local SetUnitValue = 1;
            local UnitCrame = 1;
            Index = Decode_marco.Index
            Information["No Wave"] = true 
            UnitInMarco = Decode_marco.MarcoUnit
            for i = 1,#Decode_marco.Type do 
                if Decode_marco.Type[i] == "spawn_unit" then 
                    table.insert(Marco_Data,{
                        ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                        ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = SetUnitValue,
                        ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM",
                        ["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"] = HasString(tostring(Decode_marco.Unit_data[i])),
                        ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(Decode_marco.At_Wave[i]),
                        ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(Decode_marco.At_Time[i]),
                        ["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"] = tostring(Decode_marco.Unit_CFrame[UnitCrame]),
                    })
                    SetIndex = SetIndex + 1
                    SetUnitValue = SetUnitValue + 1
                    UnitCrame = UnitCrame + 1
                    elseif Decode_marco.Type[i] == "upgrade_unit_ingame" then 
                    local GetUnitValueOld = string.match(tostring(Decode_marco.Unit_data[i]),"%d+")
                    local UpgradeTag = 0; 
                    for x,y in pairs(Marco_Data)do 
                        if y["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "uVofgY51jLOoXb1TAzc0K2KWFV8OpB" 
                            and y["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] == tonumber(GetUnitValueOld) then 
                            UpgradeTag = UpgradeTag + 1
                        end
                    end
                    UpgradeTag = UpgradeTag + 1
                    table.insert(Marco_Data,{
                        ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                        ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(GetUnitValueOld),
                        ["0CJtTUUGzYYxiB3QWfqvZwitgHD9N6"] = UpgradeTag,
                        ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(Decode_marco.At_Wave[i]),
                        ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(Decode_marco.At_Time[i]),
                        ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uVofgY51jLOoXb1TAzc0K2KWFV8OpB", 
                    })
                    SetIndex = SetIndex + 1
                elseif Decode_marco.Type[i] == "sell_unit_ingame" then 
                    local GetUnitValueOld = string.match(tostring(Decode_marco.Unit_data[i]),"%d+")
                    table.insert(Marco_Data,{
                        ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                        ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(GetUnitValueOld),
                        ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(Decode_marco.At_Wave[i]),
                        ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(Decode_marco.At_Time[i]),
                        ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "17tSJpzx4vV2R3jD9Y25KJXDZYALFz", 
                    })
                    SetIndex =  SetIndex + 1
                elseif Decode_marco.Type[i] == "use_active_attack" then 
                    local GetUnitValueOld = string.match(tostring(Decode_marco.Unit_data[i]),"%d+")
                    table.insert(Marco_Data,{
                        ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                        ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(GetUnitValueOld),
                        ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(Decode_marco.At_Wave[i]),
                        ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(Decode_marco.At_Time[i]),
                        ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uN4d22Iu4BBZEx2ZCmN90GShuttRaD", 
                    })
                    SetIndex =  SetIndex + 1
                elseif Decode_marco.Type[i] == "cycle_priority" then 
                    local GetUnitValueOld = string.match(tostring(Decode_marco.Unit_data[i]),"%d+")
                    table.insert(Marco_Data,{
                        ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                        ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(GetUnitValueOld),
                        ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(Decode_marco.At_Wave[i]),
                        ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(Decode_marco.At_Time[i]),
                        ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "y08kgBLPyqtzqxsqw9jfrjX0lD6PVq", 
                    })
                    SetIndex =  SetIndex + 1
                end
            end
        end
    end
end
IndexSpy = 0 
UnitInMarcoSpy  = {}
ReadMarcoDataIndex = function()
    if isfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Select"]..".json") then 
        local json_Data = readfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Select"]..".json")
        local Decode_marco = Service[4]:JSONDecode(json_Data)
        if Decode_marco["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"] then 
            IndexSpy = Decode_marco["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"]
            UnitInMarcoSpy = Decode_marco["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"]
        elseif Decode_marco.At_Time and Decode_marco.At_Wave then 
            IndexSpy = Decode_marco.Index
            for i,v in pairs(Decode_marco["MarcoUnit"])do 
                table.insert(UnitInMarcoSpy,HasString(v))
            end
        end
    end
end
ReadMarcoEditData = function()
    if isfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Edit Select"]..".json") then 
        local json_Data = readfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Edit Select"]..".json")
        local Decode_marco = Service[4]:JSONDecode(json_Data)
        EditData = Decode_marco
    end
end






LodingMarcoFile = function()
        ReadingMarco = tostring(DataSave["Marco Select"])
        if DataSave["Auto Swap Marco Challenge"] and 
            (string.find(MapData.mode,"Challenge") or string.find(MapData.mode,"Act 1")
            or string.find(MapData.mode,"Act 2") or string.find(MapData.mode,"Act 3")
            or string.find(MapData.mode,"Act 4")or string.find(MapData.mode,"Act 5")
            or string.find(MapData.mode,"Act 6")) then 
            for i,v in pairs(DataSave["Select Challenge Marco"])do 
                if string.find(v,MapData.name) then 
                local p = v:split(": ")    
                local p1 = p[2]
                ReadingMarco = p1
                end
            end
        end
        if DataSave["Auto Swap Port Agency Portal"] and MapData.mode == "Nightmare Hunt" then 
            for i,v in pairs(DataSave["Select Port Agency Marco"])do 
                local p = v:split(": ")    
                local p1 = p[1]
                if string.find(MapData.name,p1) then 
                        local p = v:split(": ")    
                        local p1 = p[2]
                        ReadingMarco = p1
                    end
                end
            end
        if DataSave["Auto Swap Inf"] and 
        (string.find(MapData.mode,"Infinity Castle") or string.find(MapData.mode,"Infinite Mode")) then 
            for i,v in pairs(DataSave["Select Inf Marco"])do 
                if string.find(v,MapData.name) then 
                    local p = v:split(": ")    
                    local p1 = p[2]
                    ReadingMarco = p1
                end
            end
        end
end





-- GetUnitList 
UnitEquip = {}
DataUnit = {}
AllUnitInSlot = {}
for i,v in pairs(getgc(true)) do
if type(v) == "table"  then    
    if rawget(v,"equipped_slot") then     
        if v.equipped_slot == "1" then   
            UnitEquip[1] = {
                ["uuid"] = tostring(v.uuid) ,
                ["ID"] = tostring(v.unit_id),
            }
        if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
            table.insert(AllUnitInSlot,tostring(v.unit_id))
        end
        elseif v.equipped_slot == "2" then     
            UnitEquip[2] = {
                ["uuid"] = tostring(v.uuid) ,
                ["ID"] = tostring(v.unit_id),
            }
            if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
                table.insert(AllUnitInSlot,tostring(v.unit_id))
            end
        elseif v.equipped_slot == "3" then  
            UnitEquip[3] = {
                ["uuid"] = tostring(v.uuid) ,
                ["ID"] = tostring(v.unit_id),
            }
            if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
                table.insert(AllUnitInSlot,tostring(v.unit_id))
            end
        elseif v.equipped_slot == "4" then     
            UnitEquip[4] = {
                    ["uuid"] = tostring(v.uuid) ,
                    ["ID"] = tostring(v.unit_id),
                }
            if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
                table.insert(AllUnitInSlot,tostring(v.unit_id))
            end
        elseif v.equipped_slot == "5" then  
                UnitEquip[5] = {
                ["uuid"] = tostring(v.uuid) ,
                ["ID"] = tostring(v.unit_id),
                }
            if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
                table.insert(AllUnitInSlot,tostring(v.unit_id))
            end
        elseif v.equipped_slot == "6" then   
            UnitEquip[6] = {
                ["uuid"] = tostring(v.uuid) ,
                ["ID"] = tostring(v.unit_id),
            }
            if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
                table.insert(AllUnitInSlot,tostring(v.unit_id))
            end
        end
        elseif rawget(v,"unit_id") then
            if v.uuid  then 
                DataUnit[v.unit_id] = v.uuid
            end
        end
    end
end 

DATAFULLAUTOPLAY = {}
function SETUPFULLAUTOPLAY()
    for i,v in pairs(UnitEquip)do 
        if v["ID"] and DataBaseUnit[v["ID"]] then 
            if Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)]
                and Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)]["Main"]["petimage"]["WorldModel"]:FindFirstChildOfClass("Model") then 
                    if DataBaseUnit[v["ID"]]["SpawnCap"] then 
                    local uniquecheck = nil 
                    if Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)].Main.TraitIcons:FindFirstChild("unique") then 
                        uniquecheck = 1 
                    else
                        uniquecheck = DataBaseUnit[v["ID"]]["SpawnCap"]
                    end
                    DATAFULLAUTOPLAY[i] = {
                        ["Unit"] = v["ID"],
                        ["Cost"] = tonumber(Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)].Cost.text.Text),
                        ["Spawn Cap"] = uniquecheck,
                        ["Type"] = DataBaseUnit[v["ID"]]["Type"],
                        ["uuid"] = v["uuid"],
                        ["Spawn Count"] = 0,
                    }
                    else
                    local uniquecheck = nil 
                    if Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)].Main.TraitIcons:FindFirstChild("unique") then 
                        uniquecheck = 1 
                        else
                        uniquecheck = 2
                    end
                    DATAFULLAUTOPLAY[i] = {
                        ["Unit"] = v["ID"],
                        ["Cost"] = tonumber(Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)].Cost.text.Text),
                        ["Spawn Cap"] = uniquecheck,
                        ["Type"] = DataBaseUnit[v["ID"]]["Type"],
                        ["uuid"] = v["uuid"],
                        ["Spawn Count"] = 0,
                    }
                end
            end
        end
    end
end 
if game.PlaceId ~= 8304191830 then 
    SETUPFULLAUTOPLAY()
end
print("Script Run !!!")
task.wait(3)

local Window  = Library:CreateWindow({
    Title = 'Xenon Hub | Anime Adventures | Mobile ver 1.0',
    Center = true,
    AutoShow = true,
    Position = UDim2.new(0.5, -275, 0.5, -300),
    Size = UDim2.new(0, 600, 0, 400),
    ShowCursor = false
})

--[[local Window = Library:CreateWindow({
    Title = 'Xenon Hub | Anime Adventures | Rework',
    Center = true, 
    AutoShow = false,
})]]



local Tabs = {
    ["AutoJoin"] = Window:AddTab('AutoJoin'), 
    ["General_2"] = Window:AddTab('Lobby'), 
    ["Marco"] = Window:AddTab('Marco'), 
    ["AIPlay"] = Window:AddTab('AI Play'), 
    ["Game"] = Window:AddTab('Game'), 
    ["Misc"] = Window:AddTab('Misc'), 
    ["UI Settings"] = Window:AddTab('Configurations'),
}


--[[local Tabs = {
    AutoJoin = Window:AddTab("Auto Join",true),
    General_2 = Window:AddTab('Lobby',true), 
    Marco = Window:AddTab('Marco',true), 
    AIPlay = Window:AddTab('AI Play',true), 
    Game = Window:AddTab("Game",true), 
    Misc = Window:AddTab("Misc",true),
   ['UI Settings'] = Window:AddTab('Configuration',true),
}]]

TabMain025 = Tabs.Misc:AddLeftTabbox('> Webhook')
Tab026 = TabMain025:AddTab("[ Webhook Settings ]")

    Tab026:AddInput('TextWebhook1', {
    Default = DataSave["Url Webhook"],
    Numeric = false, 
    Finished = false, 
    Text = 'Webhook Url.',
    Tooltip = '', 
    Placeholder = 'Url here..', 
    })
 
    Options.TextWebhook1:OnChanged(function()
        DataSave["Url Webhook"] = tostring(Options.TextWebhook1.Value)
    end)    
    Button016 =  Tab026:AddButton('Test Webhook', function()
        
    end)
    Tab026:AddToggle('ToggleWebhook1', {
        Text = 'Webhook Complete Game',
        Default = DataSave["Webhook Complate"], 
        Tooltip = '', 
        })
        
        Toggles.ToggleWebhook1:OnChanged(function()
            DataSave["Webhook Complate"] = Toggles.ToggleWebhook1.Value
            Json_Update_data()
        end)
        Tab026:AddToggle('ToggleWebhook2', {
            Text = 'Webhook Summon',
            Default = DataSave["Webhook Summon"], 
            Tooltip = '', 
            })
            
        Toggles.ToggleWebhook2:OnChanged(function()
            DataSave["Webhook Summon"] = Toggles.ToggleWebhook2.Value
            Json_Update_data()
        end)
        Tab026:AddToggle('ToggleWebhook3', {
            Text = 'Webhook Merchant',
            Default = DataSave["Webhook Merchant"], 
            Tooltip = '', 
            })
            
        Toggles.ToggleWebhook3:OnChanged(function()
            DataSave["Webhook Merchant"] = Toggles.ToggleWebhook3.Value
            Json_Update_data()
        end)


TabMain026 = Tabs.Misc:AddLeftTabbox('> Webhook')
Tab027 = TabMain026:AddTab("[ Visuals ]")


Tab027:AddToggle('Toggle46', {
    Text = 'Hide Client Name'  ,
    Default = DataSave["Hide_name"], 
    Tooltip = '', 
})

Toggles.Toggle46:OnChanged(function()
    DataSave["Hide_name"] = Toggles.Toggle46.Value
Json_Update_data()
if DataSave["Hide_name"] then
        Service[8].Character.Head["_overhead"].Frame.Visible = false
else
        Service[8].Character.Head["_overhead"].Frame.Visible = true
    end
end)


Tab027:AddToggle('Toggle47', {
    Text = 'Hide Effects'  ,
    Default = DataSave["Hide_Effects"], 
    Tooltip = '', 
})

Toggles.Toggle47:OnChanged(function()
DataSave["Hide_Effects"] = Toggles.Toggle47.Value
Json_Update_data()
if DataSave["Hide_Effects"] then
args = {[1] = "disable_effects",[2] = true}
Service[3].endpoints.client_to_server.toggle_setting:InvokeServer(unpack(args))
args = {[1] = "disable_other_fx",[2] = true}
Service[3].endpoints.client_to_server.toggle_setting:InvokeServer(unpack(args))
args = {[1] = "disable_kill_fx",[2] = true}
Service[3].endpoints.client_to_server.toggle_setting:InvokeServer(unpack(args))
    end
end)
 

Tab027:AddToggle('Toggle48', {
    Text = 'Hide Damage'  ,
    Default = DataSave["Hide_Damage"], 
    Tooltip = '', 
})

Toggles.Toggle48:OnChanged(function()
DataSave["Hide_Damage"] = Toggles.Toggle48.Value
Json_Update_data()
if DataSave["Hide_Damage"] then
args = {[1] = "show_damage_text",[2] = false}
Service[3].endpoints.client_to_server.toggle_setting:InvokeServer(unpack(args))
    end
end)


Tab027:AddToggle('Toggle49', {
    Text = 'Hide Health bar'  ,
    Default = DataSave["Health_bar"], 
    Tooltip = '', 
})

Toggles.Toggle49:OnChanged(function()
    DataSave["Health_bar"] = Toggles.Toggle49.Value
Json_Update_data()
if DataSave["Health_bar"] then
args = {[1] = "show_all_unit_health",[2] = false}
Service[3].endpoints.client_to_server.toggle_setting:InvokeServer(unpack(args))
    end
end)



Tab027:AddToggle('Toggle60', {
    Text = 'Auto Skip Wave'  ,
    Default = DataSave["Hide_Skip_Wave"], 
    Tooltip = '', 
})

Toggles.Toggle60:OnChanged(function()
DataSave["Hide_Skip_Wave"] = Toggles.Toggle60.Value
Json_Update_data()
if DataSave["Hide_Skip_Wave"] then
        args = {[1] = "autoskip_waves",[2] = true}
        Service[3].endpoints.client_to_server.toggle_setting:InvokeServer(unpack(args))
    end    
end)

TabMain028 = Tabs.Misc:AddRightTabbox('> Teleportation')
StatisticsTab_29 = TabMain028:AddTab("[ TP Locations ]")

    local Button15 = StatisticsTab_29 :AddButton('Merchant', function()
    Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(227.453751, 196.79245, -737.507324, 0.536165178, 8.80444873e-08, 0.844113052, -4.98943002e-08, 1, -7.26121954e-08, -0.844113052, -3.18429971e-09, 0.536165178)       
    end)
    local Button16 = StatisticsTab_29 :AddButton('Codes', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(183.936066, 186.751541, -599.201965, 0.200307846, -1.58739812e-08, 0.97973299, 6.86527279e-09, 1, 1.47987391e-08, -0.97973299, 3.7618304e-09, 0.200307846)       
    end)
    local Button17 = StatisticsTab_29 :AddButton('Summon', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(255.169647, 197.82254, -820.812073, 1, -2.89731528e-08, 1.65046741e-14, 2.89731528e-08, 1, -6.84490686e-09, -1.63063549e-14, 6.84490686e-09, 1)       
    end)
    
    local Button18 = StatisticsTab_29 :AddButton('Relics', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(308.608307, 186.751602, -606.362305, 0.486501873, -2.63406785e-09, -0.873679519, 1.86012172e-09, 1, -1.97911842e-09, 0.873679519, -6.62305433e-10, 0.486501873)       
    end)
    local Button19 = StatisticsTab_29 :AddButton('Gold Shop', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(325.578125, 187.056427, -586.962463, 0.771644354, -6.66535342e-08, -0.636054277, 2.2853575e-08, 1, -7.70668507e-08, 0.636054277, 4.49320829e-08, 0.771644354)       
    end)
    local Button20 = StatisticsTab_29 :AddButton('Traits', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(415.160889, 195.585114, -547.671509, -0.0730198696, 1.21132075e-07, -0.997330487, -4.36907328e-08, 1, 1.24655131e-07, 0.997330487, 5.26763984e-08, -0.0730198696)       
    end)
    local Button21 = StatisticsTab_29 :AddButton('Evolve', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(573.159302, 192.856171, -523.992188, -0.00115233555, 8.43068264e-08, -0.999999344, -2.05437534e-08, 1, 8.43305585e-08, 0.999999344, 2.06409165e-08, -0.00115233555)       
    end)
    local Button22 = StatisticsTab_29 :AddButton('Sukuno', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(23003.8008, 15.0589609, -17.1142807, -0.997866511, 3.38695849e-09, -0.0652868673, 9.52540935e-10, 1, 3.73191398e-08, 0.0652868673, 3.71773332e-08, -0.997866511)       
    end)
    
    local Button23 = StatisticsTab_29 :AddButton('Challenges', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(61.5916138, 185.673538, -348.919403, -0.710148335, 7.59566898e-09, 0.704052091, 1.80378712e-09, 1, -8.96909924e-09, -0.704052091, -5.09943066e-09, -0.710148335)       
    end)
    local Button24 = StatisticsTab_29 :AddButton('Raid', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(134.19104, 195.332474, -647.527283, 0.643006265, 1.83543528e-10, 0.765860915, 7.98262123e-10, 1, -9.09866349e-10, -0.765860915, 1.19640753e-09, 0.643006265)       
    end)
    local Button25 = StatisticsTab_29 :AddButton('Dungeon', function()
        Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(-99.8455124, 196.631805, -527.383545, -0.202846497, 4.26751328e-08, 0.979210556, -1.15620118e-08, 1, -4.59762681e-08, -0.979210556, -2.06477679e-08, -0.202846497)       
    end)


TabMain027 = Tabs.Misc:AddLeftTabbox('> Eficiency')
Tab028 = TabMain027:AddTab("[ Performance ]")

Tab028:AddSlider('Slider3', {
    Text = 'Set FPS Limit',


    Default = DataSave["FPS CAP"],
    Min = 1,
    Max = 500,
    Rounding = 0,

    Compact = false, 
    })

    Options.Slider3:OnChanged(function()
        DataSave["FPS CAP"] = Options.Slider3.Value
        Json_Update_data()
    end)
    
    Tab028:AddToggle('Toggle51', {
    Text = 'Enable FPS Limit'  ,
    Default = DataSave["Enable FPS Limit"], 
    Tooltip = '', 
    })

    Toggles.Toggle51:OnChanged(function()
        DataSave["Enable FPS Limit"] = Toggles.Toggle51.Value
        Json_Update_data()
    end)

    Tab028:AddToggle('Toggle52xv', {
    Text = 'Auto White Screen'  ,
    Default = DataSave["Auto White Screen"], 
    Tooltip = '', 
    })

    Toggles.Toggle52xv:OnChanged(function()
        DataSave["Auto White Screen"] = Toggles.Toggle52xv.Value
        Json_Update_data()   
    end)


    
    Tab028:AddToggle('Toggle52xvx', {
        Text = 'White Screen Always'  ,
        Default = DataSave["White Screen Always"], 
        Tooltip = '', 
        })
    
        Toggles.Toggle52xvx:OnChanged(function()
            DataSave["White Screen Always"] = Toggles.Toggle52xvx.Value
            Json_Update_data()   
            if DataSave["White Screen Always"] then 
                game.RunService:Set3dRenderingEnabled(false)
            else
                game.RunService:Set3dRenderingEnabled(true)
            end
        end)
    Tab028:AddToggle('Toggle27xaa', {
        Text = 'Fps Boost Ultimate',
        Default =  DataSave["FPS Boost"], 
        Tooltip = 'nil', 
    })
    
    Toggles.Toggle27xaa:OnChanged(function()
        DataSave["FPS Boost"] = Toggles.Toggle27xaa.Value
        Json_Update_data()   
        if  DataSave["FPS Boost"] then 
            for _,v in pairs(workspace:GetDescendants()) do
                if v.ClassName == "Part"
                or v.ClassName == "SpawnLocation"
                or v.ClassName == "WedgePart"
                or v.ClassName == "Terrain"
                or v.ClassName == "MeshPart" then
                v.Material = "Plastic"
                end
            end
        end
    end) 












TabSettings = Tabs.AutoJoin:AddLeftTabbox('> Settings')
TabSettings001 = TabSettings:AddTab("[ Settings ]")


TabSettings001:AddToggle('Toggle12', {
    Text = 'Auto Start',
    Default = DataSave["Auto Start"], 
    Tooltip = 'Start playing immediately without having to press anything or wait for a countdown.', 
    })
    
    Toggles.Toggle12:OnChanged(function()
        DataSave["Auto Start"] = Toggles.Toggle12.Value
        Json_Update_data()
    end)
      
    TabSettings001:AddToggle('Toggle13', {
    Text = 'Auto Back to Lobby',
    Default = DataSave["Auto Back To Lobby"], 
    Tooltip = 'Start playing the story that you played again.', 
    })
    
    Toggles.Toggle13:OnChanged(function()
        DataSave["Auto Back To Lobby"] = Toggles.Toggle13.Value
        Json_Update_data()
    end)
    
    TabSettings001:AddToggle('Toggle53xa', {
    Text = 'Auto Replay',
    Default = DataSave["Auto Replay"], 
    Tooltip = 'After you finish story, It will automatically proceed to the next story.', 
    })
    
    Toggles.Toggle53xa:OnChanged(function()
        DataSave["Auto Replay"] = Toggles.Toggle53xa.Value
        Json_Update_data()
    end)
    
    
    
    TabSettings001:AddToggle('Toggle14', {
    Text = 'Auto Next Room',
    Default = DataSave["Auto Next Room"], 
    Tooltip = 'Return to the lobby once you have completed that story', 
    })
    
    Toggles.Toggle14:OnChanged(function()
        DataSave["Auto Next Room"] = Toggles.Toggle14.Value
        Json_Update_data()
    end)
    TabSettings001:AddToggle('Toggle11a', {
        Text = 'Auto Next Story',
        Default = DataSave["Auto Next Story"], 
        Tooltip = 'After you finish playing. It will automatically to the next room.', 
        })
    
        Toggles.Toggle11a:OnChanged(function()
            DataSave["Auto Next Story"] = Toggles.Toggle11a.Value
            Json_Update_data()
        end)
    
        TabSettings001:AddToggle('Toggleportal3', {
        Text = 'Auto Pick Portal',
        Default =   DataSave["Auto Pick Portal"], 
        Tooltip = 'nil', 
    })
    
    Toggles.Toggleportal3:OnChanged(function()
        DataSave["Auto Pick Portal"] = Toggles.Toggleportal3.Value
        Json_Update_data()
    end)


    TabSettings001:AddToggle('ToggFriends1', {
        Text = 'Friends Only',
        Default =  DataSave["Friends Only"], 
        Tooltip = 'nil', 
    })
    
    Toggles.ToggFriends1:OnChanged(function()
        DataSave["Friends Only"] = Toggles.ToggFriends1.Value
        Json_Update_data()
    end)
    TabSettings001:AddToggle('ToggFind1', {
        Text = 'Find Match',
        Default =  DataSave["Find Match"], 
        Tooltip = 'nil', 
    })
    
    Toggles.ToggFind1:OnChanged(function()
        DataSave["Find Match"] = Toggles.ToggFind1.Value
        Json_Update_data()
    end)
    TabSettings001:AddSlider('MySlider1', {
        Text = 'Set Auto Join Delay ( Sec. )' ,
    
        Default =  DataSave["Start Auto Join Delay"],
        Min = 0,
        Max = 60,
        Rounding = 0,
    
        Compact = false, 
    })

    
    
    Options.MySlider1:OnChanged(function()
        DataSave["Start Auto Join Delay"] = Options.MySlider1.Value
        Json_Update_data()
    end)

    TabMain001 = Tabs.AutoJoin:AddLeftTabbox('> Auto Join World')
    Tab001 = TabMain001:AddTab("Story Mode")
    
    WorldStages = {}
    GetWorldStages = function()
        for i,v in pairs(require(Service[3]["src"]["Data"]["Worlds"]))do
            if DataSave["Select World"] == v.name then 
                for x,y in pairs(v.levels)do
                    if not string.find(y.id,"legend") then
                            table.insert(WorldStages,y.id)
                        if v.infinite and not table.find(WorldStages,v.infinite.id) then
                            table.insert(WorldStages,v.infinite.id)
                        end
                    end         
                end
            end
        end
        if Xenon_load  then 
            Options.Dropdown2.Values = WorldStages
            Options.Dropdown2:SetValues()
        end
    end
    


    Tab001:AddDropdown('Dropdown1', {
    Values = GetWorld(),
    Default = DataSave["Select World"], 
    Multi = false, 
 
    Text = 'Select World',
    Tooltip = '',
})

Options.Dropdown1:OnChanged(function()
    DataSave["Select World"] = Options.Dropdown1.Value
    Json_Update_data()
    table.clear(WorldStages)
    GetWorldStages()
end)


Tab001:AddDropdown('Dropdown2', {
    Values = WorldStages,
    Default = DataSave["Select World Stages"], 
    Multi = false, 
 
    Text = 'Select Act',
    Tooltip = '',
})

Options.Dropdown2:OnChanged(function()
    DataSave["Select World Stages"] = Options.Dropdown2.Value
    Json_Update_data()
end)

Tab001:AddDropdown('Dropdown3', {
    Values = {"Normal","Hard"},
    Default = DataSave["Select World Difficulty"], 
    Multi = false, 
 
    Text = 'Select Difficulty',
    Tooltip = '',
})

Options.Dropdown3:OnChanged(function()
    DataSave["Select World Difficulty"] = Options.Dropdown3.Value
    Json_Update_data()
end)



Tab001:AddToggle('Toggle1', {
    Text = '- Auto Join Select World',
    Default = DataSave["Auto Join Select World"], 
    Tooltip = 'Joining a Story/Infinite automatically also dont forget to select world, act you want to join. ', 
})

Toggles.Toggle1:OnChanged(function()
    DataSave["Auto Join Select World"] = Toggles.Toggle1.Value
    Json_Update_data()
end)

Tab001:AddDivider()
Tab001:AddDropdown('DropdownTeamSwap1', {
    Values = {"1","2","3","4","5"},
    Default = DataSave["Select Team Main Worlds"], 
    Multi = false, 
 
    Text = 'Select Team',
    Tooltip = '',
})

Options.DropdownTeamSwap1:OnChanged(function()
    DataSave["Select Team Main Worlds"] = Options.DropdownTeamSwap1.Value
    Json_Update_data()
end)
Tab001:AddToggle('ToggleTeamSwap1', {
    Text = '- Team Swap Story / Inf',
    Default = DataSave["Use Team Swap Story"], 
    Tooltip = '', 
})

Toggles.ToggleTeamSwap1:OnChanged(function()
    DataSave["Use Team Swap Story"] = Toggles.ToggleTeamSwap1.Value
    Json_Update_data()
end)



--TabMain002 = Tabs.AutoJoin:AddRightTabbox('> Challenge')
Tab002 = TabMain001:AddTab("Challenges Mode")


Tab002:AddDropdown('MultiDropdown1', {


    Values = GetWorld(),
    Default = {}, 
    Multi = true, 

    Text = 'Ignore Challenge World',
    Tooltip = "Choose the challenge you dont want to encounter it",
})

Options.MultiDropdown1:SetValue(DataSave["Select Challenge Worlds"])


Options.MultiDropdown1:OnChanged(function()
    DataSave["Select Challenge Worlds"] = Options.MultiDropdown1.Value
    Json_Update_data()
    table.clear(DataSave["Ignore Challenge Worlds"])
        for i,v in pairs(DataSave["Select Challenge Worlds"])do
            if not table.find(DataSave["Ignore Challenge Worlds"],tostring(i)) then
            table.insert(DataSave["Ignore Challenge Worlds"],tostring(i)) 
            Json_Update_data()
        end
    end    
end)

Tab002:AddDropdown('MultiDropdown2', {


    Values = Service[9],
    Default = {}, 
    Multi = true, 

    Text = 'Ignore Challenge Difficulty',
    Tooltip = "Choose the dificulty you dont want to play it",
})

Options.MultiDropdown2:SetValue(DataSave["Select Challenge Difficulty"])

Options.MultiDropdown2:OnChanged(function()
            DataSave["Select Challenge Difficulty"] = Options.MultiDropdown2.Value
            Json_Update_data()
            table.clear(DataSave["Ignore Challenge Difficulty"])
            for i,v in pairs(DataSave["Select Challenge Difficulty"])do
            if not table.find(DataSave["Ignore Challenge Difficulty"],tostring(i)) then
            table.insert(DataSave["Ignore Challenge Difficulty"],tostring(i)) 
            Json_Update_data()
        end
    end    
end)


Tab002:AddDropdown('MultiDropdown3', {


    Values = Service[10],
    Default = {}, 
    Multi = true, 

    Text = 'Ignore Challenge Reward',
    Tooltip = "Choose the rewards you dont want to receive.",
})


Options.MultiDropdown3:SetValue(DataSave["Select Challenge Reward"])

Options.MultiDropdown3:OnChanged(function()
            DataSave["Select Challenge Reward"] = Options.MultiDropdown3.Value
            Json_Update_data()
            table.clear(DataSave["Ignore Challenge Reward"])
            for i,v in pairs(DataSave["Select Challenge Reward"])do
            if not table.find(DataSave["Ignore Challenge Reward"],tostring(i)) then
            table.insert(DataSave["Ignore Challenge Reward"],tostring(i)) 
            Json_Update_data()
        end
    end    
end)



Tab002:AddToggle('Toggle3', {
    Text = '- Auto Join Challenge',
    Default = DataSave["Auto Join Challenge"], 
    Tooltip = 'Joining a challenge automatically', 
})

Toggles.Toggle3:OnChanged(function()
    DataSave["Auto Join Challenge"] = Toggles.Toggle3.Value
    Json_Update_data()
end)

Tab002:AddDivider()
Tab002:AddDropdown('DropdownTeamSwap2', {
    Values = {"1","2","3","4","5"},
    Default = DataSave["Select Team Challenge"], 
    Multi = false, 
 
    Text = 'Select Team',
    Tooltip = '',
})

Options.DropdownTeamSwap2:OnChanged(function()
    DataSave["Select Team Challenge"] = Options.DropdownTeamSwap2.Value
    Json_Update_data()
end)
Tab002:AddToggle('ToggleTeamSwap2', {
    Text = '- Team Swap Challenge',
    Default = DataSave["Use Team Swap Challenge"], 
    Tooltip = '', 
})

Toggles.ToggleTeamSwap2:OnChanged(function()
    DataSave["Use Team Swap Challenge"] = Toggles.ToggleTeamSwap2.Value
    Json_Update_data()
end)


TabMain003V = Tabs.AutoJoin:AddRightTabbox('> Rawqewqeid')
Tab003V = TabMain003V:AddTab("[ Halloween Event ]")


Tab003V:AddDropdown('MultiDropdownHalloween', {


    Values = GetNightmareHuntMap(),
    Default = {}, 
    Multi = true, 

    Text = 'Ignore Map Halloween Dungeon',
    Tooltip = "",
})


Options.MultiDropdownHalloween:SetValue(DataSave["Ignore Map Halloween Dungeon Base"])

Options.MultiDropdownHalloween:OnChanged(function()
    DataSave["Ignore Map Halloween Dungeon Base"] = Options.MultiDropdownHalloween.Value 
    table.clear( DataSave["Ignore Map Halloween Dungeon"])
    for i,v in pairs(DataSave["Ignore Map Halloween Dungeon Base"])do
        table.insert(DataSave["Ignore Map Halloween Dungeon"],tostring(i))
    end
    Json_Update_data() 
end)




Tab003V:AddToggle('Toggle11hxV', {
    Text = '- Auto Join Halloween Event',
    Default =   DataSave["Auto Join Halloween Event"], 
    Tooltip = '', 
    })

    Toggles.Toggle11hxV:OnChanged(function()
        DataSave["Auto Join Halloween Event"] = Toggles.Toggle11hxV.Value
        Json_Update_data()
    end)


TabMain003 = Tabs.AutoJoin:AddRightTabbox('> Raid')
Tab003 = TabMain003:AddTab("Raid Mode")
RaidStages = {}
GetRaidStages = function()
    for i,v in pairs(require(Service[3].src.Data.Worlds["Worlds_raids"]))do
        if DataSave["Select Raid World"] == v.name then
            for x,y in pairs(v.levels) do
                table.insert(RaidStages,y.id)  
            end
        end
    end
    if Xenon_load then 
        Options.Dropdown28.Values = RaidStages
        Options.Dropdown28:SetValues()
    end
end
Tab003:AddDropdown('Dropdown25', {
    Values = GetRaid(),
    Default = DataSave["Select Raid World"], 
    Multi = false, 
 
    Text = 'Select Raid World',
    Tooltip = 'Choose the Raid World you want to enter and play it.',
})
Options.Dropdown25:OnChanged(function()
    DataSave["Select Raid World"] = Options.Dropdown25.Value
    Json_Update_data()
    if DataSave["Select Raid World"]  then
        table.clear(RaidStages)
        GetRaidStages()
    end
end)






Tab003:AddDropdown('Dropdown28', {
    Values =  RaidStages ,
    Default = DataSave["Select Raid Stages"], 
    Multi = false, 
 
    Text = 'Select Raid lvl',
    Tooltip = 'Choose the Raid Levels you want to enter and play it',
})


Options.Dropdown28:OnChanged(function()
    DataSave["Select Raid Stages"] = Options.Dropdown28.Value
    Json_Update_data()
end)    
    


Tab003:AddToggle('Toggle8', {
    Text = '- Auto Join Raid',
    Default =  DataSave["Auto Join Raid"], 
    Tooltip = 'Joining a Raid automatically.', 
})

Toggles.Toggle8:OnChanged(function()
    DataSave["Auto Join Raid"] = Toggles.Toggle8.Value
    Json_Update_data()
end)
Tab003:AddDivider()
Tab003:AddDropdown('DropdownTeamSwap3', {
    Values = {"1","2","3","4","5"},
    Default = DataSave["Select Team Raid"], 
    Multi = false, 
 
    Text = 'Select Team',
    Tooltip = '',
})

Options.DropdownTeamSwap3:OnChanged(function()
    DataSave["Select Team Raid"] = Options.DropdownTeamSwap3.Value
    Json_Update_data()
end)
Tab003:AddToggle('ToggleTeamSwap3', {
    Text = '- Team Swap Raid',
    Default = DataSave["Use Team Swap Raid"], 
    Tooltip = '', 
})

Toggles.ToggleTeamSwap3:OnChanged(function()
    DataSave["Use Team Swap Raid"] = Toggles.ToggleTeamSwap3.Value
    Json_Update_data()
end)



TabMain004 = Tabs.AutoJoin:AddLeftTabbox('> Infinite Daily Quest')
Tab004 = TabMain004:AddTab("Daily")


Tab004:AddDropdown('MultiDropdown4', {


    Values = GetWorld(),
    Default = {}, 
    Multi = true, 

    Text = 'Ignore Infinite World',
    Tooltip = "Choose the Infinite World you dont want to encounter it",
})


Options.MultiDropdown4:SetValue(DataSave["Select Infinite Daily Quest Worlds"])

Options.MultiDropdown4:OnChanged(function()
    DataSave["Select Infinite Daily Quest Worlds"] = Options.MultiDropdown4.Value
    Json_Update_data()
        table.clear(DataSave["Ignore Infinite Daily Quest Worlds"])
        for i,v in pairs(DataSave["Select Infinite Daily Quest Worlds"])do
            if not table.find(DataSave["Ignore Infinite Daily Quest Worlds"],tostring(i)) then
            table.insert(DataSave["Ignore Infinite Daily Quest Worlds"],tostring(i)) 
            Json_Update_data()
        end
    end    
end)


Tab004:AddToggle('Toggle4', {
    Text = '- Auto Join Inf Quest',
    Default =  DataSave["Auto Join Infinite Daily"], 
    Tooltip = 'Joining a Inf Quest automatically.', 
})

Toggles.Toggle4:OnChanged(function()
    DataSave["Auto Join Infinite Daily"] = Toggles.Toggle4.Value
    Json_Update_data()
end)
Tab004:AddDivider()
Tab004:AddDropdown('DropdownTeamSwap4', {
    Values = {"1","2","3","4","5"},
    Default = DataSave["Select Team Infinite Daily"], 
    Multi = false, 
 
    Text = 'Select Team',
    Tooltip = '',
})

Options.DropdownTeamSwap4:OnChanged(function()
    DataSave["Select Team Infinite Daily"] = Options.DropdownTeamSwap4.Value
    Json_Update_data()
end)
Tab004:AddToggle('ToggleTeamSwap4', {
    Text = '- Team Swap Infinity Castle',
    Default = DataSave["Use Team Swap Infinite Daily"], 
    Tooltip = '', 
})

Toggles.ToggleTeamSwap4:OnChanged(function()
    DataSave["Use Team Swap Infinite Daily"] = Toggles.ToggleTeamSwap4.Value
    Json_Update_data()
end)


--TabMain005 = Tabs.AutoJoin:AddLeftTabbox('> Infinite Castle')
Tab005 = TabMain004:AddTab("Infinite Castle")

Tab005:AddDropdown('Dropdown28x', {
    Values =  {"Normal","Hard"} ,
    Default = DataSave["Select Infinity Castle Difficulty"], 
    Multi = false, 
 
    Text = 'Select Difficulty',
    Tooltip = 'Choose the Raid Levels you want to enter and play it',
})


Options.Dropdown28x:OnChanged(function()
    DataSave["Select Infinity Castle Difficulty"] = Options.Dropdown28x.Value
    Json_Update_data()
end)    
    


Tab005:AddToggle('Toggle11', {
    Text = '- Auto Infinite Castle',
    Default =  DataSave["Auto Infinity Castle"], 
    Tooltip = 'Joining a Inf Castle automatically.', 
    })

    Toggles.Toggle11:OnChanged(function()
        DataSave["Auto Infinity Castle"] = Toggles.Toggle11.Value
        Json_Update_data()
    end)

    Tab005:AddDivider()
    Tab005:AddDropdown('DropdownTeamSwap5', {
        Values = {"1","2","3","4","5"},
        Default = DataSave["Select Team Infinity Castle"], 
        Multi = false, 
     
        Text = 'Select Team',
        Tooltip = '',
    })
    
    Options.DropdownTeamSwap5:OnChanged(function()
        DataSave["Select Team Infinity Castle"] = Options.DropdownTeamSwap5.Value
        Json_Update_data()
    end)
    Tab005:AddToggle('ToggleTeamSwap5', {
        Text = '- Team Swap Infinity Castle',
        Default = DataSave["Use Team Swap Infinity Castle"], 
        Tooltip = '', 
    })
    
    Toggles.ToggleTeamSwap5:OnChanged(function()
        DataSave["Use Team Swap Infinity Castle"] = Toggles.ToggleTeamSwap5.Value
        Json_Update_data()
    end)
    


--TabMain006 = Tabs.AutoJoin:AddRightTabbox('> Legend Stage')
Tab006 = TabMain003:AddTab("Legend Stage")

LegendStageLeave = {}
GetLegendStagesLevel = function()
    for i,v in pairs(require(Service[3]["src"]["Data"]["Worlds"]))do
        if DataSave["Select Legend Stage World"] == v.name then 
            for x,y in pairs(v.levels)do
                table.insert(LegendStageLeave,y.id)
            end
        end
    end
    if Xenon_load then 
        Options.Dropdown28xv1.Values = LegendStageLeave
        Options.Dropdown28xv1:SetValues()
    end
end



Tab006:AddDropdown('Dropdown28xv', {
    Values =  GetLegendStage() ,
    Default = DataSave["Select Legend Stage World"], 
    Multi = false, 
 
    Text = 'Select Legend Stage World',
    Tooltip = '',
})


Options.Dropdown28xv:OnChanged(function()
    DataSave["Select Legend Stage World"] = Options.Dropdown28xv.Value
    Json_Update_data()
    table.clear(LegendStageLeave)
    GetLegendStagesLevel()
end)    

Tab006:AddDropdown('Dropdown28xv1', {
    Values =  LegendStageLeave ,
    Default = DataSave["Select Legend Stage Level"], 
    Multi = false, 
 
    Text = 'Select Legend Stage Level',
    Tooltip = '',
})


Options.Dropdown28xv1:OnChanged(function()
    DataSave["Select Legend Stage Level"] = Options.Dropdown28xv1.Value
    Json_Update_data()
end)    


Tab006:AddToggle('Toggle11h', {
    Text = '- Auto Join Legend Stage',
    Default =  DataSave["Auto Join Legend Stage"], 
    Tooltip = 'Joining a Inf Castle automatically.', 
    })

    Toggles.Toggle11h:OnChanged(function()
        DataSave["Auto Join Legend Stage"] = Toggles.Toggle11h.Value
        Json_Update_data()
    end)

    Tab006:AddDivider()
    Tab006:AddDropdown('DropdownTeamSwap6', {
        Values = {"1","2","3","4","5"},
        Default = DataSave["Select Team Legend Stage"], 
        Multi = false, 
     
        Text = 'Select Team',
        Tooltip = '',
    })
    
    Options.DropdownTeamSwap6:OnChanged(function()
        DataSave["Select Team Legend Stage"] = Options.DropdownTeamSwap6.Value
        Json_Update_data()
    end)
    Tab006:AddToggle('ToggleTeamSwap6', {
        Text = '- Team Swap Legend Stage',
        Default = DataSave["Use Team Swap Legend Stage"], 
        Tooltip = '', 
    })
    
    Toggles.ToggleTeamSwap6:OnChanged(function()
        DataSave["Use Team Swap Legend Stage"] = Toggles.ToggleTeamSwap6.Value
        Json_Update_data()
    end)
    
    --TabMain007 = Tabs.AutoJoin:AddLeftTabbox('> Dungeon ')
    --[[Tab007 = TabMain007:AddTab("Dungeon")

    Tab007:AddDropdown('Dropdown30', {
        Values =  Service[11] ,
        Default = DataSave["Select Dungeon"], 
        Multi = false, 
     
        Text = 'Select Dungeon',
        Tooltip = '',
    })
    
    
    Options.Dropdown30:OnChanged(function()
        DataSave["Select Dungeon"] = Options.Dropdown30.Value
        Json_Update_data()
    end)    
    
    
    Tab007:AddToggle('Toggle11hx', {
        Text = '- Auto Join Dungeon',
        Default =   DataSave["Auto Join Dungeon"], 
        Tooltip = 'Joining a Inf Castle automatically.', 
        })
    
        Toggles.Toggle11hx:OnChanged(function()
            DataSave["Auto Join Dungeon"] = Toggles.Toggle11hx.Value
            Json_Update_data()
        end)
    
        Button001 = Tab007:AddButton('Leave Dungeon Lobby', function()
            if DungeonLobby then 
                Service[3].endpoints.client_to_server.request_leave_lobby
                :InvokeServer(DungeonLobby.Name)
            end
        end)

        Tab007:AddDivider()
        Tab007:AddDropdown('DropdownTeamSwap7', {
            Values = {"1","2","3","4","5"},
            Default = DataSave["Select Team Dungeon"], 
            Multi = false, 
         
            Text = 'Select Team',
            Tooltip = '',
        })
        
        Options.DropdownTeamSwap7:OnChanged(function()
            DataSave["Select Team Dungeon"] = Options.DropdownTeamSwap7.Value
            Json_Update_data()
        end)
        Tab007:AddToggle('ToggleTeamSwap7', {
            Text = '- Team Swap Dungeon',
            Default = DataSave["Use Team Swap Dungeon"], 
            Tooltip = '', 
        })
        
        Toggles.ToggleTeamSwap7:OnChanged(function()
            DataSave["Use Team Swap Dungeon"] = Toggles.ToggleTeamSwap7.Value
            Json_Update_data()
        end)]]

TabMain008 = Tabs.AutoJoin:AddRightTabbox('> Portal ')
Tab008 = TabMain008:AddTab("Portal Mode")
        

Tab008:AddDropdown('Dropdownportal1', {
    Values = Service[23],
    Default = DataSave["Selects Portal"], 
    Multi = false, 
 
    Text = 'Select Portal',
    Tooltip = 'Choose the Portal you want to enter and play it.',
})


Options.Dropdownportal1:OnChanged(function()
    DataSave["Selects Portal"] = Options.Dropdownportal1.Value 
    Json_Update_data()
end)

Tab008:AddDropdown('MultiDropdownportal1', {


    Values = Service[15],
    Default = {}, 
    Multi = true, 

    Text = 'Select Tier',
    Tooltip = "Choose the Tier you want to enter and play it.",
})


Options.MultiDropdownportal1:SetValue(DataSave["Selects Portal Tier"])

Options.MultiDropdownportal1:OnChanged(function()
    DataSave["Selects Portal Tier"] = Options.MultiDropdownportal1.Value 
    Json_Update_data() 
end )


Tab008:AddDropdown('MultiDropdownportal2', {


    Values = GetWorld(),
    Default = {}, 
    Multi = true, 

    Text = 'Ignore World',
    Tooltip = "Choose the World you dont want to encounter it.",
})


Options.MultiDropdownportal2:SetValue( DataSave["Save Portal Worlds"])

Options.MultiDropdownportal2:OnChanged(function()
    DataSave["Save Portal Worlds"] = Options.MultiDropdownportal2.Value 
    table.clear(DataSave["Ignore Portal Worlds"])
    for i,v in pairs(DataSave["Save Portal Worlds"])do
        table.insert(DataSave["Ignore Portal Worlds"],tostring(i))
    end
    Json_Update_data() 
end )


Tab008:AddDropdown('MultiDropdownportal3', {


    Values = {"shield_enemies","regen_enemies","tank_enemies","short_range","fast_enemies","double_cost","triple_cost","hyper_regen_enemies","hyper_shield_enemies","godspeed_enemies","flying_enemies","mini_range"},
    Default = {}, 
    Multi = true, 

    Text = 'Ignore Difficulty',
    Tooltip = "Choose the Difficulty you dont want to encounter it.",
})


Options.MultiDropdownportal3:SetValue(DataSave["Save Portal Difficulty"])

Options.MultiDropdownportal3:OnChanged(function()
    DataSave["Save Portal Difficulty"] = Options.MultiDropdownportal3.Value 
    table.clear( DataSave["Ignore Portal Difficulty"])
    for i,v in pairs(DataSave["Save Portal Difficulty"])do
        table.insert(DataSave["Ignore Portal Difficulty"],tostring(i))
    end
    Json_Update_data() 
end)



Tab008:AddToggle('Toggleportal1', {
    Text = '- Auto Join Portal',
    Default = DataSave["Auto Join Portal"], 
    Tooltip = 'Joining a Portal automatically.', 
})

Toggles.Toggleportal1:OnChanged(function()
    DataSave["Auto Join Portal"]  = Toggles.Toggleportal1.Value
    Json_Update_data()
end)




Tab008:AddToggle('Toggleportal2', {
    Text = '- Auto Buy Portal',
    Default = DataSave["Auto Buy Portal"], 
    Tooltip = 'Purchase the Portal automatically', 
})

Toggles.Toggleportal2:OnChanged(function()
    DataSave["Auto Buy Portal"] = Toggles.Toggleportal2.Value
    Json_Update_data()

end)


Tab008:AddDivider()
Tab008:AddDropdown('DropdownTeamSwap8', {
    Values = {"1","2","3","4","5"},
    Default = DataSave["Select Team Portal"], 
    Multi = false, 
 
    Text = 'Select Team',
    Tooltip = '',
})

Options.DropdownTeamSwap8:OnChanged(function()
    DataSave["Select Team Portal"] = Options.DropdownTeamSwap8.Value
    Json_Update_data()
end)
Tab008:AddToggle('ToggleTeamSwap8', {
    Text = '- Team Swap Portal',
    Default = DataSave["Use Team Swap Portal"], 
    Tooltip = '', 
})

Toggles.ToggleTeamSwap8:OnChanged(function()
    DataSave["Use Team Swap Portal"] = Toggles.ToggleTeamSwap8.Value
    Json_Update_data()
end)

Tab007 = TabMain008:AddTab("Dungeon")

Tab007:AddDropdown('Dropdown30', {
    Values =  Service[11] ,
    Default = DataSave["Select Dungeon"], 
    Multi = false, 
 
    Text = 'Select Dungeon',
    Tooltip = '',
})


Options.Dropdown30:OnChanged(function()
    DataSave["Select Dungeon"] = Options.Dropdown30.Value
    Json_Update_data()
end)    






Tab007:AddToggle('Toggle11hx', {
    Text = '- Auto Join Dungeon',
    Default =   DataSave["Auto Join Dungeon"], 
    Tooltip = 'Joining a Inf Castle automatically.', 
    })

    Toggles.Toggle11hx:OnChanged(function()
        DataSave["Auto Join Dungeon"] = Toggles.Toggle11hx.Value
        Json_Update_data()
    end)

    Button001 = Tab007:AddButton('Leave Dungeon Lobby', function()
        if DungeonLobby then 
            Service[3].endpoints.client_to_server.request_leave_lobby
            :InvokeServer(DungeonLobby.Name)
        end
    end)

    Tab007:AddDivider()
    Tab007:AddDropdown('DropdownTeamSwap7', {
        Values = {"1","2","3","4","5"},
        Default = DataSave["Select Team Dungeon"], 
        Multi = false, 
     
        Text = 'Select Team',
        Tooltip = '',
    })
    
    Options.DropdownTeamSwap7:OnChanged(function()
        DataSave["Select Team Dungeon"] = Options.DropdownTeamSwap7.Value
        Json_Update_data()
    end)
    Tab007:AddToggle('ToggleTeamSwap7', {
        Text = '- Team Swap Dungeon',
        Default = DataSave["Use Team Swap Dungeon"], 
        Tooltip = '', 
    })
    
    Toggles.ToggleTeamSwap7:OnChanged(function()
        DataSave["Use Team Swap Dungeon"] = Toggles.ToggleTeamSwap7.Value
        Json_Update_data()
    end)






TabMain009 = Tabs.General_2:AddLeftTabbox('> Miscellaneous ')
Tab009 = TabMain009:AddTab("[ Miscellaneous ]")


    Tab009:AddToggle('Toggle15', {
    Text = 'Auto Claim Quest',
    Default = DataSave["Auto Claim Quest"], 
    Tooltip = 'This function if you are in the lobby will automatically claim all quests', 
    })

    Toggles.Toggle15:OnChanged(function()
        DataSave["Auto Claim Quest"] = Toggles.Toggle15.Value
        Json_Update_data()
    end)

    Tab009:AddToggle('Toggle16', {
    Text = 'Auto Take Event Quest',
    Default = DataSave["Auto Take Event Quest"], 
    Tooltip = 'This function if you are in the lobby will automatically take sebos quest', 
    })

    Toggles.Toggle16:OnChanged(function()
        DataSave["Auto Take Event Quest"] = Toggles.Toggle16.Value
        Json_Update_data()
    end)
    Tab009:AddToggle('Toggle17', {
    Text = 'Auto Claim Battle Pass',
    Default = DataSave["Auto Claim Battle Pass"], 
    Tooltip = 'This function if you are in the lobby will automatically claim battle pass', 
    })

    Toggles.Toggle17:OnChanged(function()
        DataSave["Auto Claim Battle Pass"] = Toggles.Toggle17.Value
        Json_Update_data()
    end)
   --[[ Tab009:AddToggle('Toggle18', {
    Text = 'Auto Claim 1B Visits',
    Default = DataSave["Auto Claim 1B Visits celebration"], 
    Tooltip = 'nil', 
    })

    Toggles.Toggle18:OnChanged(function()
        DataSave["Auto Claim 1B Visits celebration"] = Toggles.Toggle18.Value
        Json_Update_data()
    end)]]

    local Button003 = Tab009:AddButton('Redeem All Code', function()
        local Code_Maps = {
            "HOLYGRAIL",
            "REASON2FIGHT",
            "MORIOH",
            "BILLION",
            "fictionthefirst",
            "kingluffy",
            "noclypso",
            "toadboigaming",
            "subtoblamspot",
            "subtokelvingts",
            "subtomaokuma",
        }
        for i,v in pairs(Code_Maps) do
             Service[3].endpoints.client_to_server.redeem_code:InvokeServer(v)
        end
    end)


    TabMain010 = Tabs.General_2:AddRightTabbox('> Merchant ')
    Tab010 = TabMain010:AddTab("[ Merchant Shop ]")

    Tab010:AddDropdown('MultiDropdown13', {


        Values = GetMarchantItem(),
        Default = {}, 
        Multi = true, 
    
        Text = 'Select Item',
        Tooltip = "",
        })
    
    
        Options.MultiDropdown13:SetValue(DataSave["Save Item Select Merchant"])
    
        Options.MultiDropdown13:OnChanged(function()
            DataSave["Save Item Select Merchant"] = Options.MultiDropdown13.Value
            Json_Update_data()
                table.clear(DataSave["Item Select Merchant"])
                for i,v in pairs(DataSave["Save Item Select Merchant"])do
                    table.insert(DataSave["Item Select Merchant"],tostring(i))
                end
              Json_Update_data() 
        end)

    Tab010:AddToggle('Toggle19', {
        Text = 'Auto Buy Merchant',
        Default = DataSave["Auto Buy Merchant"], 
        Tooltip = 'nil', 
        })

    Toggles.Toggle19:OnChanged(function()
        DataSave["Auto Buy Merchant"] = Toggles.Toggle19.Value
        Json_Update_data()
    end)
    
    TabMain011 = Tabs.General_2:AddRightTabbox('> Gold Shop ')
    Tab011 = TabMain011:AddTab("[ Gold Shop ]")
    
    Tab011:AddDropdown('MultiDropdown14', {
    
    
        Values = GetGoldShop(),
        Default = {}, 
        Multi = true, 
    
        Text = 'Select Item',
        Tooltip = "",
        })
    
    
        Options.MultiDropdown14:SetValue(DataSave["Save Item Select Gold Shop"])
    
        Options.MultiDropdown14:OnChanged(function()
            DataSave["Save Item Select Gold Shop"] = Options.MultiDropdown14.Value
            Json_Update_data()
            table.clear(DataSave["Item Select Gold Shop"])
            for i,v in pairs(DataSave["Save Item Select Gold Shop"])do
                table.insert(DataSave["Item Select Gold Shop"],tostring(i))
            end
          Json_Update_data() 
        end)

        Tab011:AddDropdown('Dropdown30M', {
            Values =  {"x1","x10"} ,
            Default = DataSave["Choose the purchase amount"], 
            Multi = false, 
         
            Text = 'Choose the purchase amount',
            Tooltip = '',
        })
        
        
        Options.Dropdown30M:OnChanged(function()
            DataSave["Choose the purchase amount"] = Options.Dropdown30M.Value
            Json_Update_data()
        end)    
        
    Tab011:AddToggle('Toggle22', {
        Text = 'Auto Buy Gold Shop',
        Default = DataSave["Auto Buy Gold Shop"], 
        Tooltip = 'nil', 
        })

    Toggles.Toggle22:OnChanged(function()
        DataSave["Auto Buy Gold Shop"] = Toggles.Toggle22.Value
        Json_Update_data()
    end)    

    TabMain012 = Tabs.General_2:AddLeftTabbox('> Summon Sniper ')
    --table.sort(AllUnit)
    local unitall = {}
    for i,v in pairs(AllUnit)do 
        if not table.find(unitall,v["Name"]) then 
            table.insert(unitall,v["Name"])
        end
    end
    table.sort(unitall)
    Tab012 = TabMain012:AddTab("[ Summon Sniper ]")

        Tab012:AddDropdown('MultiDropdown15', {
    
    
        Values = unitall,
        Default = {}, 
        Multi = true, 
    
        Text = 'Select Unit',
        Tooltip = "",
        })
    
    
        Options.MultiDropdown15:SetValue(DataSave["Save UnitSave"])
    
        Options.MultiDropdown15:OnChanged(function()
            DataSave["Save UnitSave"] = Options.MultiDropdown15.Value
            Json_Update_data()
            table.clear(DataSave["UnitSave"])
            for i,v in pairs(DataSave["Save UnitSave"])do 
                for x,y in pairs(AllUnit)do
                    if y["Name"] == tostring(i) then 
                        if not table.find(DataSave["UnitSave"],tostring(x)) then 
                            table.insert(DataSave["UnitSave"],tostring(x))
                        end
                    end
                end
            end
            Json_Update_data()
        end)
        

        Tab012:AddDropdown('MultiDropdown16', {

        Values = {"Standard","Special"},
        Default = {}, 
        Multi = true, 
    
        Text = 'Select Banner',
        Tooltip = "",
        })
    
    
        Options.MultiDropdown16:SetValue(DataSave["Save Select Banner"])
    
        Options.MultiDropdown16:OnChanged(function()
            DataSave["Save Select Banner"] = Options.MultiDropdown16.Value
            Json_Update_data()
            table.clear(DataSave["Select Banner"])
            for i,v in pairs(DataSave["Save Select Banner"]) do 
                if not table.find(DataSave["Select Banner"],tostring(i)) then 
                    table.insert(DataSave["Select Banner"],tostring(i))
                end
            end
            Json_Update_data()
        end)    

        
        Tab012:AddDropdown('Dropdown30M', {
            Values =  {"x1","x10"},
            Default = DataSave["Choose the summon amount"], 
            Multi = false, 
         
            Text = 'Choose the purchase amount',
            Tooltip = '',
        })
        
        
        Options.Dropdown30M:OnChanged(function()
            DataSave["Choose the summon amount"] = Options.Dropdown30M.Value
            Json_Update_data()
        end)    
        




        Tab012:AddToggle('Toggle23', {
        Text = 'Summon Sniper',
        Default = DataSave["RollSniper"], 
        Tooltip = 'nil', 
        })

    Toggles.Toggle23:OnChanged(function()
        DataSave["RollSniper"] = Toggles.Toggle23.Value
        Json_Update_data()
    end) 
    
    Tab012:AddToggle('Toggle24', {
        Text = 'Roll Pity Gem',
        Default = DataSave["RollPityGem"], 
        Tooltip = 'nil', 
        })

    Toggles.Toggle24:OnChanged(function()
        DataSave["RollPityGem"] = Toggles.Toggle24.Value
        Json_Update_data()
    end) 

    Tab012:AddToggle('Toggle25', {
        Text = 'Use Summon Ticket',
        Default = DataSave["usesummon"], 
        Tooltip = 'nil', 
        })

    Toggles.Toggle25:OnChanged(function()
        DataSave["usesummon"]= Toggles.Toggle25.Value
    Json_Update_data()
    end) 

    Tab012:AddToggle('Toggle26', {
        Text = 'Use Luck Potion',
        Default = DataSave["useluck"], 
        Tooltip = 'Use the luck-boosting potion to open your summon!', 
    })

    Toggles.Toggle26:OnChanged(function()
        DataSave["useluck"] = Toggles.Toggle26.Value
        Json_Update_data()
    end) 

    Tab012:AddSlider('MySlider2', {
        Text = 'Set Limit X Count' ,
    
        Default =  DataSave["Limit Units Rate"],
        Min = 1,
        Max = 15,
        Rounding = 0,
    
        Compact = false, 
    })
    
    
    
    Options.MySlider2:OnChanged(function()
        DataSave["Limit Units Rate"] = Options.MySlider2.Value
        Json_Update_data()
    end)

    Tab012:AddToggle('Toggle26', {
        Text = 'Limit Units Rate Up Check',
        Default = DataSave["Limit Units Rate Up Check"], 
        Tooltip = 'Set how many time got other Rate up units until stop auto roll (Middle unit not count) .', 
    })

    Toggles.Toggle26:OnChanged(function()
        DataSave["Limit Units Rate Up Check"] = Toggles.Toggle26.Value
        Json_Update_data()
    end) 

    TabMain013 = Tabs.General_2:AddLeftTabbox('> Craft Relics ')
    Tab013 = TabMain013:AddTab("Relics")
        
    
     
    Tab013:AddDropdown('MultiDropdown16Relics', {

        Values = GetRelics(),
        Default = {}, 
        Multi = true, 
    
        Text = 'Select Relics',
        Tooltip = "",
        })
    
    
        Options.MultiDropdown16Relics:SetValue(DataSave["Save Relics Select"])
    
        Options.MultiDropdown16Relics:OnChanged(function()
            DataSave["Save Relics Select"] = Options.MultiDropdown16Relics.Value
            Json_Update_data()
            table.clear(DataSave["Relics Select"])
            for i,v in pairs(DataSave["Save Relics Select"]) do 
                if not table.find(DataSave["Relics Select"],tostring(i)) then 
                    table.insert(DataSave["Relics Select"],tostring(i))
                end
            end
            Json_Update_data()
        end)    
        
    Tab013:AddToggle('Toggle26Relics', {
        Text = 'Auto Craft Relics',
        Default = DataSave["Auto Craft Relics"], 
        Tooltip = 'Auto craft selects relics.', 
    })

    Toggles.Toggle26Relics:OnChanged(function()
        DataSave["Auto Craft Relics"] = Toggles.Toggle26Relics.Value
        Json_Update_data()
    end) 

    
    Tab013:AddToggle('Toggle26Relics2', {
        Text = 'Auto Craft Steel Ingots',
        Default = DataSave["Auto Craft Steel Ingots"], 
        Tooltip = 'Auto craft steel ingots.', 
    })

    Toggles.Toggle26Relics2:OnChanged(function()
        DataSave["Auto Craft Steel Ingots"] = Toggles.Toggle26Relics2.Value
        Json_Update_data()
    end) 

    
    --TabMain014 = Tabs.General_2:AddLeftTabbox('> Capsule')
    Tab014 = TabMain013:AddTab("Capsule")

    Tab014:AddDropdown('MultiDropdown16Capsule', {

        Values = GetCapsule(),
        Default = {}, 
        Multi = true, 
    
        Text = 'Select Capsule',
        Tooltip = "",
        })
    
    
        Options.MultiDropdown16Capsule:SetValue(DataSave["Save Capsule Select"])
    
        Options.MultiDropdown16Capsule:OnChanged(function()
            DataSave["Save Capsule Select"] = Options.MultiDropdown16Capsule.Value
            Json_Update_data()
            table.clear(DataSave["Selects Capsule"])
            for i,v in pairs(DataSave["Save Capsule Select"]) do 
                if not table.find(DataSave["Selects Capsule"],tostring(i)) then 
                    table.insert(DataSave["Selects Capsule"],tostring(i))
                end
            end
            Json_Update_data()
        end)    


        Tab014:AddToggle('Toggle26Capsule2', {
            Text = 'Auto Open Capsule',
            Default = DataSave["Auto Open Capsule"], 
            Tooltip = 'Auto open selects capsule.', 
        })
    
        Toggles.Toggle26Capsule2:OnChanged(function()
            DataSave["Auto Open Capsule"] = Toggles.Toggle26Capsule2.Value
            Json_Update_data()
        end) 
    

        TabMain015 = Tabs.General_2:AddRightTabbox('> Reroll')
        Tab015 = TabMain015:AddTab("[ Reroll Traits ]")

        Tab015:AddDropdown('Dropdown30Mx', {
            Values =  {"Reroll","Reroll ( Robux )"},
            Default = DataSave["Select Trait Reroll Method"], 
            Multi = false, 
         
            Text = 'Select Trait Reroll Method',
            Tooltip = '',
        })
        
        
        Options.Dropdown30Mx:OnChanged(function()
            DataSave["Select Trait Reroll Method"] = Options.Dropdown30Mx.Value
            Json_Update_data()
        end)    

        Tab015:AddDropdown('MultiDropdown16Reroll', {

            Values = GetTrait(),
            Default = nil, 
            Multi = true, 
        
            Text = 'Selects Trait',
            Tooltip = "",
            })
        
        
            Options.MultiDropdown16Reroll:SetValue(DataSave["Save Reroll Select"])
        
            Options.MultiDropdown16Reroll:OnChanged(function()
                DataSave["Save Reroll Select"] = Options.MultiDropdown16Reroll.Value
                Json_Update_data()
                table.clear(DataSave["Selects Trait"])
                for i,v in pairs(DataSave["Save Reroll Select"]) do 
                    if not table.find(DataSave["Selects Trait"],tostring(i)) then 
                        table.insert(DataSave["Selects Trait"],tostring(i))
                    end
                end
                Json_Update_data()
            end)    
            Button002 =  Tab015:AddButton('Teleport To Reroll', function()
                Service[8].Character.HumanoidRootPart.CFrame = CFrame.new(416.899384, 195.5811, -548.957275, 0.159727365, 6.14653146e-08, -0.98716116, 9.35944797e-08, 1, 7.74087567e-08, 0.98716116, -1.04757135e-07, 0.159727365)
            end)

        Tab015:AddToggle('Toggle26Reroll2', {
            Text = 'Auto Reroll Trait',
            Default = DataSave["Auto Reroll Trait"], 
            Tooltip = 'auto roll trait.', 
        })
    
        Toggles.Toggle26Reroll2:OnChanged(function()
            DataSave["Auto Reroll Trait"] = Toggles.Toggle26Reroll2.Value
            Json_Update_data()
        end) 
    
    
        --TabMain016 = Tabs.General_2:AddLeftTabbox('>  Skin')
        Tab016 = TabMain013:AddTab("Skins")


        Tab016:AddDropdown('MultiDropdown16Skin', {

            Values = {"Rare","Epic"},
            Default = nil, 
            Multi = true, 
        
            Text = 'Selects Trait',
            Tooltip = "",
            })
        
        
            Options.MultiDropdown16Skin:SetValue(DataSave["Save Skin Select"])
        
            Options.MultiDropdown16Skin:OnChanged(function()
                DataSave["Save Skin Select"] = Options.MultiDropdown16Skin.Value
                Json_Update_data()
                table.clear(DataSave["Select Skin Rarity"])
                for i,v in pairs(DataSave["Save Skin Select"]) do 
                    if not table.find(DataSave["Select Skin Rarity"],tostring(i)) then 
                        table.insert(DataSave["Select Skin Rarity"],tostring(i))
                    end
                end
                Json_Update_data()
            end)    
        
        Tab016:AddToggle('Toggle26Skin2', {
            Text = 'Auto Sell Skin',
            Default = DataSave["Auto Sell Skin"], 
            Tooltip = 'sell all selects skin rarity.', 
        })
    
        Toggles.Toggle26Skin2:OnChanged(function()
            DataSave["Auto Sell Skin"] = Toggles.Toggle26Skin2.Value
            Json_Update_data()
        end) 

        TabMain017 = Tabs.General_2:AddRightTabbox('>  Sell Portal')
        Tab017 = TabMain017:AddTab("[ Auto Sell Portal ]")

        Tab017:AddDropdown('MultiDropdownportal1v', {


            Values =  Service[23],
            Default = nil, 
            Multi = true, 
        
            Text = 'Select Portal',
            Tooltip = "",
        })



        Options.MultiDropdownportal1v:SetValue(DataSave["Save Portal Sell"])
        
        Options.MultiDropdownportal1v:OnChanged(function()
            DataSave["Save Portal Sell"]  = Options.MultiDropdownportal1v.Value 
            Json_Update_data()
            table.clear(DataSave["Portal Sell"])
            for i,v in pairs(DataSave["Save Portal Sell"])do
                if not table.find(DataSave["Portal Sell"],tostring(i)) then 
                    table.insert(DataSave["Portal Sell"],tostring(i))
                end
            end
            Json_Update_data() 
        end)
 
        Tab017:AddDropdown('MultiDropdownportal1av', {
        
        
            Values = Service[15],
            Default = nil, 
            Multi = true, 
        
            Text = 'Select Tier',
            Tooltip = "",
        })
        
        
        Options.MultiDropdownportal1av:SetValue(DataSave["Save Portal Sell Tier"])
        
        Options.MultiDropdownportal1av:OnChanged(function()
            DataSave["Save Portal Sell Tier"] = Options.MultiDropdownportal1av.Value
            Json_Update_data()
            table.clear(DataSave["Portal Tier Sell"])
            for i,v in pairs(DataSave["Save Portal Sell Tier"])do
                if not table.find(DataSave["Portal Tier Sell"],tostring(i)) then 
                    table.insert(DataSave["Portal Tier Sell"],tostring(i))
                end
            end
            Json_Update_data() 
        end)


        Tab017:AddDropdown('MultiDropdownportal2v', {
        
        
            Values = GetWorld(),
            Default = nil, 
            Multi = true, 
        
            Text = 'Ignore World',
            Tooltip = "",
        })
        
        
        Options.MultiDropdownportal2v:SetValue(DataSave["Save Portal Ignore World Sell"])
        
        Options.MultiDropdownportal2v:OnChanged(function()
            DataSave["Save Portal Ignore World Sell"] = Options.MultiDropdownportal2v.Value
        table.clear(DataSave["Portal Ignore World Sell"])
        for i,v in pairs(DataSave["Save Portal Ignore World Sell"])do
            if not table.find(DataSave["Portal Ignore World Sell"],tostring(i)) then 
                table.insert(DataSave["Portal Ignore World Sell"],tostring(i))
            end
        end
        Json_Update_data() 
        end)
        

        
        Tab017:AddDropdown('MultiDropdownportal3v', {
        
        
            Values =  {"shield_enemies","regen_enemies","tank_enemies","short_range","fast_enemies","double_cost","triple_cost","hyper_regen_enemies","hyper_shield_enemies","godspeed_enemies","flying_enemies","mini_range"},
            Default = nil, 
            Multi = true, 
        
            Text = 'Ignore Difficulty',
            Tooltip = "",
        })
        
        
        Options.MultiDropdownportal3v:SetValue(DataSave["Save Portal Ignore Difficulty Sell"])
        
        Options.MultiDropdownportal3v:OnChanged(function()
            DataSave["Save Portal Ignore Difficulty Sell"] = Options.MultiDropdownportal3v.Value
            table.clear(DataSave["Portal Ignore Difficulty Sell"])
            for i,v in pairs(DataSave["Save Portal Ignore Difficulty Sell"])do
                if not table.find(DataSave["Portal Ignore Difficulty Sell"],tostring(i)) then 
                    table.insert(DataSave["Portal Ignore Difficulty Sell"],tostring(i))
                end
            end
            Json_Update_data() 
        end )
        
        
        
            Tab017:AddToggle('Toggle27v', {
                Text = 'Auto Sell Portal ',
                Default = DataSave["Auto Sell Portal"], 
                Tooltip = 'nil', 
                })
        
            Toggles.Toggle27v:OnChanged(function()
                DataSave["Auto Sell Portal"] = Toggles.Toggle27v.Value
                Json_Update_data()
            end) 
        
    
        
            TabMain018 = Tabs.Marco:AddLeftTabbox('>  Marco')
            Tab018 = TabMain018:AddTab("[ Marco Recorder ]")
            
            Options.label_1_marco = Tab018:AddLabel("Marco Status : Disabled.", true)
            Options.label_2_marco = Tab018:AddLabel("Time in game : 1", true)
            Options.label_3_marco = Tab018:AddLabel("Index : 0", true)
            
            Tab018:AddDivider()


            Tab018:AddDropdown('Dropdown10', {
                Values = List_files(),
                Default = DataSave["Marco Select"], 
                Multi = false, 
             
                Text = 'Select Marco',
                Tooltip = '',
                })
            
                Options.Dropdown10:OnChanged(function()
                    DataSave["Marco Select"] = Options.Dropdown10.Value
                    Json_Update_data()  
                    if DataSave["Marco Select"] then 
                        ReadMarcoDataIndex()
                    end
                end)
                
                
                
                Tab018:AddInput('Textbox2', {
                Default = nil,
                Numeric = false, 
                Finished = false, 
             
                Text = 'Create Macro',
                Tooltip = '', 
             
                Placeholder = 'Marco Name here.', 
             
                })
             
                Options.Textbox2:OnChanged(function()
                    marco_name = tostring(Options.Textbox2.Value)
                end)    
                
            
            
                Button004 = Tab018:AddButton('Create Marco File', function()


                    if not isfile("Xenon Hub Anime Adventures/Marco/"..marco_name..".json") then
                            local my_data_X = {
                                ["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"] = {},
                                ["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"] = 0,
                                ["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"] = {},
                                ["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"] = {}
                            }
                            local my_json_X = Service[4]:JSONEncode(my_data_X)
                            writefile("Xenon Hub Anime Adventures/Marco/"..marco_name..".json",my_json_X)
                            if isfile("Xenon Hub Anime Adventures/Marco/"..marco_name..".json") then
                            Options.Dropdown10.Values = List_files()
                            Options.Dropdown10:SetValues()
                            Options.Dropdown10:SetValue(marco_name)
                            Library:Notify('Create Marco : '..tostring(marco_name).." success", 5)
                            if Xenon_load then 
                                Options.Dropdown13.Values = List_files()
                                Options.Dropdown13:SetValues()
                                Options.Dropdown15.Values = List_files()
                                Options.Dropdown15:SetValues()
                            end
                        end  
                    end
                end)
                Button005 = Tab018:AddButton('Refresh Marco File', function()
                    Options.Dropdown10.Values = List_files()
                    Options.Dropdown10:SetValues()
                    Library:Notify("Refresh marco file success.", 5)
                    if Xenon_load then 
                        Options.Dropdown13.Values = List_files()
                        Options.Dropdown13:SetValues()
                        Options.Dropdown15.Values = List_files()
                        Options.Dropdown15:SetValues()
                    end
                end)
                EquipUnitFromMarco = function()
                    local p1 = {}
                    local p2 = {}
                    for i,v in pairs(UnitInMarcoSpy)do 
                        table.insert(p2,DeHas(tostring(v)))
                    end
                    for i,v in pairs(DataUnit)do 
                    if table.find(p2,tostring(i)) then 
                        table.insert(p1,v)
                    end
                    end
                    for i = 1,#p1 do 
                        Service[3].endpoints.client_to_server.equip_unit:InvokeServer(p1[i]) 
                        task.wait(.7)
                    end
                end
                Button006 = Tab018:AddButton('Equip Unit From Marco', function()
                    Service[3].endpoints.client_to_server.unequip_all:InvokeServer()
                    EquipUnitFromMarco()
                end)
                Tab018:AddDivider()
                Tab018:AddDropdown('MultiDropdownMarcol3v', {
                    Values =  {"Place","Upgrade","Sell","Target","Use Abilltie","Vote Skip Wave"},
                    Default = nil, 
                    Multi = true, 
                
                    Text = 'Select Record Method',
                    Tooltip = "",
                })
                Options.MultiDropdownMarcol3v:SetValue(DataSave["Save Record Method"])
                Options.MultiDropdownMarcol3v:OnChanged(function()
                    DataSave["Save Record Method"] = Options.MultiDropdownMarcol3v.Value
                    table.clear(DataSave["Record Method"])
                    for i,v in pairs(DataSave["Save Record Method"])do
                        if not table.find(DataSave["Record Method"],tostring(i)) then 
                            table.insert(DataSave["Record Method"],tostring(i))
                        end
                    end
                    Json_Update_data() 
                end )

                Tab018:AddToggle('Toggle28v', {
                    Text = 'Ignore Auto Skip Wave ',
                    Default = DataSave["Ignore Auto Skip Wave"], 
                    Tooltip = "don't save vote skip wave , if use auto skip wave", 
                    })
            
                Toggles.Toggle28v:OnChanged(function()
                    DataSave["Ignore Auto Skip Wave"] = Toggles.Toggle28v.Value
                    Json_Update_data()
                end) 
                Tab018:AddToggle('Toggle29v', {
                    Text = 'Ignore Auto Use Abilltie',
                    Default = DataSave["Ignore Auto Use Abilltie"], 
                    Tooltip = "don't save use abilltie , if use auto abilltie", 
                })
                Toggles.Toggle29v:OnChanged(function()
                    DataSave["Ignore Auto Use Abilltie"] = Toggles.Toggle29v.Value
                    Json_Update_data()
                end) 
                Tab018:AddDivider()
                Options.label_4_marco = Tab018:AddLabel("Record Time : 0", true)
                Tab018:AddToggle('Toggle30v', {
                    Text = 'Marco Record',
                    Default = false, 
                    Tooltip = "Record Tower location, upgrade, sales, Priority, Abilltie", 
                    })
            
                Toggles.Toggle30v:OnChanged(function()
                    RecordMarco = Toggles.Toggle30v.Value
                    if RecordMarco == true then 
                        ReadingRecordMarco()
                    end
                end) 


                --Tab018:AddDivider()
                TabMain018_1 = Tabs.Marco:AddRightTabbox('>  Marco')
                Tab018_1 = TabMain018_1:AddTab("[ Marco Play ]")
                Options.Label015 = Tab018_1:AddLabel(">> Settigs", true)
                
                Tab018_1:AddDropdown('Dropdown10z', {
                Values = {"Hybrid Index","Time"},
                Default = DataSave["Play Method"], 
                Multi = false, 
                 
                Text = 'Select Marco Play Method',
                Tooltip = '',
                })
                
                Options.Dropdown10z:OnChanged(function()
                    DataSave["Play Method"] = Options.Dropdown10z.Value
                    Json_Update_data()  
                end)
                Tab018_1:AddToggle('Toggle31v', {
                    Text = 'Auto Tower Placement',
                    Default = DataSave["Auto Tower Placement"], 
                    Tooltip = "automatically find tower placement if you use a marco that doesn t match", 
                    })
            
                Toggles.Toggle31v:OnChanged(function()
                    DataSave["Auto Tower Placement"] = Toggles.Toggle31v.Value
                    Json_Update_data()
                end)         
                Tab018_1:AddToggle('Toggle32v', {
                    Text = 'Auto Upgrade When Marco End',
                    Default = DataSave["Auto Upgrade"], 
                    Tooltip = "If Marco end, any units that are not yet max level will be upgraded automatically.", 
                    })
            
                Toggles.Toggle32v:OnChanged(function()
                    DataSave["Auto Upgrade"] = Toggles.Toggle32v.Value
                    Json_Update_data()
                end)    
    
                Tab018_1:AddDivider()
                Options.Label020 = Tab018_1:AddLabel("Action : 0/0", true)
                Tab018_1:AddToggle('Toggle33v', {
                    Text = 'Marco Play',
                    Default = DataSave["Marco Play"], 
                    Tooltip = "Play selected configuration.", 
                    })
            
                Toggles.Toggle33v:OnChanged(function()
                    DataSave["Marco Play"] = Toggles.Toggle33v.Value
                    Json_Update_data()
                    if DataSave["Marco Play"] 
                    and game.PlaceId ~= 8304191830 then 
                        LodingMarcoFile()
                        ReadMarcoData()
                    end
                end)  
                Tab018_1:AddDivider()




                    TabMain020 = Tabs.Marco:AddRightTabbox('> Config')
                    Tab020 = TabMain020:AddTab("[ Auto Swap Marco Configs ]")
                    Options.ChallengeASMC = Tab020:AddLabel("> Challenge / Story", true)
                    function GetDataASMCChallenge()
                        for x,y in pairs(List_files())do
                            for i,v in pairs(DataSave["Select Challenge Marco"])do
                                if string.find(v,getgenv().World_Challenge_Marco_Select) then
                                    local p = v:split(": ")
                                    local p1 = p[2]
                                    if p[2] == tostring(y) then
                                        Options.Dropdown13:SetValue(p[2])
                                    end
                                end
                            end
                        end
                    end

                    Tab020:AddDropdown('Dropdown12', {
                        Values = GetWorld(),
                        Default = nil, 
                        Multi = false, 
                     
                        Text = 'Select Challenge World',
                        Tooltip = '',
                        })
                    
                        Options.Dropdown12:OnChanged(function()
                            getgenv().World_Challenge_Marco_Select = Options.Dropdown12.Value
                            if Xenon_load then 
                                  lock_drop = true
                                  Options.Dropdown13:SetValue(nil)    
                                  lock_drop = nil
                                  GetDataASMCChallenge()
                            end
                            Json_Update_data()
                        end)
      
                        Tab020:AddDropdown('Dropdown13', {
                            Values = List_files(),
                            Default = nil, 
                            Multi = false, 
                         
                            Text = 'Select Marco',
                            Tooltip = '',
                            })
                        
                            Options.Dropdown13:OnChanged(function()
                            pcall(function()
                            if lock_drop == nil then
                            getgenv().Challenge_Marco_file_select = Options.Dropdown13.Value
                            if getgenv().World_Challenge_Marco_Select ~= nil then
                                for i,v in pairs(DataSave["Select Challenge Marco"])do
                                    if string.find(tostring(v),getgenv().World_Challenge_Marco_Select) then
                                                table.remove(DataSave["Select Challenge Marco"],i)
                                            end
                                        end
                                        if getgenv().World_Challenge_Marco_Select ~= nil and
                                                not table.find(DataSave["Select Challenge Marco"],getgenv().World_Challenge_Marco_Select.." : "..getgenv().Challenge_Marco_file_select) then    
                                                table.insert(DataSave["Select Challenge Marco"],
                                                getgenv().World_Challenge_Marco_Select.." : "..getgenv().Challenge_Marco_file_select)
                                                Json_Update_data() 
                                            end
                                        end
                                    end
                                end) 
                            end)
                            Button013 = Tab020:AddButton('UnSelect Marco', function()
                                if getgenv().World_Challenge_Marco_Select then 
                                    for i,v in pairs(DataSave["Select Challenge Marco"])do
                                        if string.find(tostring(v),getgenv().World_Challenge_Marco_Select) then
                                            table.remove(DataSave["Select Challenge Marco"],i)
                                        end
                                    end
                                    Options.Dropdown13:SetValue(nil)
                                    Json_Update_data() 
                                end
                            end)
                Tab020:AddToggle('Toggle34v', {
                Text = 'Auto Swap Challenge / Story',
                Default = DataSave["Auto Swap Marco Challenge"], 
                Tooltip = 'nil', 
                })
        
                Toggles.Toggle34v:OnChanged(function()
                    DataSave["Auto Swap Marco Challenge"] = Toggles.Toggle34v.Value
                    Json_Update_data()
                end)

                Tab020:AddDivider()
                Options.ASMCS = Tab020:AddLabel("> Inf / Inf Castle", true)


                function GetDataASMCInf()
                    for x,y in pairs(List_files())do
                        for i,v in pairs(DataSave["Select Inf Marco"])do
                            if string.find(v,getgenv().World_Inf_Marco_Select) then
                                local p = v:split(": ")
                                local p1 = p[2]
                                if p[2] == tostring(y) then
                                    Options.Dropdown15:SetValue(p[2])
                                end
                            end
                        end
                    end
                end

                Tab020:AddDropdown('Dropdown14', {
                    Values = GetWorld(),
                    Default = nil, 
                    Multi = false, 
                 
                    Text = 'Select Inf World',
                    Tooltip = '',
                    })
                
                    Options.Dropdown14:OnChanged(function()
                        getgenv().World_Inf_Marco_Select = Options.Dropdown14.Value
                        if Xenon_load then 
                            lock_drop = true
                            Options.Dropdown15:SetValue(nil)    
                            lock_drop = nil
                            GetDataASMCInf()
                        end
                        Json_Update_data()
                    end)
                
                    Tab020:AddDropdown('Dropdown15', {
                    Values = List_files(),
                    Default = nil, 
                    Multi = false, 
                 
                    Text = 'Select Marco',
                    Tooltip = '',
                    })
                
                    Options.Dropdown15:OnChanged(function()
                    pcall(function()
                    if lock_drop == nil then
                    getgenv().Inf_Marco_file_select = Options.Dropdown15.Value
                    if getgenv().World_Inf_Marco_Select ~= nil then
                        for i,v in pairs(DataSave["Select Inf Marco"])do
                            if string.find(tostring(v),getgenv().World_Inf_Marco_Select) then
                                table.remove(DataSave["Select Inf Marco"],i)
                                        end
                                    end
                                    if getgenv().World_Inf_Marco_Select ~= nil and
                                    not table.find(DataSave["Select Inf Marco"],getgenv().World_Inf_Marco_Select.." : "..getgenv().Inf_Marco_file_select) then    
                                    table.insert(DataSave["Select Inf Marco"],
                                    getgenv().World_Inf_Marco_Select.." : "..getgenv().Inf_Marco_file_select)
                                    Json_Update_data() 
                                    end
                                end
                            end
                        end)    
                    end)    
                    Button014 = Tab020:AddButton('UnSelect Marco', function()
                        if getgenv().World_Inf_Marco_Select then 
                            for i,v in pairs(DataSave["Select Inf Marco"])do
                                if string.find(tostring(v),getgenv().World_Inf_Marco_Select) then
                                    table.remove(DataSave["Select Inf Marco"],i)
                                end
                            end
                            Options.Dropdown15:SetValue(nil)
                            Json_Update_data() 
                        end
                    end)
                    Tab020:AddToggle('Toggle34vx', {
                        Text = 'Auto Swap Inf / Inf Castle',
                        Default = DataSave["Auto Swap Inf"], 
                        Tooltip = 'nil', 
                        })
                
                        Toggles.Toggle34vx:OnChanged(function()
                            DataSave["Auto Swap Inf"] = Toggles.Toggle34vx.Value
                            Json_Update_data()
                        end)

                -- Port Agency Portal 

                Options.ASMCSS = Tab020:AddLabel("> Halloween Event", true)


                function GetDataASMCPortAgency()
                    for x,y in pairs(List_files())do
                        for i,v in pairs(DataSave["Select Port Agency Marco"])do
                            if string.find(v,getgenv().World_Port_Marco_Select) then
                                local p = v:split(": ")
                                local p1 = p[2]
                                if p[2] == tostring(y) then
                                    Options.Dropdown15Port:SetValue(p[2])
                                end
                            end
                        end
                    end
                end

                Tab020:AddDropdown('Dropdown14Port', {
                    Values = GetNightmareHuntMap(),
                    Default = nil, 
                    Multi = false, 
                 
                    Text = 'Select World',
                    Tooltip = '',
                    })
                
                    Options.Dropdown14Port:OnChanged(function()
                        getgenv().World_Port_Marco_Select = Options.Dropdown14Port.Value
                        if Xenon_load then 
                            lock_drop = true
                            Options.Dropdown15Port:SetValue(nil)    
                            lock_drop = nil
                            GetDataASMCPortAgency()
                        end
                        Json_Update_data()
                    end)
                
                    Tab020:AddDropdown('Dropdown15Port', {
                    Values = List_files(),
                    Default = nil, 
                    Multi = false, 
                 
                    Text = 'Select Marco',
                    Tooltip = '',
                    })
                
                    Options.Dropdown15Port:OnChanged(function()
                    pcall(function()
                    if lock_drop == nil then
                    getgenv().Port_Marco_file_select = Options.Dropdown15Port.Value
                    if getgenv().World_Port_Marco_Select ~= nil then
                        for i,v in pairs(DataSave["Select Port Agency Marco"])do
                            if string.find(tostring(v),getgenv().World_Port_Marco_Select) then
                                table.remove(DataSave["Select Port Agency Marco"],i)
                                        end
                                    end
                                    if getgenv().World_Port_Marco_Select ~= nil and
                                    not table.find(DataSave["Select Port Agency Marco"],getgenv().World_Port_Marco_Select.." : "..getgenv().Port_Marco_file_select) then    
                                    table.insert(DataSave["Select Port Agency Marco"],
                                    getgenv().World_Port_Marco_Select.." : "..getgenv().Port_Marco_file_select)
                                    Json_Update_data() 
                                    end
                                end
                            end
                        end)    
                    end)    
                    Button014 = Tab020:AddButton('UnSelect Marco', function()
                        if getgenv().World_Port_Marco_Select then 
                            for i,v in pairs(DataSave["Select Port Agency Marco"])do
                                if string.find(tostring(v),getgenv().World_Port_Marco_Select) then
                                    table.remove(DataSave["Select Port Agency Marco"],i)
                                end
                            end
                            Options.Dropdown15Port:SetValue(nil)
                            Json_Update_data() 
                        end
                    end)
                    Tab020:AddToggle('Toggle34vxPort', {
                        Text = 'Auto Swap Halloween Event',
                        Default = DataSave["Auto Swap Port Agency Portal"], 
                        Tooltip = 'nil', 
                        })
                
                        Toggles.Toggle34vxPort:OnChanged(function()
                            DataSave["Auto Swap Port Agency Portal"] = Toggles.Toggle34vxPort.Value
                            Json_Update_data()
                        end)






                --[[TabMain019 = Tabs.Marco:AddRightTabbox('> Marco Edit')
                Tab019 = TabMain019:AddTab("[ Macro Editor ]")

                Options.Label023 = Tab019:AddLabel("> Marco Information.", true)
                Options.Label024 = Tab019:AddLabel("Index In Marco : 0", true)
                Options.Label025 = Tab019:AddLabel("Info : not found.", true)
                Options.Label026 = Tab019:AddLabel("Map : not found.", true)
                Options.Label027 = Tab019:AddLabel("Unit : ", true)


                UpdateMarcoEditData = function()
                    InformationEdit["Config version"] = "v.1.2"
                    InformationEdit["Map"] = "not found."
                    InformationEdit["Mode"] = "not found."
                    InformationEdit["Difficulty"] = "not found."
                    InformationEdit["Recording Time"] = tostring(datetime).." / "..tostring(timezone)
                    
                    local marcodata = {
                        ["6vR8uBlYkojIa2EEf7BXIT7lp1lrPH"] = Marco_DataEdit,
                        ["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"] = IndexEdit ,
                        ["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"] = UnitInMarcoEdit ,
                        ["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"] = InformationEdit 
                    }
                    local is_json_marco = Service[4]:JSONEncode(marcodata)
                    writefile("Xenon Hub Anime Adventures/Marco/"..NewMarcoName..".json", is_json_marco)
                end
                function GetclosestUnit(pos)
                    local closestMobs = nil
                    local shortestDistance = math.huge
                        for i1, v1 in pairs(Marco_DataEdit) do
                            if v1["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM" then 
                                --print(v1["CFrame"])
                                cframe2 = Service[4]:JSONDecode('['..v1["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"]..']')
                                unpackcframe2 = CFrame.new(unpack(cframe2))
                                cframe3 = Service[4]:JSONDecode('['..pos..']')
                                unpackcframe3 = CFrame.new(unpack(cframe3))
                                local magnitude = (unpackcframe2.Position - unpackcframe3.Position).magnitude
                                if tonumber(magnitude) < shortestDistance then
                                closestMobs = v1["rZ6j9ayysH00P2rhDBQMZapfz6dP04"]
                                shortestDistance = magnitude
                            end
                        end
                    end 
                    return closestMobs
                end
                ReverseEngineer = function(hub)
                    pcall(function()
                        
                    InformationEdit = {}
                    IndexEdit = 0 
                    UnitInMarcoEdit = {}
                    Marco_DataEdit = {}
                    if hub == "Code X Hub" then 
                        return;
                    end
                    -- create file 
                    if not isfile("Xenon Hub Anime Adventures/Marco/"..NewMarcoName..".json") then
                        local my_data_X = {}
                        local my_json_X = Service[4]:JSONEncode(my_data_X)
                        writefile("Xenon Hub Anime Adventures/Marco/"..NewMarcoName..".json",my_json_X)
                    end
                    if hub == "Trap Hub Marco" then 
                        if isfile("Xenon Hub Anime Adventures/Marco/"..NewMarcoName..".json") then
                            for i,v in pairs(EditData)do -- update Index 
                                IndexEdit = IndexEdit + 1 
                                if type(v) == "table" and v["type"] then 
                                    if  v["type"] == "spawn_unit" then
                                        if not table.find(UnitInMarcoEdit,HasString(tostring(v["unit"]))) then 
                                                table.insert(UnitInMarcoEdit,HasString(tostring(v["unit"])))
                                            end
                                        end
                                    end
                                end
                                    local SetIndex = 1;
                                    local SetUnitValue = 1;
                                    for i = 1,IndexEdit do 
                                    if EditData[tostring(i)] then 
                                        if EditData[tostring(i)]["type"] == "spawn_unit" then 
                                        table.insert(Marco_DataEdit,{
                                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                            ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = SetUnitValue,
                                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM",
                                            ["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"] = HasString(tostring(EditData[tostring(i)]["unit"])),
                                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 1,
                                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = 1,
                                            ["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"] = tostring(EditData[tostring(i)]["cframe"]),
                                        })
                                        SetIndex = SetIndex + 1
                                        SetUnitValue = SetUnitValue + 1
                                        elseif EditData[tostring(i)]["type"] == "upgrade_unit_ingame" 
                                        and EditData[tostring(i)]["pos"] then 
                                        local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["pos"]);
                                        local UpgradeTag = 0; -- getTag upgrade
                                        for x,y in pairs(Marco_DataEdit)do 
                                            if y["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "uVofgY51jLOoXb1TAzc0K2KWFV8OpB" 
                                                and y["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] == GetUnitValue then 
                                                UpgradeTag = UpgradeTag + 1
                                            end
                                        end
                                        UpgradeTag = UpgradeTag + 1
                                        table.insert(Marco_DataEdit,{
                                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                            ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                            ["0CJtTUUGzYYxiB3QWfqvZwitgHD9N6"] = UpgradeTag,
                                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 1,
                                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = 1,
                                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uVofgY51jLOoXb1TAzc0K2KWFV8OpB", 
                                        })
                                        SetIndex = SetIndex + 1
            
                                        elseif EditData[tostring(i)]["type"] == "sell_unit_ingame" 
                                        and EditData[tostring(i)]["pos"] then 
                                        local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["pos"]);
                                        table.insert(Marco_DataEdit,{
                                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                            ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 1,
                                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = 1,
                                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "17tSJpzx4vV2R3jD9Y25KJXDZYALFz", 
                                        })
                                        SetIndex = SetIndex + 1
                                        elseif EditData[tostring(i)]["type"] == "vote_wave_skip"  then 
                                        local p1 = tostring(EditData[tostring(i)]["wave/time"])
                                        local wavenumber = p1:split("|")[1]:split(": ")[2]
                                        local timenumber = p1:split("|")[2]:split(": ")[2]    
                                        table.insert(Marco_DataEdit,{
                                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "xrCsk0BLjDuzMOh5opy1Q66cDzpOs0", 
                                        })    
                                        SetIndex = SetIndex + 1
                                        elseif EditData[tostring(i)]["type"] == "cycle_priority" 
                                        and EditData[tostring(i)]["pos"] then 
                                        local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["pos"]);    
                                        table.insert(Marco_DataEdit,{
                                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                            ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 1,
                                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = 1,
                                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "y08kgBLPyqtzqxsqw9jfrjX0lD6PVq", 
                                        })
                                        SetIndex = SetIndex + 1
            
                                        elseif EditData[tostring(i)]["type"] == "use_active_attack" 
                                        and EditData[tostring(i)]["pos"] and EditData[tostring(i)]["wave/time"] then 
                                        local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["pos"]);     
                                        local p1 = tostring(EditData[tostring(i)]["wave/time"])
                                        local wavenumber = p1:split("|")[1]:split(": ")[2]
                                        local timenumber = p1:split("|")[2]:split(": ")[2]  
                                        table.insert(Marco_DataEdit,{
                                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                            ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uN4d22Iu4BBZEx2ZCmN90GShuttRaD", 
                                        })
                                        SetIndex = SetIndex + 1
                                        else
                                        --print(tostring(i).." not found;")
                                    end
                                end
                            end
                                IndexEdit = SetIndex - 1
                                UpdateMarcoEditData()
                            end
                            elseif hub == "Sea Hub Marco" then 
                                    for i,v in pairs(EditData)do -- update Index 
                                        IndexEdit = IndexEdit + 1 
                                        if type(v) == "table" and v["Type"] then 
                                            if  v["Type"] == "spawn_unit" then
                                                if not table.find(UnitInMarcoEdit,HasString(tostring(v["Unit"]))) then 
                                                        table.insert(UnitInMarcoEdit,HasString(tostring(v["Unit"])))
                                                    end
                                                end
                                            end
                                        end
                                            local SetIndex = 1;
                                            local SetUnitValue = 1;
                                            for i = 1,IndexEdit do 
                                            if EditData[tostring(i)] then 
                                                if EditData[tostring(i)]["Type"] == "spawn_unit" then          
                                                local p1 = tostring(EditData[tostring(i)]["WT"])
                                                local wavenumber = p1:split(",")[1]:split(": ")[2]
                                                local timenumber = p1:split(",")[2]:split(": ")[2]         
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = SetUnitValue,
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM",
                                                    ["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"] = HasString(tostring(EditData[tostring(i)]["Unit"])),
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(timenumber),
                                                    ["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"] = tostring(EditData[tostring(i)]["CF"]),
                                                })
                                                SetIndex = SetIndex + 1
                                                SetUnitValue = SetUnitValue + 1
                                                elseif EditData[tostring(i)]["Type"] == "upgrade_unit_ingame" 
                                                and EditData[tostring(i)]["Pos"] then 
                                                local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["Pos"]);
                                                local UpgradeTag = 0; -- getTag upgrade
                                                for x,y in pairs(Marco_DataEdit)do 
                                                    if y["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "uVofgY51jLOoXb1TAzc0K2KWFV8OpB" 
                                                        and y["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] == GetUnitValue then 
                                                        UpgradeTag = UpgradeTag + 1
                                                    end
                                                end
                                                UpgradeTag = UpgradeTag + 1
                                                local p1 = tostring(EditData[tostring(i)]["WT"])
                                                local wavenumber = p1:split(",")[1]:split(": ")[2]
                                                local timenumber = p1:split(",")[2]:split(": ")[2] 
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue    ,
                                                    ["0CJtTUUGzYYxiB3QWfqvZwitgHD9N6"] = UpgradeTag,
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uVofgY51jLOoXb1TAzc0K2KWFV8OpB", 
                                                })
                                                SetIndex = SetIndex + 1
                                                
                                                elseif EditData[tostring(i)]["Type"] == "sell_unit_ingame" 
                                                and EditData[tostring(i)]["Pos"] then 
                                                local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["Pos"]);
                                                local p1 = tostring(EditData[tostring(i)]["WT"])
                                                local wavenumber = p1:split(",")[1]:split(": ")[2]
                                                local timenumber = p1:split(",")[2]:split(": ")[2] 
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "17tSJpzx4vV2R3jD9Y25KJXDZYALFz", 
                                                })
                                                SetIndex = SetIndex + 1
                                                elseif EditData[tostring(i)]["Type"] == "vote_wave_skip"  then 
                                                local p1 = tostring(EditData[tostring(i)]["WT"])
                                                local wavenumber = p1:split(",")[1]:split(": ")[2]
                                                local timenumber = p1:split(",")[2]:split(": ")[2]    
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "xrCsk0BLjDuzMOh5opy1Q66cDzpOs0", 
                                                })    
                                                SetIndex = SetIndex + 1
                                                elseif EditData[tostring(i)]["Type"] == "cycle_priority" 
                                                and EditData[tostring(i)]["Pos"] then 
                                                --print(tostring(i).." cycle_priority")
                                                local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["Pos"]);  
                                                local p1 = tostring(EditData[tostring(i)]["WT"])
                                                local wavenumber = p1:split(",")[1]:split(": ")[2]
                                                local timenumber = p1:split(",")[2]:split(": ")[2]     
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "y08kgBLPyqtzqxsqw9jfrjX0lD6PVq", 
                                                })
                                                SetIndex = SetIndex + 1
                        
                                                elseif EditData[tostring(i)]["Type"] == "use_active_attack" 
                                                and EditData[tostring(i)]["Pos"] and EditData[tostring(i)]["wave/time"] then 
                                                local GetUnitValue = GetclosestUnit(EditData[tostring(i)]["Pos"]);     
                                                local p1 = tostring(EditData[tostring(i)]["WT"])
                                                local wavenumber = p1:split(",")[1]:split(": ")[2]
                                                local timenumber = p1:split(",")[2]:split(": ")[2]  
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = GetUnitValue,
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(wavenumber),
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(timenumber),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uN4d22Iu4BBZEx2ZCmN90GShuttRaD", 
                                                })
                                                SetIndex = SetIndex + 1
                                                else
                                                end
                                            end
                                        end
                                    IndexEdit = SetIndex - 1
                                    UpdateMarcoEditData()
                                elseif hub == "Royx Marco" then 
                                    for i,v in pairs(EditData.Macro)do -- update Index 
                                        IndexEdit = IndexEdit + 1 
                                    end
                                    --print(IndexEdit)
                                    -- update unit in marco 
                                    for i,v in pairs(EditData.Config.Unit)do 
                                        if v.NameUnit then 
                                            if not table.find(UnitInMarcoEdit,HasString(tostring(v.NameUnit))) then 
                                            table.insert(UnitInMarcoEdit,HasString(tostring(v.NameUnit)))
                                        end
                                    end
                                end
                                local SetIndex = 1;
                                local SetUnitValue = 1;
                                for i,v in pairs(EditData.Macro)do 
                                    if v['Event'] then 
                                        if v["Event"] == "Summon" then
                                            local uname = "";
                                            for x,y in pairs(EditData.Config.Unit)do 
                                                if tostring(y.Slot) == tostring(v.Data.Slot) then 
                                                    uname = tostring(y.NameUnit)
                                                end
                                            end
                                            table.insert(Marco_DataEdit,{
                                                ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = SetUnitValue,
                                                ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM",
                                                ["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"] = HasString(uname),
                                                ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 0,
                                                ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(v["Time"]),
                                                ["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"] = tostring(v.Data['CFrame']),
                                            })
                                            SetIndex = SetIndex + 1
                                            SetUnitValue = SetUnitValue + 1
                                            elseif v["Event"] == "Upgrade" then
                                                local UpgradeTag = 0; -- getTag upgrade
                                                for x,y in pairs(Marco_DataEdit)do 
                                                    if y["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "uVofgY51jLOoXb1TAzc0K2KWFV8OpB"
                                                        and y["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] == tonumber(v.Data["Index"]) then 
                                                        UpgradeTag = UpgradeTag + 1
                                                    end
                                                end
                                                UpgradeTag = UpgradeTag + 1
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(v.Data["Index"]),
                                                    ["0CJtTUUGzYYxiB3QWfqvZwitgHD9N6"] = UpgradeTag,
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 0,
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(v["Time"]),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uVofgY51jLOoXb1TAzc0K2KWFV8OpB", 
                                                })
                                                SetIndex = SetIndex + 1
                                            elseif v["Event"] == "Sell" then
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(v.Data["Index"]),
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 0,
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(v["Time"]),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "17tSJpzx4vV2R3jD9Y25KJXDZYALFz", 
                                                })
                                            SetIndex = SetIndex + 1
                                            elseif v["Event"] == "ChangePriority" then
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(v.Data["Index"]),
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 0,
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(v["Time"]),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "y08kgBLPyqtzqxsqw9jfrjX0lD6PVq", 
                                                })  
                                            SetIndex = SetIndex + 1
                                            elseif v["Event"] == "UseSpecialMove" then
                                                table.insert(Marco_DataEdit,{
                                                    ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = SetIndex,
                                                    ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = tonumber(v.Data["Index"]),
                                                    ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = 0,
                                                    ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = tonumber(v["Time"]),
                                                    ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uN4d22Iu4BBZEx2ZCmN90GShuttRaD", 
                                                })
                                            SetIndex = SetIndex + 1
                                        end
                                    end
                                end
                                IndexEdit = SetIndex - 1
                                InformationEdit["No Wave"] = true 
                                UpdateMarcoEditData() 
                        end
                    end)
                end
                
            
                CheckMarco = function() 
                local hub = ""
                pcall(function()
                    local unitiMaro = {};
                        local setunit = "";
                            local indexmarco = 0;
                                local info = "not found."
                                    local map = "not found."
                    for i,v in pairs(EditData)do
                        if type(v) == "table" and 
                        v["type"] and v["type"] == "spawn_unit" then     
                                if v["cframe"] and v['unit'] then 
                                    hub = "Trap Hub Marco"
                                    if not table.find(unitiMaro,tostring(v["unit"])) then 
                                        table.insert(unitiMaro,tostring(v["unit"]))
                                        setunit = setunit..tostring(v["unit"]).." , "
                                    end
                                end
                                elseif type(v) == "table" and  
                                v["Type"] and v["Type"] == "spawn_unit" then 
                                    if v["Unit"] and v["WT"] then
                                        hub = "Sea Hub Marco"
                                        if not table.find(unitiMaro,tostring(v["Unit"])) then 
                                            table.insert(unitiMaro,tostring(v["Unit"]))
                                            setunit = setunit..tostring(v["Unit"]).." , "
                                        end
                                    end  
                                elseif tostring(i) == "Macro" then 
                                for x,y in pairs(v)do 
                                    if y["Event"] and y["Event"] == "Summon" then 
                                        hub = "Royx Marco"
                                    end
                                end
                                elseif tostring(i) == "96VMzyFUPFvSCTVauPtk6KpSQAyG9a" then 
                                hub = "Code X Hub"       
                                indexmarco = EditData["lopu2NCM8Rfm0vLpyIyrI7I0njUrnS"]
                                info = "Config "..tostring(EditData["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"]["Config version"]).." , ".."Recording Time : "..tostring(EditData["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"]["Recording Time"])
                                map = tostring(EditData["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"].Map).." , "..tostring(EditData["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"].Mode).." , "..tostring(EditData["96VMzyFUPFvSCTVauPtk6KpSQAyG9a"].Difficulty)
                                for x,y in pairs(EditData["YXuDfJDFv7PqGvqVpghJG7JPcpNFl6"])do 
                                    setunit = setunit..DeHas(tostring(y)).." , "
                                end
                            end
                        end
                        if hub == "Sea Hub Marco" or hub == "Trap Hub Marco" then 
                            for i,v in pairs(EditData)do 
                                indexmarco = indexmarco + 1 
                            end
                            elseif hub == "Royx Marco" then 
                            for i,v in pairs(EditData.Config.Unit)do 
                                if not table.find(unitiMaro,tostring(v["NameUnit"])) then 
                                    table.insert(unitiMaro,tostring(v["NameUnit"]))
                                    setunit = setunit..tostring(v["NameUnit"]).." , "
                                end
                            end          
                            for i,v in pairs(EditData.Macro)do 
                                indexmarco = indexmarco + 1 
                            end
                        end
                        Options.Label024:SetText("Index In Marco : "..tostring(indexmarco))
                        Options.Label027:SetText("Unit : "..tostring(setunit))
                        Options.Label025:SetText("Info : "..info)
                        Options.Label026:SetText("Map : "..map)
                        GeneralUnit = unitiMaro
                    end)
                    return hub;
                end
                
                Tab019:AddDropdown('Dropdown10Edit', {
                Values = List_files(),
                Default = DataSave["Marco Edit Select"], 
                Multi = false, 
             
                Text = 'Select Marco',
                Tooltip = '',
                })
            
                Options.Dropdown10Edit:OnChanged(function()
                    DataSave["Marco Edit Select"]= Options.Dropdown10Edit.Value
                    Json_Update_data()
                    if DataSave["Marco Edit Select"] then 
                        ReadMarcoEditData()
                        SelectHub = CheckMarco()
                    end
                end)
                Button007 = Tab019:AddButton('Refresh Marco File', function()
                    Options.Dropdown10Edit.Values = List_files()
                    Options.Dropdown10Edit:SetValues()
                end)
                Button008 = Tab019:AddButton('Equip Unit From Marco', function()
                    Service[3].endpoints.client_to_server.unequip_all:InvokeServer()
                    EquipUnitFromMarco2()
                end)
                Options.Label026_2 = Tab019:AddLabel("- Lastest version (1.2)", true)        
                Button009 = Tab019:AddButton('Update Config Version', function()
                    UpdateOldConfig()
                end)
                Button010 = Tab019:AddButton('Format Marco', function()
                    if DataSave["Marco Edit Select"] then 
                        FormatMarco()
                    end
                end)
                Button011 = Tab019:AddButton('Remove Select Marco', function()
                    delfile("Xenon Hub Anime Adventures/Marco/"..DataSave["Marco Edit Select"]..".json")
                end)
                Tab019:AddInput('Textbox3', {
                    Default = nil,
                    Numeric = false, 
                    Finished = false, 
                 
                    Text = 'New Macro Name.',
                    Tooltip = '', 
                 
                    Placeholder = 'Marco Name here..', 
                 
                    })
                 
                    Options.Textbox3:OnChanged(function()
                        NewMarcoName = tostring(Options.Textbox3.Value)
                    end)    
                    Button012 = Tab019:AddButton('Reverse Engineer [Beta]', function()
                        if SelectHub then 
                            ReverseEngineer(SelectHub)
                            Library:Notify("ReverseEngineer Config Success.", 5)
                        end
                    end)  ]]

                    





                    TabMain019 = Tabs.AIPlay:AddLeftTabbox('> AI Panel')
                    Tab019 = TabMain019:AddTab("[ AI Panel ]")

                    Tab019:AddDivider()
                        Tab019:AddLabel("!! Warning", true)
                        Tab019:AddLabel("Full Auto play if used for solo play only. If there is more than 1 player and someone else places a tower. This can cause the Full Auto play position to be incorrectly calculated and if you use the auto swap marco config, if you don't select the config it will use Full Auto play automatically.", true)

                      
                    Tab019:AddDivider()
                    --Options.label_1_Status = Tab019:AddLabel("Status : Disabled.", true)

                    Tab019:AddToggle('ToggleAI1', {
                        Text = 'Full Auto Play',
                        Default = DataSave["AI Play"], 
                        Tooltip = "", 
                        })
                
                    Toggles.ToggleAI1:OnChanged(function()
                        DataSave["AI Play"] = Toggles.ToggleAI1.Value
                        Json_Update_data()
                    end)  
                        
                    TabMain019_2 = Tabs.AIPlay:AddLeftTabbox('> AI Settings')
                    Tab019_2  = TabMain019_2 :AddTab("[ Upgrade Config ]")


                    Tab019_2:AddSlider('SliderAI1X', {
                    Text = "Unit Slot 1 Upgrade Cap",
                        Default = DataSave["U1 Upgrade Cap"],
                        Min = 0,
                        Max = 15,
                        Rounding = 0,
                        Compact = false, 
                        })
                        Options.SliderAI1X:OnChanged(function()
                            DataSave["U1 Upgrade Cap"] = Options.SliderAI1X.Value
                            Json_Update_data()
                        end)

                   
                        Tab019_2:AddSlider('SliderAI2X', {
                            Text = "Unit Slot 2 Upgrade Cap",
                            Default = DataSave["U2 Upgrade Cap"],
                            Min = 0,
                            Max = 15,
                            Rounding = 0,
                        
                            Compact = false, 
                            })
                        
                            Options.SliderAI2X:OnChanged(function()
                                DataSave["U2 Upgrade Cap"] = Options.SliderAI2X.Value
                                Json_Update_data()
                            end)
                            Tab019_2:AddSlider('SliderAI3X', {
                            Text = "Unit Slot 3 Upgrade Cap",
                            Default = DataSave["U3 Upgrade Cap"],
                            Min = 0,
                            Max = 15,
                            Rounding = 0,
                            Compact = false, 
                            })
                            Options.SliderAI3X:OnChanged(function()
                                DataSave["U3 Upgrade Cap"] = Options.SliderAI3X.Value
                                Json_Update_data()
                            end)    
                            Tab019_2:AddSlider('SliderAI4X', {
                                Text = "Unit Slot 4 Upgrade Cap",
                                Default = DataSave["U4 Upgrade Cap"],
                                Min = 0,
                                Max = 15,
                                Rounding = 0,
                                Compact = false, 
                                })
                                Options.SliderAI4X:OnChanged(function()
                                    DataSave["U4 Upgrade Cap"] = Options.SliderAI4X.Value
                                    Json_Update_data()
                                end)    
                                Tab019_2:AddSlider('SliderAI5X', {
                                    Text = "Unit Slot 5 Upgrade Cap",
                                    Default = DataSave["U5 Upgrade Cap"],
                                    Min = 0,
                                    Max = 15,
                                    Rounding = 0,
                                    Compact = false, 
                                })
                            Options.SliderAI5X:OnChanged(function()
                                DataSave["U5 Upgrade Cap"] = Options.SliderAI5X.Value
                                Json_Update_data()
                            end)       
                                Tab019_2:AddSlider('SliderAI6X', {
                                    Text = "Unit Slot 6 Upgrade Cap",
                                    Default = DataSave["U6 Upgrade Cap"],
                                    Min = 0,
                                    Max = 15,
                                    Rounding = 0,
                                    Compact = false, 
                                })
                            Options.SliderAI6X:OnChanged(function()
                                DataSave["U6 Upgrade Cap"] = Options.SliderAI6X.Value
                                Json_Update_data()
                            end)    
        ------------------------------------------------

        TabMain019_3 = Tabs.AIPlay:AddRightTabbox('> AI Settings')
        Tab019_3  = TabMain019_3 :AddTab("[ Spawn Config ]")


        Tab019_3:AddSlider('SliderAIS1', {
        Text = "Unit Slot 1 Spawn Cap",
            Default = DataSave["U1 Spawn Cap"],
            Min = 0,
            Max = 6,
            Rounding = 0,
            Compact = false, 
            })
            Options.SliderAIS1:OnChanged(function()
                DataSave["U1 Spawn Cap"] = Options.SliderAIS1.Value
                Json_Update_data()
            end)
            Tab019_3:AddSlider('SliderAIS2', {
                Text = "Unit Slot 2 Spawn Cap",
                Default = DataSave["U2 Spawn Cap"],
                Min = 0,
                Max = 6,
                Rounding = 0,
            
                Compact = false, 
                })
            
                Options.SliderAIS2:OnChanged(function()
                    DataSave["U2 Spawn Cap"] = Options.SliderAIS2.Value
                    Json_Update_data()
                end)
                Tab019_3:AddSlider('SliderAIS3', {
                Text = "Unit Slot 3 Spawn Cap",
                Default = DataSave["U3 Spawn Cap"],
                Min = 0,
                Max = 6,
                Rounding = 0,
                Compact = false, 
                })
                Options.SliderAIS3:OnChanged(function()
                    DataSave["U3 Spawn Cap"] = Options.SliderAIS3.Value
                    Json_Update_data()
                end)    
                Tab019_3:AddSlider('SliderAIS4', {
                    Text = "Unit Slot 4 Spawn Cap",
                    Default = DataSave["U4 Spawn Cap"],
                    Min = 0,
                    Max = 6,
                    Rounding = 0,
                    Compact = false, 
                    })
                    Options.SliderAIS4:OnChanged(function()
                        DataSave["U4 Spawn Cap"] = Options.SliderAIS4.Value
                        Json_Update_data()
                    end)    
                    Tab019_3:AddSlider('SliderAIS5', {
                        Text = "Unit Slot 5 Spawn Cap",
                        Default = DataSave["U5 Spawn Cap"],
                        Min = 0,
                        Max = 6,
                        Rounding = 0,
                        Compact = false, 
                    })
                Options.SliderAIS5:OnChanged(function()
                    DataSave["U5 Spawn Cap"] = Options.SliderAIS5.Value
                    Json_Update_data()
                end)       
                Tab019_3:AddSlider('SliderAIS6', {
                        Text = "Unit Slot 6 Spawn Cap",
                        Default = DataSave["U6 Spawn Cap"],
                        Min = 0,
                        Max = 6,
                        Rounding = 0,
                        Compact = false, 
                    })
                Options.SliderAIS6:OnChanged(function()
                    DataSave["U6 Spawn Cap"] = Options.SliderAIS6.Value
                    Json_Update_data()
                end)    
        
        ------------------------------------------------
       TabMain021 = Tabs.Game:AddLeftTabbox('> Game1')
       Tab021 = TabMain021:AddTab("[ Play Settings ]")

       Tab021:AddSlider('SliderGame1', {
        Text = "Select Wave",
        Default = DataSave["Select Wave Sell"],
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false, 
        })
        Options.SliderGame1:OnChanged(function()
            DataSave["Select Wave Sell"] = Options.SliderGame1.Value
            Json_Update_data()
        end)                                   

        Tab021:AddToggle('ToggleGame1', {
            Text = 'Auto Sell at Wave',
            Default = DataSave["Auto Sell At Wave"], 
            Tooltip = "", 
            })
    
        Toggles.ToggleGame1:OnChanged(function()
            DataSave["Auto Sell At Wave"] = Toggles.ToggleGame1.Value
            Json_Update_data()
        end)  

        Tab021:AddToggle('ToggleGame2', {
            Text = 'Auto Leave At Wave',
            Default = DataSave["Auto Leave At Wave"], 
            Tooltip = "", 
            })
    
        Toggles.ToggleGame2:OnChanged(function()
            DataSave["Auto Leave At Wave"] = Toggles.ToggleGame2.Value
            Json_Update_data()
        end)  
       
        
        Tab021:AddToggle('ToggleGame3', {
            Text = 'Stop Sell [If detected bosses]',
            Default = DataSave["Stop Sell Boss"], 
            Tooltip = "stop Selling if the boss is not dead", 
            })
    
        Toggles.ToggleGame3:OnChanged(function()
            DataSave["Stop Sell Boss"] = Toggles.ToggleGame3.Value
            Json_Update_data()
        end)  
        TabMain029 = Tabs.Game:AddLeftTabbox('> Game10')
        Tab030 = TabMain029:AddTab("[ Sell SpeedWagon ]")
        

        Tab030:AddSlider('SliderGame2', {
            Text = "Select Wave",
            Default = DataSave["Select Wave Sell SpeedWagon"],
            Min = 1,
            Max = 100,
            Rounding = 0,
            Compact = false, 
            })
            Options.SliderGame2:OnChanged(function()
                DataSave["Select Wave Sell SpeedWagon"] = Options.SliderGame2.Value
                Json_Update_data()
            end)                                   

            Tab030:AddToggle('ToggleGame4', {
                Text = 'Auto Sell Speedwagon at Wave',
                Default = DataSave["Auto Sell speedwagon At Wave"], 
                Tooltip = "Automatically speedwagon sell at wave.", 
                })
        
            Toggles.ToggleGame4:OnChanged(function()
                DataSave["Auto Sell speedwagon At Wave"] = Toggles.ToggleGame4.Value
                Json_Update_data()
            end)          

         TabMain030 = Tabs.Game:AddLeftTabbox('> Game2')
        Tab022 = TabMain030:AddTab("[ Abillties ]")
            

        Tab022:AddDropdown('MultiDropdown19', {
        Values = {"Orwin","Wenda","Leafy"},
        Default = nil, 
        Multi = true, 
    
        Text = 'Select Abillties',
        Tooltip = "",
        })
    
        Options.MultiDropdown19:SetValue(DataSave["Abillties_Select"])
    
        Options.MultiDropdown19:OnChanged(function()
            DataSave["Abillties_Select"] = Options.MultiDropdown19.Value
            Json_Update_data()
        end)    
        Tab022:AddDropdown('Dropdown3_2', {
            Values = {"All","Normal","100% Need 4 Unit Only"},
            Default = DataSave["Orwin_Buff_Method"], 
            Multi = false, 
         
            Text = 'Select Orwin Buff Method',
            Tooltip = '',
        })
        
        Options.Dropdown3_2:OnChanged(function()
            DataSave["Orwin_Buff_Method"] = Options.Dropdown3_2.Value
            Json_Update_data()
        end)

        

        Tab022:AddDropdown('Dropdown3_3', {
            Values = {"All","Normal","100% Need 4 Unit Only"},
            Default = DataSave["Wenda_Buff_Method"], 
            Multi = false, 
         
            Text = 'Select Wenda Buff Method',
            Tooltip = '',
        })
        
        Options.Dropdown3_3:OnChanged(function()
            DataSave["Wenda_Buff_Method"] = Options.Dropdown3_3.Value
            Json_Update_data()
        end)
        

        Tab022:AddDropdown('Dropdown3_4', {
            Values = {"All","Normal","100% Need 4 Unit Only"},
            Default = DataSave["Leafy_Buff_Method"], 
            Multi = false, 
         
            Text = 'Select Leafy Buff Method',
            Tooltip = '',
        })
        
        Options.Dropdown3_4:OnChanged(function()
            DataSave["Leafy_Buff_Method"] = Options.Dropdown3_4.Value
            Json_Update_data()
        end)

        Tab022:AddToggle('Toggle33', {
        Text = 'Auto Use Abillties',
        Default =  DataSave["Auto_Use_Abillties"], 
        Tooltip = 'nil', 
        })

        Toggles.Toggle33:OnChanged(function()
            DataSave["Auto_Use_Abillties"] = Toggles.Toggle33.Value
            Json_Update_data()
        end) 


        TabMain022 = Tabs.Game:AddRightTabbox('> Game3')
        Tab022 = TabMain022:AddTab("[ Special ]")
        Tab022:AddToggle('ToggleSpecial1', {
            Text = 'Remove Map',
            Default =  DataSave["Remove Map"], 
            Tooltip = 'nil', 
            })
        Toggles.ToggleSpecial1:OnChanged(function()
            DataSave["Remove Map"] = Toggles.ToggleSpecial1.Value
            Json_Update_data()
        end) 
        Tab022:AddToggle('ToggleSpecial2', {
            Text = 'Clumsy',
            Default =  DataSave["Clumsy"], 
            Tooltip = 'nil', 
            })
        Toggles.ToggleSpecial2:OnChanged(function()
            DataSave["Clumsy"] = Toggles.ToggleSpecial2.Value
            Json_Update_data()
        end) 
        Tab022:AddToggle('ToggleSpecial3', {
            Text = 'Place Anywhere',
            Default =  DataSave["Place Anywhere"], 
            Tooltip = 'nil', 
            })
        Toggles.ToggleSpecial3:OnChanged(function()
            DataSave["Place Anywhere"] = Toggles.ToggleSpecial3.Value
            Json_Update_data()
        end) 
        Button015 =  Tab022:AddButton('Go To Lobby', function()
            getgenv().Teleport = true
            Service[16]:Teleport(8304191830, Service[8])
        end)



        TabMain023 = Tabs.Game:AddRightTabbox('> Game4')
        Tab023 = TabMain023:AddTab("[ Universe Abilities ]")
        
        
        Tab023:AddDropdown('MultiDropdown21va', {
            Values = {'Unit_1','Unit_2','Unit_3','Unit_4','Unit_5','Unit_6'},
            Default = nil, 
            Multi = true, 
        
            Text = 'Select Unit',
            Tooltip = "",
            })
        
        Options.MultiDropdown21va:SetValue(DataSave["Universe Auto Abillties"])


        Options.MultiDropdown21va:OnChanged(function()
            DataSave["Universe Auto Abillties"] = Options.MultiDropdown21va.Value
            Json_Update_data()
        end)   

        Tab023:AddSlider('SliderUse1', {
            Text = 'Unit 1 Delay (Seconds)',
        
        
            Default = DataSave["U1_delay"],
            Min = 0,
            Max = 300,
            Rounding = 0,
        
            Compact = false, 
            })
        
            Options.SliderUse1:OnChanged(function()
                DataSave["U1_delay"] = Options.SliderUse1.Value 
                Json_Update_data()
            end)


            Tab023:AddSlider('SliderUse2', {
            Text = 'Unit 2 Delay (Seconds)',
        
        
            Default = DataSave["U1_delay"],
            Min = 0,
            Max = 300,
            Rounding = 0,
        
            Compact = false, 
            })
        
            Options.SliderUse2:OnChanged(function()
                DataSave["U2_delay"] = Options.SliderUse2.Value 
                Json_Update_data()
            end)


            Tab023:AddSlider('SliderUse3', {
            Text = 'Unit 3 Delay (Seconds)',
        
        
            Default = DataSave["U3_delay"] ,
            Min = 0,
            Max = 300,
            Rounding = 0,
        
            Compact = false, 
            })
        
            Options.SliderUse3:OnChanged(function()
                DataSave["U3_delay"] = Options.SliderUse3.Value 
                Json_Update_data()
            end)


            Tab023:AddSlider('SliderUse4', {
            Text = 'Unit 4 Delay (Seconds)',
        
        
            Default = DataSave["U4_delay"],
            Min = 0,
            Max = 300,
            Rounding = 0,
        
            Compact = false, 
            })
        
            Options.SliderUse4:OnChanged(function()
                DataSave["U4_delay"] = Options.SliderUse4.Value 
                Json_Update_data()
            end)

            Tab023:AddSlider('SliderUse5', {
            Text = 'Unit 5 Delay (Seconds)',
        
        
            Default = DataSave["U5_delay"],
            Min = 0,
            Max = 300,
            Rounding = 0,
        
            Compact = false, 
            })
        
            Options.SliderUse5:OnChanged(function()
                DataSave["U5_delay"] = Options.SliderUse5.Value 
                Json_Update_data()
            end)    

            Tab023:AddSlider('SliderUse6', {
            Text = 'Unit 6 Delay (Seconds)',
        
        
            Default = DataSave["U6_delay"],
            Min = 0,
            Max = 300,
            Rounding = 0,
        
            Compact = false, 
            })
        
            Options.SliderUse6:OnChanged(function()
                DataSave["U6_delay"] = Options.SliderUse6.Value 
                Json_Update_data()
            end)    
            

        TabMain024 = Tabs.Game:AddLeftTabbox('> Game4')
        --[[Tab024 = TabMain024:AddTab("[ Settings Upgrades ]")
           

                 
        Tab024:AddSlider('SliderAI1', {
                Text = "Unit Slot 1 Upgrade Cap",
            
            
                Default = DataSave["U1 Upgrade Cap"],
                Min = 0,
                Max = 15,
                Rounding = 0,
            
                Compact = false, 
                })
            
                Options.SliderAI1:OnChanged(function()
                    DataSave["U1 Upgrade Cap"] = Options.SliderAI1.Value
                    Json_Update_data()
                end)
                Tab024:AddSlider('SliderAI2', {
                    Text = "Unit Slot 2 Upgrade Cap",
                
                
                    Default = DataSave["U2 Upgrade Cap"],
                    Min = 0,
                    Max = 15,
                    Rounding = 0,
                
                    Compact = false, 
                    })
                
                    Options.SliderAI2:OnChanged(function()
                        DataSave["U2 Upgrade Cap"] = Options.SliderAI2.Value
                        Json_Update_data()
                    end)
                    Tab024:AddSlider('SliderAI3', {
                    Text = "Unit Slot 3 Upgrade Cap",
                    Default = DataSave["U3 Upgrade Cap"],
                    Min = 0,
                    Max = 15,
                    Rounding = 0,
                    Compact = false, 
                    })
                    Options.SliderAI3:OnChanged(function()
                        DataSave["U3 Upgrade Cap"] = Options.SliderAI3.Value
                        Json_Update_data()
                    end)    
                    Tab024:AddSlider('SliderAI4', {
                        Text = "Unit Slot 4 Upgrade Cap",
                        Default = DataSave["U4 Upgrade Cap"],
                        Min = 0,
                        Max = 15,
                        Rounding = 0,
                        Compact = false, 
                        })
                        Options.SliderAI4:OnChanged(function()
                            DataSave["U4 Upgrade Cap"] = Options.SliderAI4.Value
                            Json_Update_data()
                        end)    
                        Tab024:AddSlider('SliderAI5', {
                            Text = "Unit Slot 5 Upgrade Cap",
                            Default = DataSave["U5 Upgrade Cap"],
                            Min = 0,
                            Max = 15,
                            Rounding = 0,
                            Compact = false, 
                            })
                            Options.SliderAI5:OnChanged(function()
                                DataSave["U5 Upgrade Cap"] = Options.SliderAI5.Value
                                Json_Update_data()
                            end)       
                            Tab024:AddSlider('SliderAI6', {
                                Text = "Unit Slot 6 Upgrade Cap",
                                Default = DataSave["U6 Upgrade Cap"],
                                Min = 0,
                                Max = 15,
                                Rounding = 0,
                                Compact = false, 
                                })
                                Options.SliderAI6:OnChanged(function()
                                    DataSave["U6 Upgrade Cap"] = Options.SliderAI6.Value
                                    Json_Update_data()
                                end)]]
       

        Library:SetWatermarkVisibility(true)
        coroutine.wrap(function()
            while true do wait()
                pcall(function()
                local scripttime = game.Workspace.DistributedGameTime
                local seconds = scripttime%60
                local minutes = math.floor(scripttime/60%60)
                local hours = math.floor(scripttime/3600)
                if hours > 0 then
                    Library:SetWatermark("Welcome to Xenon Hub | "..hours.." Hour(s), "..minutes.." Minute(s), "..math.floor(seconds).." Second(s)")
                elseif minutes > 0 then
                    Library:SetWatermark("Welcome to Xenon Hub | "..minutes.." Minute(s), "..math.floor(seconds).." Second(s)")
                else
                    Library:SetWatermark("Welcome to Xenon Hub | "..math.floor(seconds).." Second(s)")
                end
            end)
        end
    end)()
    local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
    local Server_Section = Tabs['UI Settings']:AddRightGroupbox('Server')
    
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind',
 { Default = DataSave["Save UI Key"], NoUI = true, Text = 'Menu keybind',
 ChangedCallback = function(v) 
    pcall(function()
        DataSave["Save UI Key"] = string.sub(tostring(v),14)
        Json_Update_data()
    end)
end,
}) 
    
    MenuGroup:AddButton('Unload', function() Library:Unload() end)
    
    Server_Section:AddButton('Hop Server', function() 
        getgenv().Teleport = true 
    end)
    Server_Section:AddButton('Rejoin Server', function() 
        getgenv().Teleport = true 
        game:GetService("TeleportService"):Teleport(game.PlaceId, Service[8])
    end)

    
    
    Library.ToggleKeybind = Options.MenuKeybind 
    ThemeManager:SetLibrary(Library)
   -- SaveManager:SetLibrary(Library)
   -- SaveManager:IgnoreThemeSettings() 
    --SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
    ThemeManager:SetFolder('MyScriptHub')
   -- SaveManager:SetFolder('MyScriptHub/specific-game')
   -- SaveManager:BuildConfigSection(Tabs['UI Settings']) 
    ThemeManager:ApplyToTab(Tabs['UI Settings'])    
    
Service[8].Idled:connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)



function requestWebhookEndGame()
        pcall(function()
            wavecom = Service[8].PlayerGui.ResultsUI.Holder.Middle.WavesCompleted
            Holder = Service[8].PlayerGui.ResultsUI.Holder.Title
            ctime = Service[8].PlayerGui.ResultsUI.Holder.Middle.Timer.Text
            ttime = ctime:split(": ")    
            webhook_url = tostring(DataSave["Url Webhook"]) 
            local webhook_data = {
                ["content"] = "",
                ["username"] = "XENON HUB - Anime Adventures : Notifer",
                ["avatar_url"] = "",
                ["embeds"] = {
                     {
                        ["title"] = "[ XENON HUB - Anime Adventures ]" ,
                        ["author"] = {
                            ["name"] = "",
                            ["icon_url"] = ""
                        },
                        ["description"] = 
                         "\n```md\n".."- Username : "..Service[8].Name.."".."```"..
                         "\n```md\n".."# Information \n".."- Level : "..tostring(Service[8].PlayerGui.spawn_units.Lives.Main.Desc.Level.Text).."\n"..
                         "- Total Gems : "..tostring(Service[8]._stats.gem_amount.Value).."\n"..
                         "```" ..
                         "\n```md\n".."# Game Information \n"
                         .."- Game : "..tostring(Holder.Text).."\n"..
                         "- Map : "..tostring(MapData.name).."\n"..
                         "- Mode : "..tostring(MapData.mode).."\n"..    
                         "- Difficulty : "..tostring(MapData.difficulty).."\n".. 
                         "- Complete : "..tostring(wavecom.Text).. " Time : "..tostring(ttime[2]).."\n".. 
                         "```".."\n```md\n".."# Reward \n".."+ "..tostring(Sead_data_item).."```",
                        ["color"] = 16729156,
                    }   
                }
            }
        local Encode = game:GetService("HttpService"):JSONEncode(webhook_data)
        local headers = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request or http.request
        local __A = {Url = webhook_url, Body = Encode, Method = "POST", Headers = headers}
        request(__A)
    end)
end


function requestWebhook(method)
    pcall(function()
        local Seaddata = {}
        if method == "Merchant" then 
            Seaddata =  MerchantWebhook
        elseif method == "Summon" then 
            Seaddata =  SummonWebhook
        elseif method == "EndGame" then 
            Seaddata =  EndGameWebhook
        end
        webhook_url = tostring(DataSave["Url Webhook"])
        local webhook_data = Seaddata 
        local Encode = game:GetService("HttpService"):JSONEncode(webhook_data)
        local headers = {["content-type"] = "application/json"}
        request = http_request or request or HttpPost or syn.request or http.request
        local __A = {Url = webhook_url, Body = Encode, Method = "POST", Headers = headers}
        request(__A)
    end)
end


game:GetService("UserInputService").WindowFocused:connect(function()
    if DataSave["Auto White Screen"]  then 
        game.RunService:Set3dRenderingEnabled(true)
    end
end)

game:GetService("UserInputService").WindowFocusReleased:connect(function()
    if DataSave["Auto White Screen"] then 
        game.RunService:Set3dRenderingEnabled(false)
    end
end)
    LoopAll000 = task.spawn(function()
        repeat task.wait(0.03)
            local success, error = pcall(function()
            if DataSave["Enable FPS Limit"]then 
                setfpscap(DataSave["FPS CAP"])
            end
        end)
        until getgenv().Teleport == true 
    end)

    LoopAll002 = task.spawn(function() 
        repeat task.wait(.1)
            local success, error = pcall(function()
                if DataSave["Marco Play"] then 
                    Options.label_1_marco:SetText("Marco Status : Play")
                    task.wait(.4)
                    Options.label_1_marco:SetText("Marco Status : Play.")
                    task.wait(.4)        
                    Options.label_1_marco:SetText("Marco Status : Play..")
                    task.wait(.4)
                    Options.label_1_marco:SetText("Marco Status : Play...")
                    task.wait(.4)
                elseif RecordMarco then 
                    Options.label_1_marco:SetText("Marco Status : Recording")
                    task.wait(.4)
                    Options.label_1_marco:SetText("Marco Status : Recording.")
                    task.wait(.4)
                    Options.label_1_marco:SetText("Marco Status : Recording..")
                    task.wait(.4)
                    Options.label_1_marco:SetText("Marco Status : Recording...")
                    task.wait(.4)
                else
                    Options.label_1_marco:SetText("Marco Status : Disabled.")
                end
            end) 
        until getgenv().Teleport == true 
    end) 

    LoopAll001 = task.spawn(function()
        repeat task.wait(0.03)
            local success, error = pcall(function()
                if IndexSpy and not RecordMarco and not DataSave["Marco Play"] then 
                    Options.label_3_marco:SetText("Index : "..tostring(IndexSpy))
                else
                    Options.label_3_marco:SetText("Index : "..tostring(Index))  
                end
            end)
        until getgenv().Teleport == true 
    end)

if game.PlaceId == 8304191830 then

    function GetChallengeData()
        local Surface = 1
        for i,v in pairs(Service[8].PlayerGui:GetChildren())do 
            if v.Name == "SurfaceGui" then 
                getgenv()["ChallengeSurfaceGui"..tostring(Surface)] = v 
                Surface = Surface + 1
            end
        end
    end GetChallengeData() 

    local TeleportCheck = Service[8].PlayerGui.MessageGui.messages.ChildAdded:Connect(function(v)
        if v.Name == "Error" then
           v:Destroy() 
        end
            if v.Name == "Success" then 
                v:WaitForChild("Tex")
                if v.Tex.Text == "Teleporting..." then 
                    getgenv()["Teleport"] = true 
                task.wait(2)
            end
        end
    end)

    DataInfinite = {}
    Progress = 0 
    ProgressAll = 0
    for i,v in pairs(getgc(true))do
        if type(v) == "table" and rawget(v,"quest_info") then 
            if v.quest_type == "infinite"  then 
                    ProgressAll = ProgressAll + 1
                    if v.quest_progress.amount == 0 then 
                    Progress = Progress + 1
                    for x,y in pairs(require(Service[3]["src"]["Data"]["Worlds"]))do 
                        if y.infinite then 
                            if v.quest_info.quest_class.level_id == y.infinite.id then 
                                DataInfinite[y.name] = v.quest_info.quest_class.level_id
                            end
                        end
                    end
                end
            end
        end
    end
    do 
        DataSave["ProgressComplete"]  = ProgressAll - Progress
        DataSave["ProgressAll"] = ProgressAll
        Json_Update_data()
    end


    

    function GeneralJoin(Method)
        if Method == "Main World" then 
            local Checkself = false
            for i,v in pairs(workspace._LOBBIES.Story:GetChildren()) do
                if v:FindFirstChild("Players") and v["Players"]:FindFirstChildOfClass("ObjectValue") then 
                    if tostring(v["Players"]:FindFirstChildOfClass("ObjectValue").Value) == Service[8].Name then 
                        Checkself = true 
                        end
                    end
                end 
                    for i,v in pairs(workspace._LOBBIES.Story:GetChildren()) do 
                        if v:FindFirstChild("Players") then 
                            if Service[8].PlayerGui.LevelSelectGui.Enabled == false then 
                                if not v["Players"]:FindFirstChildOfClass("ObjectValue") then
                                    if  DataSave["Use Team Swap Story"] then 
                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Main Worlds"]))
                                    end
                                    local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                    Service[8].Character.HumanoidRootPart.CFrame = v["Door"].CFrame
                                    task.wait(.1)
                                    Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                                end
                            else
                            for x,y in pairs(v["Players"]:GetChildren())do 
                                if tostring(y.Value) == Service[8].Name then 
                                if Checkself and DataSave["Auto Start"] then 
                                        local toserver = Service[3].endpoints.client_to_server.request_lock_level:InvokeServer(v.Name,DataSave["Select World Stages"],false,DataSave["Select World Difficulty"])
                                        if toserver then 
                                            if string.find(DataSave["Select World Stages"],"infinite") and DataSave["Find Match"] then   
                                                Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("request_matchmaking"):InvokeServer(DataSave["Select World Stages"])
                                                task.wait(10)
                                            else
                                            local RequestStart = Service[3].endpoints.client_to_server.request_start_game:InvokeServer(v.Name) 
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        elseif Method == "Infinity Castle" then 
            local CurrentTower = string.match(Service[8].PlayerGui.InfiniteTowerUI.LevelSelect.InfoFrame.LevelTitle.Text,"%d+")
            if DataSave["Select Infinity Castle Difficulty"] == "Normal" then 
                if  DataSave["Use Team Swap Infinity Castle"] then 
                    Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Infinity Castle"]))
                end
                Service[3].endpoints.client_to_server.request_start_infinite_tower:InvokeServer(tonumber(CurrentTower))
                else
                Service[3].endpoints.client_to_server.request_start_infinite_tower:InvokeServer(tonumber(CurrentTower),"Hard")
            end
        elseif Method == "Raid" then 
            local Checkself = false
            for i,v in pairs(workspace._RAID.Raid:GetChildren()) do
                if v:FindFirstChild("Players") and v["Players"]:FindFirstChildOfClass("ObjectValue") then 
                    if tostring(v["Players"]:FindFirstChildOfClass("ObjectValue").Value) == Service[8].Name then 
                            Checkself = true 
                        end
                    end
                end 
                    for i,v in pairs(workspace._RAID.Raid:GetChildren()) do 
                        if v:FindFirstChild("Players") then 
                            if Service[8].PlayerGui.LevelSelectGui.Enabled == false then 
                                if not v["Players"]:FindFirstChildOfClass("ObjectValue") then
                                    if  DataSave["Use Team Swap Raid"] then 
                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Raid"]))
                                    end
                                    local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                    Service[8].Character.HumanoidRootPart.CFrame = v["Door"].CFrame
                                    task.wait(.5)
                                    Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                                end
                            else
                            for x,y in pairs(v["Players"]:GetChildren())do 
                                if tostring(y.Value) == Service[8].Name then 
                                    if Checkself and DataSave["Auto Start"]  then                
                                        local toserver = Service[3].endpoints.client_to_server.request_lock_level:InvokeServer(v.Name,DataSave["Select Raid Stages"],false,"Hard")
                                        if toserver then 
                                        local RequestStart = Service[3].endpoints.client_to_server.request_start_game:InvokeServer(v.Name) 
                                    end
                                end
                            end
                        end
                    end
                end
            end
        elseif  Method == "LegendStage" then 
            local Checkself = false
            for i,v in pairs(workspace._LOBBIES.Story:GetChildren()) do
                if v:FindFirstChild("Players") and v["Players"]:FindFirstChildOfClass("ObjectValue") then 
                    if tostring(v["Players"]:FindFirstChildOfClass("ObjectValue").Value) == Service[8].Name then 
                            Checkself = true 
                        end
                    end
                end 
                    for i,v in pairs(workspace._LOBBIES.Story:GetChildren()) do 
                        if v:FindFirstChild("Players") then 
                            if Service[8].PlayerGui.LevelSelectGui.Enabled == false then 
                                if not v["Players"]:FindFirstChildOfClass("ObjectValue") then
                                    if  DataSave["Use Team Swap Legend Stage"] then 
                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Legend Stage"]))
                                    end
                                    local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                    Service[8].Character.HumanoidRootPart.CFrame = v["Door"].CFrame
                                    task.wait(.5)
                                    Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                                end
                            else
                            for x,y in pairs(v["Players"]:GetChildren())do 
                                if tostring(y.Value) == Service[8].Name then 
                                if Checkself and DataSave["Auto Start"] then  
                                        local toserver = Service[3].endpoints.client_to_server.request_lock_level:InvokeServer(v.Name,DataSave["Select Legend Stage Level"],false,"Hard")
                                        if toserver then 
                                        local RequestStart = Service[3].endpoints.client_to_server.request_start_game:InvokeServer(v.Name) 
                                    end
                                end
                            end
                        end
                    end
                end
            end
           
            --
            elseif Method == "Infinite Daily" then 
            local Checkself = false;
            local CheckGeneralJoin = false;
            for o,m in pairs(DataInfinite)do 
            if not table.find(DataSave["Ignore Infinite Daily Quest Worlds"],tostring(o)) and not getgenv()["Teleport"] and DataSave["Auto Join Infinite Daily"] then
            CheckGeneralJoin = true 
            for i,v in pairs(workspace._LOBBIES.Story:GetChildren()) do
                if v:FindFirstChild("Players") and v["Players"]:FindFirstChildOfClass("ObjectValue") then 
                    if tostring(v["Players"]:FindFirstChildOfClass("ObjectValue").Value) == Service[8].Name then 
                        Checkself = true 
                        end
                    end
                end 
                    for i,v in pairs(workspace._LOBBIES.Story:GetChildren()) do 
                        if v:FindFirstChild("Players") then 
                            if Service[8].PlayerGui.LevelSelectGui.Enabled == false then 
                                if not v["Players"]:FindFirstChildOfClass("ObjectValue") then
                                    if  DataSave["Use Team Swap Infinite Daily"] then 
                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Infinite Daily"]))
                                    end
                                    local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                    Service[8].Character.HumanoidRootPart.CFrame = v["Door"].CFrame
                                    task.wait(.5)
                                    Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                                end
                            else
                            for x,y in pairs(v["Players"]:GetChildren())do 
                                if tostring(y.Value) == Service[8].Name then 
                                if Checkself and DataSave["Auto Start"] then  
                                        local toserver = Service[3].endpoints.client_to_server.request_lock_level:InvokeServer(v.Name,m,false,"Hard")
                                                if toserver then 
                                                local RequestStart = Service[3].endpoints.client_to_server.request_start_game:InvokeServer(v.Name) 
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                task.wait(1)
            end
            elseif Method == "Tournament" then 
            if DataSave["Auto Start"] then 
                if  DataSave["Use Team Swap Tournament"] then 
                    Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Tournament"]))
                end
                Service[3].endpoints.client_to_server.request_start_tournament:InvokeServer()
            end 
            elseif Method == "Dungeon" then 
                for i,v in pairs(workspace._DUNGEONS.Lobbies:GetChildren()) do
                    if v:FindFirstChild("Players") and v["Players"]:FindFirstChildOfClass("ObjectValue") then 
                        if tostring(v["Players"]:FindFirstChildOfClass("ObjectValue").Value) == Service[8].Name then 
                            Checkself = true 
                            DungeonLobby = v
                        end
                    end
                end 
                if Checkself then 
                    local pls = 0;
                    for k,l in pairs(DungeonLobby["Players"]:GetChildren())do 
                        if tostring(l.Value) ~= Service[8].Name then 
                        Service[3].endpoints.client_to_server.request_leave_lobby
                        :InvokeServer(DungeonLobby.Name)
                    end 
                 end
            end
            -- 
            for i,v in pairs(workspace._DUNGEONS.Lobbies:GetChildren()) do 
                if v:FindFirstChild("Players") then 
                        if not v["Players"]:FindFirstChildOfClass("ObjectValue") then
                            if DataSave["Select Dungeon"] == "Cursed Womb" 
                            and v["Door"].Surface.LevelName.Text == "Cursed Womb"  then 
                                    if  DataSave["Use Team Swap Dungeon"] then 
                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Dungeon"]))
                                    end
                                    local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                    args = {[1] = v.Name,[2] = {["selected_key"] = "key_jjk_finger"}}
                                    Service[3].endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))
                                    task.wait(.1)
                                    Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                            elseif DataSave["Select Dungeon"] == "Cursed Parade" 
                            and v["Door"].Surface.LevelName.Text == "Cursed Parade" then 
                                    if DataSave["Use Team Swap Dungeon"] then 
                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Dungeon"]))
                                    end
                                    local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                    args = {[1] = v.Name,[2] = {["selected_key"] = "key_jjk_map"}}
                                    Service[3].endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))
                                    task.wait(.1)
                                    Service[8].Character.HumanoidRootPart.CFrame = OldPosition 
                                end
                            end
                        end
                    end
                elseif Method == "Halloween" then    
                        for i,v in pairs(workspace._EVENT_CHALLENGES.Lobbies:GetChildren())do
                            for k,l in pairs(v["Players"]:GetChildren())do 
                                if l:FindFirstChildOfClass("ObjectValue") and tostring(l.Value) ~= Service[8].Name then 
                                    Service[3].endpoints.client_to_server.request_leave_lobby
                                    :InvokeServer(v.Name)
                                end 
                            end
                            if not v:FindFirstChild('Players'):FindFirstChildOfClass("ObjectValue") then
                                local HJoin = nil;
                                    for x,y in pairs(DataSave["Ignore Map Halloween Dungeon"])do
                                        if string.find(tostring(v["Door"].Surface.MapName.Text),tostring(y)) then  
                                            HJoin = true
                                        end
                                    end
                                    
                                    if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false and not HJoin then   
                                       if DataSave["Find Match"] then  
                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("request_matchmaking"):InvokeServer("halloween2_event")
                                        task.wait(10)
                                       else
                                        local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("request_join_lobby"):InvokeServer(v.Name)
                                        task.wait(.5)
                                        Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                                        CurrentLobbyH = v.Name 
                                    end
                                end
                            end
                        end
            elseif Method == "Portal" then 
            -- Portal----------
            local Checkself = false;
            local CheckGeneralJoin = false;
            local PortalLobby = nil;
            for i,v in pairs(workspace._PORTALS.Lobbies:GetChildren()) do
                if v:FindFirstChild("Players") and v["Players"]:FindFirstChildOfClass("ObjectValue") then 
                    if tostring(v["Players"]:FindFirstChildOfClass("ObjectValue").Value) == Service[8].Name then 
                        Checkself = true 
                        PortalLobby = v
                    end
                end
            end 
            for i,v in pairs(PortalData)do
                if v.uuid and v.item_id  then 
                        if DataSave["Selects Portal"] == "Alien Portal"
                            and v.item_id == "portal_boros_g" then 
                            CheckGeneralJoin = true 
                            if DataSave["Use Team Swap Portal"] then 
                                Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                            end
                            if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then
                                if DataSave["Friends Only"] then 
                                     toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                     else
                                     toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})    
                                end
                            end
                            elseif DataSave["Selects Portal"] == "Demon Leader's Portal" 
                            and v.item_id == "portal_zeldris" then 
                            CheckGeneralJoin = true 
                            if DataSave["Use Team Swap Portal"] then 
                                Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                            end
                            if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                                if DataSave["Friends Only"] then 
                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                    else
                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})
                                end
                            end
                            elseif DataSave["Selects Portal"] == "Puppet Portal" 
                            and v.item_id == "portal_item__dressrosa" then
                            CheckGeneralJoin = true 
                            if DataSave["Use Team Swap Portal"] then 
                                Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                            end
                            if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                                if DataSave["Friends Only"] then 
                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                    else
                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})
                                end
                            end
                            
                        elseif DataSave["Selects Portal"] == "Noble Portal" 
                        and v.item_id == "portal_item__fate" then
                        CheckGeneralJoin = true 
                        if DataSave["Use Team Swap Portal"] then 
                            Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                        end
                        if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                            if DataSave["Friends Only"] then 
                                toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                else
                                toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})
                            end
                        end
                            elseif DataSave["Selects Portal"] == "Eclipse Portal" 
                            and v.item_id == "portal_item__eclipse" then 
                            CheckGeneralJoin = true 
                            if DataSave["Use Team Swap Portal"] then 
                                Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                            end
                            if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                                if DataSave["Friends Only"] then 
                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                else
                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})
                                end
                            end
                            elseif DataSave["Selects Portal"] == "Port Agency Portal" 
                            and v.item_id == "portal_item__bsd" then 
                             CheckPortalAgency = false;
                                if DataSave["Selects Portal Tier"][tostring(v._unique_item_data._unique_portal_data.portal_depth)]  and
                                not table.find(DataSave["Ignore Portal Difficulty"],tostring(v._unique_item_data._unique_portal_data.challenge)) then 
                                for x,y in pairs(DataWorld)do
                                    if y.levels then
                                       for x2,y2 in pairs(y.levels)do 
                                            if v._unique_item_data._unique_portal_data.level_id == y2.id then 
                                                if not table.find(DataSave["Ignore Portal Worlds"],y.name) then
                                                    CheckGeneralJoin = true 
                                                    CheckPortalAgency = true 
                                                    if DataSave["Use Team Swap Portal"] then 
                                                        Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                                                    end
                                                    if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                                                        if DataSave["Friends Only"] then 
                                                            toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                                            else
                                                            toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})
                                                        end
                                                    end
                                                end
                                            end
                                       end
                                    end
                                end
                            end


                            elseif DataSave["Selects Portal"] == "Summer Portal" 
                            and v.item_id == "portal_summer" then 
                            if DataSave["Selects Portal Tier"][tostring(v._unique_item_data._unique_portal_data.portal_depth)]  and
                            not table.find(DataSave["Ignore Portal Difficulty"],tostring(v._unique_item_data._unique_portal_data.challenge)) then 
                                for x,y in pairs(DataWorld)do 
                                if y.infinite then
                                    if v._unique_item_data._unique_portal_data.level_id == y.infinite.id then 
                                        if not table.find(DataSave["Ignore Portal Worlds"],y.name) then
                                            CheckGeneralJoin = true 
                                            if DataSave["Use Team Swap Portal"] then 
                                                Service[3].endpoints.client_to_server.switch_team_loadout:InvokeServer(tostring(DataSave["Select Team Portal"]))
                                            end
                                            if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                                                if DataSave["Friends Only"] then 
                                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid)
                                                else
                                                    toserver = Service[3].endpoints.client_to_server.use_portal:InvokeServer(v.uuid,{["friends_only"] = true})
                                                end
                                            end
                                        end
                                    end
                                end
                            end   
                        end
                    end
                end
            end
            if Checkself and PortalLobby and DataSave["Auto Start"] then 
                RequestStart = Service[3].endpoints.client_to_server.request_start_game:InvokeServer(PortalLobby.Name) 
            end
            local tier = 0;
            for m,k in pairs(DataSave["Selects Portal Tier"])do 
                tier = tier + 1 
            end
            if not CheckPortalAgency and tier > 0 and DataSave["Auto Buy Portal"] and DataSave["Selects Portal"] == "Port Agency Portal"  then 
                Service[3].endpoints.client_to_server.buy_bsd_shop_item:InvokeServer("bsd_portal_item_contract","1")
                task.wait(1.5)
            end
        end
    end


    task.spawn(function()
        task.wait(DataSave["Start Auto Join Delay"])  
        _G.StartAutoJoin = true 
    end)

    Loop001 = task.spawn(function()
        repeat task.wait(.1) 
            local  success , error = pcall(function()
            if _G.StartAutoJoin and not StartHatch then 
            ChallengeStart = false
            if DataSave["Auto Join Challenge"] then
                for i,v in pairs(Service[1]["_CHALLENGES"].Challenges:GetChildren())do
                    if getgenv()["ChallengeSurfaceGui2"].ChallengeCleared.Visible == false then 
                        if not table.find(DataSave["Ignore Challenge Worlds"],getgenv()["ChallengeSurfaceGui2"].LevelInfo.MapName.Text) 
                        and not table.find(DataSave["Ignore Challenge Difficulty"],getgenv()["ChallengeSurfaceGui2"].LevelInfo.Difficulty.Text) 
                        and not table.find(DataSave["Ignore Challenge Reward"],getgenv()["ChallengeSurfaceGui2"].LevelInfo.Reward.Text) then  
                            if not v:FindFirstChild('Players'):FindFirstChildOfClass("ObjectValue") then
                                if Service[8].PlayerGui.LevelSelectGui.Starting.Visible == false then   
                                        local OldPosition = Service[8].Character.HumanoidRootPart.CFrame
                                        Service[8].Character.HumanoidRootPart.CFrame = v["Door"].CFrame
                                        task.wait(.5)
                                        Service[8].Character.HumanoidRootPart.CFrame = OldPosition
                                        CurrentLobby = v.Name 
                                        ChallengeStart = true 
                                    end
                                end
                            end
                        end
                    end
                    if  Service[8].PlayerGui.LevelSelectGui.Starting.Main.Wrapper.Container.Status.Players.Text ~= "1/4" then
                        Service[3].endpoints.client_to_server.request_leave_lobby
                        :InvokeServer(CurrentLobby)
                    end    
                end
                if not ChallengeStart then 
                        if DataSave["Auto Join Raid"] then local request = GeneralJoin("Raid") end 
                        if DataSave["Auto Infinity Castle"] then local request = GeneralJoin("Infinity Castle") end
                        if DataSave["Auto Join Select World"] then local request = GeneralJoin("Main World") end
                        if DataSave["Auto Join Legend Stage"] then local request = GeneralJoin("LegendStage")end
                        if DataSave["Auto Join Infinite Daily"] then local request = GeneralJoin("Infinite Daily") end
                        if  DataSave["Auto Join Portal"] then local request = GeneralJoin("Portal")end
                        if  DataSave["Auto Join Tournament"] then local request = GeneralJoin("Tournament") end
                        if  DataSave["Auto Join Dungeon"]  then local request = GeneralJoin("Dungeon") end
                        if DataSave["Auto Join Halloween Event"] then local request = GeneralJoin("Halloween") end
                    end
                end
            end)
            if error then warn(error) end
        until getgenv()["Teleport"] == true 
    end)

    Loop002 = task.spawn(function()
        repeat task.wait(.1)
            local  success , error = pcall(function()
                if DataSave["Auto Buy Merchant"] then 
                    if workspace.travelling_merchant:FindFirstChild("stand") then 
                        GetItemMerchant = Service[3].endpoints.client_to_server.poll_active_items:InvokeServer()
                        for i,v in pairs(GetItemMerchant)do 
                            for x,y in pairs(DataSave["Item Select Merchant"])do 
                                for x2,y2 in pairs(AllItem)do 
                                    for x3,y3 in pairs(workspace.travelling_merchant.stand.items:GetChildren())do 
                                        if y == y2.name and y2.id == v.id and tostring(i) == y3.Name then
                                            local ItemBuy = nil;
                                                if v.gold_cost and Service[8]["_stats"]["gold_amount"].Value >= v.gold_cost then 
                                                    ItemBuy = true 
                                                elseif v.gem_cost and Service[8]["_stats"]["gem_amount"].Value >= v.gem_cost then 
                                                    ItemBuy = true     
                                                end
                                                if ItemBuy then 
                                                BuyMerchant = Service[3].endpoints.client_to_server.buy_travelling_merchant_item:InvokeServer(tostring(i))
                                                MerchantItemBuy = "- "..tostring(y2.name)
                                                MerchantWebhook = {
                                                    ["content"] = "",
                                                        ["username"] = "XENON HUB - Anime Adventures : Notifer",
                                                        ["avatar_url"] = "",
                                                        ["embeds"] = {
                                                        {["title"] = "" ,["author"] = {["name"] = "[ XENON HUB - Anime Adventures ]",["icon_url"] = ""},
                                                        ["description"] = ":white_check_mark:  General"
                                                        .."\n```md\n ".."# Information \n".."".."\n"..
                                                        "- Username "..Service[8].Name.."              "
                                                        .."\n- TimeUTC : "..tostring(timezone)         
                                                        .."\n- Date : "..tostring(datetime).."```"
                                                        .."\n:white_check_mark:Reward"
                                                        .."\n```md\n".."# Buy Merchant Item \n"..
                                                        tostring(MerchantItemBuy)..
                                                        "```",      
                                                        ["color"] = 16729156,
                                                       }          
                                                    }
                                                }
                                                requestWebhook("Merchant")
                                            end    
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        until getgenv()["Teleport"] == true  
    end)    

    Loop003 = task.spawn(function()
        repeat task.wait(.1)
            local  success , error = pcall(function()
                if DataSave["Auto Buy Gold Shop"] then 
                    for i,v in pairs(DataSave["Item Select Gold Shop"])do 
                        for x,y in pairs(AllItem)do 
                            if v == y.name then 
                                for x2,y2 in pairs(Service[3].endpoints.client_to_server.request_current_gold_shop:InvokeServer())do 
                                    if y2.id == y.id and Service[8]["_stats"]["gold_amount"].Value >= y2.gold_cost  then 
                                        if DataSave["Choose the purchase0 amount"] == "x10" then     
                                                if  Service[8]["_stats"]["gold_amount"].Value >= y2.gold_cost * 10 then 
                                                    Service[3].endpoints.client_to_server.buy_gold_shop_item:InvokeServer(y2.id,"10")
                                                    wait()
                                                    Service[3].endpoints.client_to_server.buy_gold_shop_item:InvokeServer(y2.id,"1")
                                                else
                                                    Service[3].endpoints.client_to_server.buy_gold_shop_item:InvokeServer(y2.id,"1")
                                                end
                                            else
                                            Service[3].endpoints.client_to_server.buy_gold_shop_item:InvokeServer(y2.id,"1")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        until getgenv()["Teleport"] == true  
    end)



    Loop004 = task.spawn(function()
        repeat task.wait(.1)
            local  success , error = pcall(function()
                if DataSave["Auto Craft Steel Ingots"] then 
                    if ItemData["ore_steel"] and ItemData["ore_steel"] >= 15 then 
                        Service[3].endpoints.client_to_server.craft_item:InvokeServer("ingots_steel","craft_relics_ui")
                    end
                end
                if DataSave["Auto Craft Relics"] then
                    for i,v in pairs(DataSave["Relics Select"])do 
                        for x,y in pairs(AllItem)do 
                            if v == y.name and y.relic_data and y.crafting_recipe then
                                local itemCount = 0;
                                    for x1,y1 in pairs(y.crafting_recipe)do itemCount = itemCount + 1 end
                                        local itemCount2 = 0;
                                        for x2,y2 in pairs(y.crafting_recipe)do -- checkitem count 
                                            for x3,y3 in pairs(ItemData)do 
                                            if tostring(x2) == tostring(x3) then 
                                            if y3 >= y2 then 
                                                itemCount2 = itemCount2 + 1
                                            end    
                                        end
                                    end
                                end
                                if itemCount == itemCount2 then 
                                    Service[3].endpoints.client_to_server.craft_item:InvokeServer(y.id,"craft_relics_ui")
                                end
                            end 
                        end
                    end
                end
            end)
        until getgenv()["Teleport"] == true 
    end)

    Loop004 = task.spawn(function()
        repeat task.wait(.1)
            local  success , error = pcall(function()
                if DataSave["Auto Open Capsule"] then 
                    for i,v in pairs(DataSave["Selects Capsule"])do 
                        for x,y in pairs(CapsuleData)do 
                            if v == y["Name"] then 
                                for x2,y2 in pairs(ItemData)do 
                                    if y["Id"] == tostring(x2) then 
                                        Service[3].endpoints.client_to_server.use_item:InvokeServer(y["Id"],{["use10"] = false})
                                    end
                                end
                            end
                        end
                    end
                end
            end)    
        until getgenv()["Teleport"] == true 
    end)

    Loop006 = task.spawn(function()
        repeat task.wait(.1)
            local  success , error = pcall(function()
                if DataSave["Auto Reroll Trait"] then 
                if Service[8].PlayerGui.TraitReroll.grid.TrialUnit:FindFirstChild("CollectionUnitFrame") then 
                        local GetTrait = Service[8].PlayerGui.TraitReroll.grid.CurrentTraitsList.CurrentTraitText.Text
                            if table.find(DataSave["Selects Trait"],GetTrait) then 
                                game:GetService("StarterGui"):SetCore("SendNotification",{     
                                Title = "Congratulations!",     
                                Text = "You will receive the GetTrait Trait.",
                                Duration = 15, })
                            else
                                local UserInputService = game:GetService("UserInputService")
                                local VirtualInputManager = game:GetService("VirtualInputManager")
                                if DataSave["Select Trait Reroll Method"] == "Reroll" then 
                                QuestAccept =  Service[8].PlayerGui.TraitReroll.grid.Bottom.Reroll.Button
                                VirtualInputManager:SendMouseButtonEvent(QuestAccept.AbsolutePosition.X + 115, QuestAccept.AbsolutePosition.Y + 50, 0, not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 1)
                                elseif DataSave["Select Trait Reroll Method"] == "Reroll ( Robux )" then 
                                QuestAccept = Service[8].PlayerGui.TraitReroll.grid.Bottom.TokenReroll.Button
                                VirtualInputManager:SendMouseButtonEvent(QuestAccept.AbsolutePosition.X + 115, QuestAccept.AbsolutePosition.Y + 50, 0, not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 1)   
                            end
                            task.wait(.5)
                        end 
                    end
                end
            end)    
        until getgenv()["Teleport"] == true 
    end)
    Skin = {}
    function GetAllSkinDataInGame()
        for i,v in pairs(Service[3].src.Data.Items.UniqueItems.Skins:GetChildren())do 
            for x,y in pairs(require(v))do 
                Skin[y.id] = y.rarity
            end
        end
    end GetAllSkinDataInGame()
    
    Loop007 = task.spawn(function()
        repeat task.wait(.1)
            local  success , error = pcall(function()
                if DataSave["Auto Sell Skin"] then
                    local skindelete = {} 
                    for i,v in pairs(PortalData)do 
                        if string.find(v.item_id,"skin") then 
                            for x,y in pairs(Skin)do 
                                if v.item_id == tostring(x) then
                                    if table.find(DataSave["Select Skin Rarity"],y)  then 
                                        if not table.find(skindelete,v.uuid) then 
                                            table.insert(skindelete,v.uuid)
                                        end
                                    end
                                end
                            end
                        end
                    end   
                    if #skindelete > 0 then 
                        Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer(skindelete)
                    end
                end
            end)    
        until getgenv()["Teleport"] == true 
    end)

    do -- Update Banner 
        Loop008 = task.spawn(function()
            repeat task.wait(1)
            local  success , error = pcall(function()
                RequestBanner = Service[3].endpoints.client_to_server.get_hatch_setup_data:InvokeServer()
            end)
            until getgenv()["Teleport"] == true 
        end)
    end
    

    function CheckPass()
        local hasPass;
        hasPass = Service[20]:UserOwnsGamePassAsync(Service[8].UserId, 55372677)
        return hasPass 
    end 
    do 
    UserOwnsVIP = CheckPass()
        GemHatch = {}
        if UserOwnsVIP then 
            GemHatch["Mythic"] = 16000
            GemHatch["Legend"] = 2000
            GemHatch["Hatch Count"] = 40
        else
            GemHatch["Mythic"] = 20000
            GemHatch["Legend"] = 2500
            GemHatch["Hatch Count"] = 50
        end
    end
    do
        
    local randomcount = 0;
    Service[8].Character.ChildAdded:Connect(function(v)
        if v:IsA("Model") then 
            if DataSave["Limit Units Rate Up Check"] then 
                if RollCloverBanner and StartHatch then 
                    if AllUnit[v.Name]['Rarity'] == "Mythic" then 
                        if not table.find(DataSave["UnitSave"],v.Name) then
                            if randomcount < DataSave["Limit Units Rate"] then 
                                randomcount = randomcount + 1 
                            else
                                for x,y in pairs(DataSave["UnitSave"])do 
                                    if y == v.Name then 
                                        CanHatch = nil 
                                        table.remove(DataSave["UnitSave"],x)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if table.find(DataSave["UnitSave"],v.Name) then 
                for x,y in pairs(DataSave["UnitSave"])do 
                    if y == v.Name then 
                        table.remove(DataSave["UnitSave"],x)
                        CanHatch = nil 
                        UnitSniper = "- "..AllUnit[v.Name]["Name"]
                        SummonWebhook = {
                            ["content"] = "",
                                ["username"] = "XENON HUB - Anime Adventures : Notifer",
                                ["avatar_url"] = "",
                                ["embeds"] = {
                                {["title"] = "" ,["author"] = {["name"] = "[ XENON HUB - Anime Adventures ]",["icon_url"] = ""},
                                ["description"] = ":white_check_mark:  General"
                                .."\n```md\n ".."# Information \n".."".."\n"..
                                "- Username "..Service[8].Name.."              "
                                .."\n- TimeUTC : "..tostring(timezone)         
                                .."\n- Date : "..tostring(datetime).."```"
                                .."\n:white_check_mark:Reward"
                                .."\n```md\n".."# Congratulations you have received your unit. \n"..
                                tostring(UnitSniper)..
                                "```",      
                                ["color"] = 16729156,
                            }          
                        }
                        }
                        requestWebhook("Summon")
                    end
                end
                task.wait(10)
                if not BreakHatch then 
                    StartHatch = false
                end
            end
        end
    end)



        function UseLuckPotion()
            if DataSave["useluck"] and ItemData["LuckPotion"] then 
                Service[3].endpoints.client_to_server.use_item:InvokeServer("LuckPotion")
            end
        end
        Loop011 = task.spawn(function()
            repeat task.wait(.1)
                local  success , error = pcall(function()
                    if DataSave["RollSniper"] then 
                        RollStandardBanner=nil 
                        RollCloverBanner=nil 
                        BreakHatch=false 
                        Gemamount = tonumber(Service[8]._stats.gem_amount.Value)
                        if table.find(DataSave["Select Banner"],"Standard") then 
                            for i,v in pairs(RequestBanner.Standard)do 
                                if table.find(DataSave["UnitSave"],v) then 
                                    if not CanHatch then 
                                        CanHatch = false
                                    end
                                        if AllUnit[v]['Rarity'] == "Mythic" then 
                                            if Gemamount >= GemHatch["Mythic"] then 
                                                CanHatch = true 
                                            end
                                            elseif AllUnit[v]['Rarity']== "Legendary" then 
                                            if Gemamount >= GemHatch["Legend"] then 
                                                CanHatch = true 
                                            end   
                                        else
                                            CanHatch = true
                                        end
                                        if DataSave["RollPityGem"] then 
                                            if CanHatch then 
                                                StartHatch = true 
                                                BreakHatch=true 
                                                HatchSummonTicket = nil 
                                                RollStandardBanner = true 
                                                if DataSave["useluck"] and ItemData["LuckPotion"] then 
                                                    Service[3].endpoints.client_to_server.use_item:InvokeServer("LuckPotion")
                                                end
                                                if DataSave["usesummon"] and ItemData["summon_ticket"] then 
                                                    HatchSummonTicket = true 
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","ticket")
                                                    task.wait(1)   
                                                end
                                                if not HatchSummonTicket then 
                                                if DataSave["Choose the summon amount"] == "x10" then 
                                                    if Gemamount >= GemHatch["Hatch Count"] * 10 then 
                                                            Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","gems10")
                                                            task.wait(10)
                                                        else
                                                        if Gemamount >= GemHatch["Hatch Count"] then 
                                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","gems")
                                                        task.wait(1)   
                                                        end
                                                    end
                                                else
                                                    if Gemamount >= GemHatch["Hatch Count"] then 
                                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","gems")
                                                        task.wait(1)  
                                                        end
                                                    end
                                                end
                                            end
                                            else
                                                CanHatch = nil 
                                                HatchSummonTicket = nil 
                                                if DataSave["usesummon"] and ItemData["summon_ticket"] then BreakHatch=true StartHatch=true RollStandardBanner=true 
                                                    HatchSummonTicket = true 
                                                    checkluck = UseLuckPotion()
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","ticket")
                                                    task.wait(1)   
                                                end
                                            if not HatchSummonTicket then 
                                            if DataSave["Choose the summon amount"] == "x10" then 
                                                if Gemamount >= GemHatch["Hatch Count"] * 10 then BreakHatch=true StartHatch=true RollStandardBanner=true 
                                                    checkluck = UseLuckPotion()
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","gems10")
                                                    task.wait(10)
                                                else
                                                    if Gemamount >= GemHatch["Hatch Count"] then BreakHatch=true StartHatch = true RollStandardBanner=true 
                                                        checkluck = UseLuckPotion()
                                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","gems")
                                                        task.wait(1)   
                                                    end
                                                end
                                                else
                                                if Gemamount >= GemHatch["Hatch Count"] then BreakHatch=true StartHatch=true RollStandardBanner=true 
                                                    checkluck = UseLuckPotion()
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("Standard","gems")
                                                    task.wait(1)  
                                                end
                                            end
                                        end       
                                    end
                                end
                            end
                        end
                        if table.find(DataSave["Select Banner"],"Special") and not RollStandardBanner then  
                            local CenterUnit = RequestBanner.EventClover.rateup_units.One
                                if table.find(DataSave["UnitSave"],CenterUnit) then 
                                    if not CanHatch then 
                                        CanHatch = false
                                    end
                                        if Gemamount >= GemHatch["Mythic"] then 
                                            CanHatch = true
                                        end    
                                        if DataSave["RollPityGem"] then 
                                            if CanHatch then 
                                                StartHatch = true 
                                                BreakHatch=true 
                                                HatchSummonTicket = nil 
                                                RollCloverBanner = true 
                                                if DataSave["useluck"] and ItemData["LuckPotion"] then 
                                                    Service[3].endpoints.client_to_server.use_item:InvokeServer("LuckPotion")
                                                end
                                                if DataSave["usesummon"] and ItemData["summon_ticket"] then 
                                                    HatchSummonTicket = true 
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","ticket")
                                                    task.wait(1)   
                                                end
                                                if not HatchSummonTicket then 
                                                if DataSave["Choose the summon amount"] == "x10" then 
                                                    if Gemamount >= GemHatch["Hatch Count"] * 10 then 
                                                            Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","gems10")
                                                            task.wait(10)
                                                        else
                                                        if Gemamount >= GemHatch["Hatch Count"] then 
                                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","gems")
                                                        task.wait(1)   
                                                        end
                                                    end
                                                else
                                                    if Gemamount >= GemHatch["Hatch Count"] then 
                                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","gems")
                                                        task.wait(1)  
                                                        end
                                                    end
                                                end
                                            end
                                            else
                                                CanHatch = nil 
                                                HatchSummonTicket = nil 
                                                if DataSave["usesummon"] and ItemData["summon_ticket"] then BreakHatch=true StartHatch=true RollCloverBanner = true
                                                    HatchSummonTicket = true 
                                                    checkluck = UseLuckPotion()
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","ticket")
                                                    task.wait(1)   
                                                end
                                            if not HatchSummonTicket then 
                                            if DataSave["Choose the summon amount"] == "x10" then 
                                                if Gemamount >= GemHatch["Hatch Count"] * 10 then BreakHatch=true StartHatch=true RollCloverBanner = true
                                                    checkluck = UseLuckPotion()
                                                    Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","gems10")
                                                    task.wait(10)
                                                else
                                                    if Gemamount >= GemHatch["Hatch Count"] then BreakHatch=true StartHatch = true RollCloverBanner = true
                                                        checkluck = UseLuckPotion()
                                                        Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","gems")
                                                        task.wait(1)   
                                                    end
                                                end
                                                else
                                                if Gemamount >= GemHatch["Hatch Count"] then BreakHatch=true StartHatch=true RollCloverBanner = true
                                                checkluck = UseLuckPotion()
                                                Service[3]:WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer("EventClover","gems")
                                                task.wait(1)  
                                            end
                                        end       
                                    end
                                end
                            end
                        end     
                    end
                end)
            until getgenv()["Teleport"] == true 
        end)





        Loop012 = task.spawn(function()
            repeat task.wait(0.03)
                local  success , error = pcall(function()
                    if not DataSave["RollSniper"] then 
                        StartHatch = nil
                    end
                    if StartHatch then 
                        QuestAccept = Service[8].PlayerGui.HatchInfo.holder.info1
                        Service[21]:SendMouseButtonEvent(QuestAccept.AbsolutePosition.X, QuestAccept.AbsolutePosition.Y, 0, not Service[22]:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 1)
                        task.wait(.1)
                        Service[21]:SendMouseButtonEvent(QuestAccept.AbsolutePosition.X, QuestAccept.AbsolutePosition.Y, 0, not Service[22]:IsMouseButtonPressed(Enum.UserInputType.MouseButton1), game, 1)
                    end
                end)
            until getgenv()["Teleport"] == true     
        end)



    end
        
    Loop013 = task.spawn(function()
        repeat task.wait(0.03)
            local  success , error = pcall(function()
                if DataSave["Auto Sell Portal"] then 
                    for i,v in pairs(PortalData)do
                        if v.uuid and v.item_id and string.find(v.item_id,"portal") then 
                                if table.find(DataSave["Portal Sell"],"Alien Portal")
                                    and v.item_id == "portal_boros_g" then 
                                    Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid}) 
                                    elseif table.find(DataSave["Portal Sell"],"Demon Leader's Portal")
                                    and v.item_id == "portal_zeldris" then 
                                    Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid})    
                                    elseif table.find(DataSave["Portal Sell"],"Puppet Portal")
                                    and v.item_id == "portal_item__dressrosa" then
                                    Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid}) 
                                    elseif table.find(DataSave["Portal Sell"],"Eclipse Portal") 
                                    and v.item_id == "portal_item__eclipse" then 
                                    Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid}) 
                                    elseif table.find(DataSave["Portal Sell"],"Noble Portal") 
                                    and v.item_id == "portal_item__fate" then 
                                    Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid}) 
                                    elseif table.find(DataSave["Portal Sell"],"Port Agency Portal")  
                                    and v.item_id == "portal_item__bsd" then 
                                    if table.find(DataSave["Portal Tier Sell"],tostring(v._unique_item_data._unique_portal_data.portal_depth)) and
                                    not table.find(DataSave["Portal Ignore Difficulty Sell"],tostring(v._unique_item_data._unique_portal_data.challenge)) then 
                                    for x,y in pairs(DataWorld)do
                                    if y.levels then
                                       for x2,y2 in pairs(y.levels)do 
                                            if v._unique_item_data._unique_portal_data.level_id == y2.id then 
                                                if not table.find(DataSave["Portal Ignore World Sell"],y.name) then
                                                         Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid}) 
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end 
                                    elseif table.find(DataSave["Portal Sell"],"Summer Portal")  
                                    and v.item_id == "portal_summer" then 
                                    if DataSave["Portal Tier Sell"][tostring(v._unique_item_data._unique_portal_data.portal_depth)]  and
                                    not table.find(DataSave["Portal Ignore Difficulty Sell"],tostring(v._unique_item_data._unique_portal_data.challenge)) then 
                                        for x,y in pairs(DataWorld)do 
                                            if y.infinite then
                                                if v._unique_item_data._unique_portal_data.level_id == y.infinite.id then 
                                                    if not table.find(DataSave["Portal Ignore World Sell"],y.name) then
                                                    Service[3].endpoints.client_to_server.delete_unique_items:InvokeServer({[1] = v.uuid}) 
                                                end
                                            end
                                        end
                                    end   
                                end
                            end
                        end
                    end
                end
            end)
        until getgenv()["Teleport"] == true     
    end)

    Loop015 = task.spawn(function()
        repeat task.wait(5)
            local  success , error = pcall(function()
                if DataSave["Auto Claim Quest"] then 
                    for i,v in pairs(Service[8].PlayerGui.QuestsUI.Main.Main.Main.Content:GetDescendants())do
                        if v.Name == "ClaimQuest" and v.Visible == true then
                            args = {[1] = v.Parent.Name}
                            Service[3].endpoints.client_to_server.redeem_quest:InvokeServer(unpack(args))
                        end
                    end
                end
                if DataSave["Auto Claim Battle Pass"] then 
                    Service[3].endpoints.client_to_server.claim_battlepass_rewards:InvokeServer()
                end
            end)
        until getgenv()["Teleport"] == true     
    end)

    else

    
        do 
            GeneralWave = Service[8].PlayerGui.Waves.HealthBar.WaveNumber 
            GeneralWave:GetPropertyChangedSignal("Text"):Connect(function()
                Wave_Time = 0 
            end)
           --[[ MapData = {
                name = tostring(Service[8].PlayerGui.NewArea.holder.areaTitle.Text),
                mode = tostring(Service[8].PlayerGui.NewArea.holder.areaDescription.Text),
                difficulty = tostring(Service[8].PlayerGui.NewArea.holder.Difficulty.Text),
            }]]
           -- Label019.Update("Map information : "..MapData.name..". ".."[ "..MapData.mode.." , "..MapData.difficulty.." ]")
        end
        Game_Time = 0
        Wave_Time = 0
        LoopInGame001 = task.spawn(function() -- Update Game Time 
            repeat task.wait(1)
                local success, error = pcall(function()
                    if tonumber(GeneralWave.Text) >= 1 then 
                            Game_Time = Game_Time + 1
                            Wave_Time  = Wave_Time + 1
                            Options.label_2_marco:SetText("Time in game : "..tostring(Game_Time))
                        else
                        if RecordMarco or DataSave["Marco Play"] or DataSave["AI Play"] then 
                            if Service[1]["_waves_started"].Value == false then 
                                Service[3].endpoints.client_to_server.vote_start:InvokeServer()
                            end
                        end
                    end
                end) 
            until getgenv().Teleport == true 
        end)


       








        RecordTime = 0
        LoopInGame002 = task.spawn(function() -- Update Game Time 
            repeat task.wait(1)
                local success, error = pcall(function()
                    if RecordMarco and tonumber(GeneralWave.Text) >= 1 then 
                        RecordTime = RecordTime + 1 
                        Options.label_4_marco:SetText("Record Time : "..tostring(RecordTime))
                    end 
                end) 
            until getgenv().Teleport == true 
        end)
    
        for i,v in pairs(Service[8].PlayerGui.settings_new.Main.Main.Main.Content.Scroll:GetDescendants())do 
            if v.Name == "SettingName" and v:IsA("TextLabel") and v.Text == "Auto-Skip Waves" then 
                ToggleAutoSkipWave = v.Parent.Button
            end
        end
        local ArgsNamecall= {};
        local HookNamecall;HookNamecall = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
            local Method = getnamecallmethod()
            local Args = {...}
            if self.Name == "spawn_unit" and Method == "InvokeServer" and not checkcaller() and RecordMarco then 
                ArgsNamecall = Args;
            elseif self.Name == "sell_unit_ingame" and Method == "InvokeServer" and not checkcaller() and RecordMarco 
            and table.find(DataSave["Record Method"],"Sell") then
                spawn(function()
                    for i = 1,UnitValue do 
                        if Args[1] == getgenv()["IndexUnit"..tostring(i)] then 
                            Index = Index + 1
                            table.insert(Marco_Data,{
                                ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                                ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = i,
                                ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                                ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                                ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "17tSJpzx4vV2R3jD9Y25KJXDZYALFz", 
                            })
                            UpdateMarcoData()
                        end
                    end
                end)
            elseif self.Name == "use_active_attack" and Method == "InvokeServer" and not checkcaller() and RecordMarco 
            and table.find(DataSave["Record Method"],"Use Abilltie") then
                spawn(function()
                    for i = 1,UnitValue do 
                        if Args[1] == getgenv()["IndexUnit"..tostring(i)] then 
                            Index = Index + 1
                            table.insert(Marco_Data,{
                                ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                                ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = i,
                                ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                                ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                                ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uN4d22Iu4BBZEx2ZCmN90GShuttRaD", 
                            })
                            UpdateMarcoData()
                        end
                    end
                end)
            elseif self.Name == "vote_wave_skip" and Method == "InvokeServer" and not checkcaller() and RecordMarco 
            and table.find(DataSave["Record Method"],"Vote Skip Wave") then
                spawn(function()
                    if DataSave["Ignore Auto Skip Wave"] then 
                        if ToggleAutoSkipWave.TextLabel.Text == "Off" then 
                            Index = Index + 1
                            table.insert(Marco_Data,{
                                ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                                ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                                ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                                ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "xrCsk0BLjDuzMOh5opy1Q66cDzpOs0", 
                            })
                            UpdateMarcoData()
                        end
                    else
                        Index = Index + 1
                            table.insert(Marco_Data,{
                            ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                            ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                            ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                            ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "xrCsk0BLjDuzMOh5opy1Q66cDzpOs0", 
                            })
                        UpdateMarcoData()
                    end
                end)
            end
            return HookNamecall(self,...);
        end))
    
    
    

    
        UnitValue = 0
        IndexPlay = 1 
        IndexPlay2 = 0

        -- FAP
        UnitValueFAP = 0 

        local UnitAdd; UnitAdd = workspace._UNITS.ChildAdded:Connect(function(v)
            v:WaitForChild("_stats")
            v:WaitForChild("_stats"):WaitForChild("id")
            v:WaitForChild("_stats"):WaitForChild("uuid")
            v:WaitForChild("_stats"):WaitForChild("player")
            if tostring(v["_stats"]["player"].Value) == Service[8].Name 
            and table.find(AllUnitInSlot,tostring(v["_stats"]["id"].Value)) then
                -- AI Play
                if DataSave["AI Play"] then 
                    UnitValueFAP = UnitValueFAP + 1
                    for x,y in pairs(DATAFULLAUTOPLAY)do 
                        if y["Unit"] == tostring(v["_stats"]["id"].Value) then 
                            FULLAUTOPLAYSPAWNCOUT[x] = FULLAUTOPLAYSPAWNCOUT[x] + 1
                        end
                    end
                    getgenv()["IndexUnitFAP"..tostring(UnitValueFAP)] = v
                if tostring(v["_stats"]["id"].Value) == "speedwagon" then
                    number_of_speedwagon_FAP = number_of_speedwagon_FAP + 1
                else
                    if tostring(v["_stats"]["id"].Value) ~= "bulma" then 
                        if DataBaseUnit[tostring(v["_stats"]["id"].Value)]["Type"] == "Hill" then 
                            number_of_hill_FAP = number_of_hill_FAP + 1
                            else
                            number_of_ground_FAP = number_of_ground_FAP + 1
                        end
                    end 
                end
                    --[[if HillPlacement_FAP then 
                        print("HILL NEXT") number_of_hill_FAP = number_of_hill_FAP + 1
                        elseif GroundPlacement_FAP then 
                        print("G NEXT") number_of_ground_FAP = number_of_ground_FAP + 1
                        elseif SpeedWagonPlacement_FAP then 
                        number_of_speedwagon_FAP = number_of_speedwagon_FAP + 1
                    end]]
                end
                if RecordMarco or DataSave["Marco Play"] then 
                    UnitValue = UnitValue + 1 
                    getgenv()["IndexUnit"..tostring(UnitValue)] = v
                    if DataSave["Marco Play"] then 
                        IndexPlay = IndexPlay + 1 
                        IndexPlay2 = IndexPlay2 + 1 
                        if  HillPlacement then 
                        number_of_hill = number_of_hill + 1
                        elseif GroundPlacement then 
                        number_of_ground = number_of_ground + 1
                        elseif SpeedWagonPlacement then 
                        number_of_speedwagon = number_of_speedwagon  + 1
                        end
                    end
                end
                
                if RecordMarco and table.find(DataSave["Record Method"],"Place")  then 
                    Index = Index + 1
                    table.insert(Marco_Data,{
                        ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                        ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = UnitValue,
                        ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM",
                        ["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"] = HasString(tostring(v["_stats"]["id"].Value)),
                        ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                        ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                        ["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"] = tostring(ArgsNamecall[2]),
                    })
                   
                    if not table.find(UnitInMarco,HasString(tostring(v["_stats"]["id"].Value))) then 
                        table.insert(UnitInMarco,HasString(tostring(v["_stats"]["id"].Value)))
                    end
                    UpdateMarcoData() 
                end
                task.spawn(function()
                    local var = UnitValue
                        v._stats.upgrade:GetPropertyChangedSignal("Value"):Connect(function()
                            if RecordMarco and table.find(DataSave["Record Method"],"Upgrade") then 
                                -- print("Upgrade")
                                Index = Index + 1
                                table.insert(Marco_Data,{
                                ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                                ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = var,
                                ["0CJtTUUGzYYxiB3QWfqvZwitgHD9N6"] = v._stats.upgrade.Value,
                                ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                                ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                                ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "uVofgY51jLOoXb1TAzc0K2KWFV8OpB", 
                            })
                            UpdateMarcoData()
                            elseif DataSave["Marco Play"] then   
                            IndexPlay = IndexPlay + 1 
                            IndexPlay2 = IndexPlay2 + 1
                        end
                    end)
                    v._stats.priority:GetPropertyChangedSignal("Value"):Connect(function()
                        if RecordMarco and table.find(DataSave["Record Method"],"Target")  then 
                            Index = Index + 1
                            table.insert(Marco_Data,{
                                ["1rcASPJVfQXdkpkeUjGbWResNEyArY"] = Index,
                                ["rZ6j9ayysH00P2rhDBQMZapfz6dP04"] = var,
                                ["I57udUlJKxWbinV7gonvJDhhzg9iV3"] = tonumber(GeneralWave.Text),
                                ["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] = Wave_Time,
                                ["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] = "y08kgBLPyqtzqxsqw9jfrjX0lD6PVq", 
                            })
                            UpdateMarcoData()
                        end 
                    end)
                end)
                
            end
        end)
    
    
    
        PlacementDataBase = {
            ["Planet Namak"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-2951.25537109375, 91.80620574951172, -712.4168701171875),
                    [2] = CFrame.new(-2954.74365234375, 91.80620574951172, -712.787841796875),
                    [3] = CFrame.new(-2958.206787109375, 91.80620574951172, -712.76708984375),
                    [4] = CFrame.new(-2955.6787109375, 91.80620574951172, -716.2791748046875),
                    [5] = CFrame.new(-2958.757568359375, 91.80620574951172, -716.087646484375),
                    [6] = CFrame.new(-2956.089599609375, 91.80620574951172, -719.5870971679688),
                    [7] = CFrame.new(-2959.298828125, 91.80620574951172, -719.5308227539062),
                    [8] = CFrame.new(-2956.123046875, 91.80620574951172, -722.9326782226562),
                    [9] = CFrame.new(-2959.430419921875, 91.80620574951172, -723.0917358398438),
                    [10] = CFrame.new(-2955.653076171875, 91.80620574951172, -726.3513793945312),
                    [11] = CFrame.new(-2959.204345703125, 91.80620574951172, -726.545166015625),
                    [12] = CFrame.new(-2955.591552734375, 91.80620574951172, -729.6356201171875),
                    [13] = CFrame.new(-2958.947998046875, 91.80620574951172, -729.664306640625),
                    [14] = CFrame.new(-2952.016845703125, 91.80620574951172, -729.3804321289062),
                    [15] = CFrame.new(-2965.8974609375, 91.80620574951172, -719.5001220703125),
                    [16] = CFrame.new(-2965.69482421875, 91.80620574951172, -722.9327392578125),
                },
                ["Hill"] = {
                    [1] = CFrame.new(-2950.525634765625, 94.41859436035156, -715.5382690429688),
                    [2] = CFrame.new(-2947.236083984375, 94.41859436035156, -716.2960205078125),
                    [3] = CFrame.new(-2952.409912109375, 94.41859436035156, -718.4407958984375),
                    [4] = CFrame.new(-2948.851318359375, 94.41859436035156, -719.3651123046875),
                    [5] = CFrame.new(-2953.248046875, 94.41859436035156, -721.9157104492188),
                    [6] = CFrame.new(-2949.518798828125, 94.41859436035156, -722.8270874023438),
                    [7] = CFrame.new(-2952.600830078125, 94.41859436035156, -725.4758911132812),
                    [8] = CFrame.new(-2948.953857421875, 94.41859436035156, -726.365966796875),
                    [9] = CFrame.new(-2945.540283203125, 94.41859436035156, -720.4192504882812),
                    [10] = CFrame.new(-2946.258544921875, 94.41859436035156, -723.5985107421875),
                    [11] = CFrame.new(-2943.070556640625, 94.41859436035156, -722.7094116210938),
                    [12] = CFrame.new(-2945.615234375, 94.41859436035156, -727.0684204101562),
                    [13] = CFrame.new(-2964.96337890625, 94.53215789794922, -702.532470703125),
                    [14] = CFrame.new(-2961.851806640625, 94.53215789794922, -700.9096069335938),
                    [15] = CFrame.new(-2959.290771484375, 94.53215789794922, -698.4520874023438),
                    [16] = CFrame.new(-2964.93505859375, 94.53215789794922, -699.0717163085938),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-2943.8779296875, 91.80620574951172, -735.5699462890625),
                        [2] = CFrame.new(-2948.26806640625, 91.80620574951172, -735.649658203125),
                        [3] = CFrame.new(-2952.937255859375, 91.80620574951172, -735.5110473632812), 
                    },
                    ["Bulma"] = CFrame.new(-2960.53759765625, 91.80620574951172, -735.6234741210938),
                },
            },
    
            ["Shiganshinu District"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-3007.49267578125, 33.74179458618164, -682.0047607421875),
                    [2] = CFrame.new(-3004.653564453125, 33.74179458618164, -685.557373046875),
                    [3] = CFrame.new(-3003.653564453125, 33.74179458618164, -682.5685424804688),
                    [4] = CFrame.new(-3009.483154296875, 33.74179458618164, -685.7584838867188) ,
                    [5] = CFrame.new(-3010.255859375, 33.741798400878906, -680.457275390625) ,
                    [6] = CFrame.new(-3007.30615234375, 33.741798400878906, -678.8668823242188),
                    [7] = CFrame.new(-3010.0126953125, 33.741798400878906, -677.343017578125) ,
                    [8] =  CFrame.new(-3012.26904296875, 33.741798400878906, -684.2471923828125),
                    [9] =  CFrame.new(-3004.201171875, 33.74179458618164, -688.5181884765625),
                    [10] = CFrame.new(-3000.69091796875, 33.74179458618164, -683.29638671875),
                    [11] = CFrame.new(-3001.351806640625, 33.74179458618164, -686.3775634765625),
                    [12] = CFrame.new(-3001.497802734375, 33.74179458618164, -689.5819091796875),
                    [13] = CFrame.new(-2997.63916015625, 33.74179458618164, -712.4215087890625),
                    [14] = CFrame.new(-2997.735107421875, 33.74179458618164, -717.597412109375),
                    [15] = CFrame.new(-2994.37890625, 33.74179458618164, -713.1795654296875),
                    [16] = CFrame.new(-2993.261474609375, 33.74179458618164, -717.7232055664062) ,
                },
                ["Hill"] = {
                    [1] = CFrame.new(-3023.810302734375, 38.41551971435547, -677.7051391601562),
                    [2] = CFrame.new(-3026.656494140625, 38.41552734375, -677.5509643554688),
                    [3] = CFrame.new(-3029.5068359375, 38.41552734375, -677.7054443359375),
                    [4] = CFrame.new(-3024.0283203125, 38.41551971435547, -675.2249145507812) ,
                    [5] = CFrame.new(-3026.872314453125, 38.41552734375, -675.1946411132812) ,
                    [6] = CFrame.new(-3029.898193359375, 38.41552734375, -675.21142578125) ,
                    [7] = CFrame.new(-3020.55859375, 38.415435791015625, -687.9046020507812),
                    [8] = CFrame.new(-3017.72900390625, 38.415435791015625, -687.820556640625),
                    [9] = CFrame.new(-3014.92529296875, 38.415435791015625, -687.793212890625),
                    [10] = CFrame.new(-3020.234619140625, 38.415435791015625, -690.2318725585938) ,
                    [11] = CFrame.new(-3017.38916015625, 38.415435791015625, -690.1452026367188) ,
                    [12] = CFrame.new(-3014.448974609375, 38.415435791015625, -690.2171630859375) ,
                    [13] = CFrame.new(-2992.037841796875, 39.00621795654297, -723.710693359375),
                    [14] = CFrame.new(-2989.66259765625, 39.00621795654297, -722.74169921875),
                    [15] = CFrame.new(-2991.12841796875, 39.00621795654297, -726.298583984375),
                    [16] = CFrame.new(-2988.4541015625, 39.00621795654297, -725.482177734375) ,
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-3011.261474609375, 34.13397216796875, -723.7752075195312),
                        [2] = CFrame.new(-3015.885498046875, 34.13397216796875, -723.8777465820312),
                        [3] = CFrame.new(-3020.396728515625, 34.13397216796875, -724.2199096679688), 
                    },
                    ["Bulma"] = CFrame.new(-3015.78955078125, 34.13397216796875, -731.0056762695312),
                },
            },

            ["Snowy Town"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-2935.20068359375, 34.359901428222656, -154.4563446044922),
                    [2] = CFrame.new(-2938.400146484375, 34.359901428222656, -154.33004760742188),
                    [3] = CFrame.new(-2935.162841796875, 34.359901428222656, -151.20068359375),
                    [4] = CFrame.new(-2938.22607421875, 34.359901428222656, -151.11048889160156) ,
                    [5] = CFrame.new(-2938.806640625, 34.359901428222656, -147.4098663330078) ,
                    [6] = CFrame.new(-2941.821533203125, 34.359901428222656, -154.3201141357422),
                    [7] = CFrame.new(-2941.599365234375, 34.359901428222656, -150.79981994628906)  ,
                    [8] =  CFrame.new(-2945.201416015625, 34.359901428222656, -154.29415893554688),
                    [9] =  CFrame.new(-2935.823486328125, 34.359901428222656, -160.4269561767578),
                    [10] = CFrame.new(-2939.21484375, 34.359901428222656, -160.30865478515625),    
                    [11] = CFrame.new(-2935.518310546875, 34.359901428222656, -163.9524383544922),
                    [12] = CFrame.new(-2939.210693359375, 34.359901428222656, -163.6345672607422),
                    [13] = CFrame.new(-2942.768310546875, 34.359901428222656, -160.70001220703125),
                    [14] = CFrame.new(-2946.306640625, 34.359901428222656, -160.56727600097656),
                    [15] = CFrame.new(-2944.416748046875, 34.359901428222656, -164.2611541748047),
                    [16] = CFrame.new(-2947.80126953125, 34.359901428222656, -163.77418518066406) ,
                },
                ["Hill"] = {
                    [1] = CFrame.new(-2930.63818359375, 37.24901580810547, -148.52435302734375),
                    [2] = CFrame.new(-2933.49658203125, 37.24901580810547, -146.48834228515625),
                    [3] = CFrame.new(-2927.257568359375, 37.24901580810547, -146.96475219726562),
                    [4] = CFrame.new(-2930.09765625, 37.24901580810547, -145.0957794189453) ,
                    [5] = CFrame.new(-2924.196533203125, 37.249019622802734, -145.24990844726562),
                    [6] = CFrame.new(-2928.873779296875, 37.249019622802734, -141.78623962402344) ,
                    [7] = CFrame.new(-2932.21142578125, 37.249019622802734, -142.45619201660156),
                    [8] = CFrame.new(-2935.714599609375, 37.249019622802734, -143.2528839111328),
                    [9] = CFrame.new(-2937.058349609375, 37.2490234375, -140.4185333251953),
                    [10] = CFrame.new(-2933.730224609375, 37.2490234375, -139.36729431152344) ,
                    [11] = CFrame.new(-2936.060302734375, 37.2490234375, -137.051025390625) ,
                    [12] = CFrame.new(-2933.01123046875, 37.2490234375, -135.48306274414062) ,
                    [13] = CFrame.new(-2930.075439453125, 37.249019622802734, -139.14404296875),
                    [14] = CFrame.new(-2929.539794921875, 37.249019622802734, -135.41151428222656),
                    [15] = CFrame.new(-2926.654541015625, 37.249019622802734, -136.85922241210938),
                    [16] = CFrame.new(-2927.01708984375, 37.249019622802734, -140.03147888183594) ,
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-2874.58740234375, 34.34696960449219, -84.12635040283203) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-2879.458251953125, 34.34696960449219, -84.04389190673828) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-2883.9521484375, 34.34696960449219, -84.14746856689453) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-2879.91748046875, 34.34696960449219, -91.85302734375) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["Hidden Sand Village"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-872.8365478515625, 25.28097915649414, 283.1537170410156),
                    [2] = CFrame.new(-869.5232543945312, 25.28097915649414, 282.6662292480469),
                    [3] = CFrame.new(-871.6427001953125, 25.28097915649414, 287.8810119628906),
                    [4] = CFrame.new(-868.5592651367188, 25.28097915649414, 287.5003662109375),
                    [5] = CFrame.new(-865.1693115234375, 25.280981063842773, 286.59478759765625),
                    [6] = CFrame.new(-865.992919921875, 25.280981063842773, 281.9192199707031),
                    [7] = CFrame.new(-876.4520874023438, 25.28097915649414, 282.5306701660156),
                    [8] = CFrame.new(-875.14599609375, 25.28097915649414, 288.5728454589844),
                    [9] = CFrame.new(-879.3048706054688, 25.28097915649414, 284.2894287109375),
                    [10] = CFrame.new(-878.4180908203125, 25.28097915649414, 289.4232177734375),    
                    [11] = CFrame.new(-882.2984619140625, 25.28097915649414, 284.9265441894531),
                    [12] = CFrame.new(-881.6533813476562, 25.28097915649414, 289.7820739746094),
                    [13] = CFrame.new(-885.5800170898438, 25.28097915649414, 285.4530029296875),
                    [14] = CFrame.new(-884.6725463867188, 25.28097915649414, 290.5779724121094),
                    [15] = CFrame.new(-889.0908813476562, 25.28097915649414, 284.1244201660156),
                    [16] = CFrame.new(-888.744384765625, 25.28097915649414, 290.1309814453125),
                },
                ["Hill"] = {
                    [1] = CFrame.new(-872.89404296875, 29.568687438964844, 279.1369323730469),
                    [2] = CFrame.new(-875.9659423828125, 29.568687438964844, 278.14019775390625),
                    [3] = CFrame.new(-869.529052734375, 29.568687438964844, 278.5221252441406),
                    [4] = CFrame.new(-867.9847412109375, 29.568687438964844, 275.69610595703125),
                    [5] = CFrame.new(-877.0490112304688, 29.568687438964844, 274.9255676269531),
                    [6] = CFrame.new(-873.6596069335938, 29.568687438964844, 275.85736083984375),
                    [7] = CFrame.new(-871.0144653320312, 29.568687438964844, 275.7447509765625),
                    [8] = CFrame.new(-876.2550659179688, 29.568687438964844, 271.6698913574219),
                    [9] = CFrame.new(-873.7411499023438, 29.568687438964844, 272.6541748046875),
                    [10] = CFrame.new(-880.3231201171875, 31.699045181274414, 295.1121520996094),
                    [11] = CFrame.new(-883.3190307617188, 31.610668182373047, 296.0523376464844),
                    [12] = CFrame.new(-879.4131469726562, 31.683271408081055, 298.12969970703125),
                    [13] = CFrame.new(-882.3999633789062, 31.606876373291016, 298.6755065917969),
                    [14] = CFrame.new(-907.751708984375, 33.280006408691406, 292.9464416503906),
                    [15] = CFrame.new(-910.170654296875, 33.250091552734375, 295.2270202636719),
                    [16] = CFrame.new(-910.2100830078125, 33.17449188232422, 290.64398193359375),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-843.6260986328125, 25.280981063842773, 227.30775451660156),
                        [2] = CFrame.new(-848.1405639648438, 25.280981063842773, 227.62806701660156),
                        [3] = CFrame.new(-852.884033203125, 25.280981063842773, 227.68096923828125), 
                    },
                    ["Bulma"] = CFrame.new(-848.5865478515625, 25.280981063842773, 221.07289123535156) * CFrame.Angles(0, -0, -0),
                },
            },


            ["Marine's Ford"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-2598.3330078125, 25.210872650146484, -68.29353332519531),
                    [2] = CFrame.new(-2596.1875, 25.210872650146484, -65.70175170898438),
                    [3] = CFrame.new(-2596.187255859375, 25.210872650146484, -70.68196105957031),
                    [4] = CFrame.new(-2593.93017578125, 25.210872650146484, -68.1718521118164),
                    [5] = CFrame.new(-2602.525634765625, 25.210872650146484, -72.38277435302734),
                    [6] =  CFrame.new(-2600.09326171875, 25.210872650146484, -75.11060333251953),
                    [7] = CFrame.new(-2604.938720703125, 25.210872650146484, -74.62010955810547),
                    [8] = CFrame.new(-2602.484130859375, 25.210872650146484, -77.14451599121094),
                    [9] = CFrame.new(-2591.137939453125, 25.210872650146484, -70.10708618164062),
                    [10] = CFrame.new(-2593.42138671875, 25.210872650146484, -72.76606750488281),    
                    [11] = CFrame.new(-2587.978515625, 25.210872650146484, -71.60690307617188),
                    [12] = CFrame.new(-2590.051025390625, 25.210872650146484, -74.1766128540039),
                    [13] = CFrame.new(-2596.37353515625, 25.210872650146484, -77.1733627319336),
                    [14] = CFrame.new(-2593.406494140625, 25.210872650146484, -78.89070892333984),
                    [15] = CFrame.new(-2597.867919921875, 25.210872650146484, -80.11474609375),
                    [16] = CFrame.new(-2594.989501953125, 25.210872650146484, -81.75716400146484),
                },
                ["Hill"] = {
                    [1] = CFrame.new(-2581.24462890625, 28.358015060424805, -68.48258972167969),
                    [2] = CFrame.new(-2584.49462890625, 28.358015060424805, -67.98301696777344),
                    [3] = CFrame.new(-2579.365234375, 28.358078002929688, -65.45853424072266),
                    [4] = CFrame.new(-2582.44970703125, 28.358015060424805, -64.59981536865234),
                    [5] = CFrame.new(-2587.62109375, 28.358015060424805, -67.68254852294922),
                    [6] = CFrame.new(-2585.93994140625, 28.358015060424805, -64.35469055175781),
                    [7] = CFrame.new(-2591.068115234375, 28.35811996459961, -67.47472381591797),
                    [8] = CFrame.new(-2589.686767578125, 28.358015060424805, -64.19102478027344),
                    [9] = CFrame.new(-2577.492919921875, 28.3580379486084, -62.516109466552734),
                    [10] = CFrame.new(-2580.48388671875, 28.358015060424805, -60.77849578857422),
                    [11] = CFrame.new(-2576.017333984375, 28.35800552368164, -59.42963790893555),
                    [12] = CFrame.new(-2579.0478515625, 28.358015060424805, -57.894874572753906),
                    [13] = CFrame.new(-2597.637451171875, 28.358051300048828, -61.438720703125),
                    [14] = CFrame.new(-2594.51708984375, 28.358020782470703, -59.49938201904297),
                    [15] = CFrame.new(-2595.962646484375, 28.35799217224121, -63.35136032104492),
                    [16] = CFrame.new(-2592.658935546875, 28.358020782470703, -61.57219314575195),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-2623.956787109375, 25.21087074279785, -73.5543212890625),
                        [2] = CFrame.new(-2624.002197265625, 25.21087074279785, -78.12680053710938),
                        [3] = CFrame.new(-2624.128173828125, 25.210872650146484, -82.8814926147461), 
                    },
                    ["Bulma"] = CFrame.new(-2630.866455078125, 25.210872650146484, -78.13987731933594) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Ghoul City"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-2962.144775390625, 58.585174560546875, -96.49964141845703),
                    [2] = CFrame.new(-2962.24462890625, 58.585174560546875, -93.31185913085938),
                    [3] = CFrame.new(-2958.952392578125, 58.585174560546875, -96.71582794189453),
                    [4] = CFrame.new(-2959.003173828125, 58.585174560546875, -93.41954803466797),
                    [5] = CFrame.new(-2955.888916015625, 58.585174560546875, -96.75243377685547),
                    [6] = CFrame.new(-2955.8876953125, 58.585174560546875, -93.3013916015625),
                    [7] = CFrame.new(-2952.4541015625, 58.585174560546875, -96.62659454345703),
                    [8] = CFrame.new(-2952.586181640625, 58.585174560546875, -93.51889038085938),
                    [9] = CFrame.new(-2946.99658203125, 58.585174560546875, -100.08321380615234),
                    [10] = CFrame.new(-2946.886962890625, 58.585174560546875, -103.65467834472656) ,    
                    [11] = CFrame.new(-2943.58984375, 58.585174560546875, -103.14990997314453),
                    [12] = CFrame.new(-2943.853271484375, 58.585174560546875, -99.78424072265625),
                    [13] = CFrame.new(-2947.019287109375, 58.585174560546875, -106.9794921875),
                    [14] = CFrame.new(-2943.38525390625, 58.585174560546875, -106.20602416992188),
                    [15] = CFrame.new(-2947.32568359375, 58.585174560546875, -110.30007934570312),
                    [16] = CFrame.new(-2944.2578125, 58.585174560546875, -109.04544067382812),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-2961.822265625, 62.06712341308594, -99.95197296142578),
                    [2] = CFrame.new(-2958.394287109375, 62.06712341308594, -99.66858673095703),
                    [3] = CFrame.new(-2961.746337890625, 62.06713104248047, -103.02769470214844),
                    [4] = CFrame.new(-2958.264892578125, 62.06713104248047, -102.89854431152344),
                    [5] = CFrame.new(-2954.24609375, 62.0671272277832, -99.7919921875),
                    [6] = CFrame.new(-2953.9462890625, 62.0671272277832, -103.18136596679688),
                    [7] = CFrame.new(-2950.838623046875, 62.0671272277832, -99.81454467773438),
                    [8] = CFrame.new(-2950.586669921875, 62.0671272277832, -102.82498931884766),
                    [9] = CFrame.new(-2961.793212890625, 62.06712341308594, -107.62770080566406),
                    [10] = CFrame.new(-2958.255126953125, 62.06712341308594, -107.47728729248047),
                    [11] = CFrame.new(-2961.626953125, 62.06713104248047, -110.6826171875),
                    [12] = CFrame.new(-2958.324951171875, 62.06713104248047, -110.6209487915039),
                    [13] = CFrame.new(-2954.301025390625, 62.0671272277832, -107.33751678466797),
                    [14] = CFrame.new(-2954.37890625, 62.0671272277832, -110.69145202636719),
                    [15] = CFrame.new(-2950.758056640625, 62.0671272277832, -107.51006317138672),
                    [16] = CFrame.new(-2950.957275390625, 62.0671272277832, -110.78700256347656),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-2884.706298828125, 58.58496856689453, -147.194091796875) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-2880.392822265625, 58.58496856689453, -147.23060607910156) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-2875.918212890625, 58.58496856689453, -147.1063232421875) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-2880.059326171875, 58.584964752197266, -154.50714111328125) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["Hollow World"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-166.61273193359375, 132.6639862060547, -711.0047607421875),
                    [2] = CFrame.new(-163.6317138671875, 132.6639862060547, -709.6357421875),
                    [3] = CFrame.new(-167.8705596923828, 132.6639862060547, -707.582763671875),
                    [4] = CFrame.new(-164.6319580078125, 132.6639862060547, -706.2529907226562),
                    [5] = CFrame.new(-169.71707153320312, 132.66400146484375, -704.6893920898438),
                    [6] = CFrame.new(-166.30801391601562, 132.66400146484375, -703.3571166992188),
                    [7] = CFrame.new(-171.66845703125, 132.66400146484375, -701.8573608398438),
                    [8] = CFrame.new(-167.97962951660156, 132.66400146484375, -700.4330444335938),
                    [9] = CFrame.new(-170.69985961914062, 132.6639862060547, -718.68408203125),
                    [10] = CFrame.new(-167.357666015625, 132.6639862060547, -716.9879760742188),    
                    [11] = CFrame.new(-168.810791015625, 132.6639862060547, -721.4921875),
                    [12] = CFrame.new(-165.67178344726562, 132.6639862060547, -719.714599609375),
                    [13] = CFrame.new(-157.89183044433594, 132.66400146484375, -713.9930419921875),
                    [14] = CFrame.new(-158.45716857910156, 132.66400146484375, -717.8740234375),
                    [15] = CFrame.new(-155.3447723388672, 132.66400146484375, -717.0526123046875),
                    [16] = CFrame.new(-154.280029296875, 132.66400146484375, -713.611328125),
                },
                ["Hill"] = {
                    [1] = CFrame.new(-170.34246826171875, 136.34066772460938, -713.2140502929688),
                    [2] = CFrame.new(-170.8473358154297, 136.34066772460938, -710.1826171875),
                    [3] = CFrame.new(-172.3325958251953, 136.34066772460938, -707.2556762695312),
                    [4] = CFrame.new(-174.59066772460938, 136.34066772460938, -704.5899047851562),
                    [5] = CFrame.new(-173.01388549804688, 136.34066772460938, -715.0812377929688),
                    [6] = CFrame.new(-173.6284637451172, 136.34066772460938, -712.0936279296875),
                    [7] = CFrame.new(-174.9139404296875, 136.34066772460938, -709.2012939453125),
                    [8] = CFrame.new(-176.93653869628906, 136.34066772460938, -706.5144653320312),
                    [9] = CFrame.new(-175.8594970703125, 136.34066772460938, -717.0738525390625),
                    [10] = CFrame.new(-176.24488830566406, 136.34066772460938, -713.8693237304688),
                    [11] = CFrame.new(-177.45469665527344, 136.34066772460938, -710.7757568359375),
                    [12] = CFrame.new(-179.05641174316406, 136.34066772460938, -715.8931274414062),
                    [13] = CFrame.new(-178.0110321044922, 136.34066772460938, -702.4205322265625),
                    [14] = CFrame.new(-180.5865478515625, 136.34066772460938, -705.0433959960938),
                    [15] = CFrame.new(-183.99765014648438, 136.34066772460938, -706.3740844726562),
                    [16] = CFrame.new(-183.41567993164062, 136.34066772460938, -703.1052856445312),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-144.67825317382812, 132.6639862060547, -716.2582397460938) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [2] = CFrame.new(-144.7996063232422, 132.6639862060547, -720.7757568359375) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [3] = CFrame.new(-144.77145385742188, 132.6639862060547, -725.4560546875) * CFrame.Angles(-0, -1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-138.1805877685547, 132.66400146484375, -721.093994140625) * CFrame.Angles(-0, -1.5707963705062866, 0),
                },
            },
            

            ["Karakora Town"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-201.994384765625, 36.04443359375, 511.7613220214844),
                    [2] = CFrame.new(-202.18460083007812, 36.04443359375, 507.9801025390625),
                    [3] = CFrame.new(-201.94448852539062, 36.04443359375, 504.41534423828125),
                    [4] = CFrame.new(-201.74737548828125, 36.04443359375, 500.9617919921875),
                    [5] = CFrame.new(-202.16848754882812, 36.04443359375, 497.87835693359375),
                    [6] = CFrame.new(-206.98635864257812, 36.04443359375, 497.4163818359375),
                    [7] = CFrame.new(-207.2801513671875, 36.04443359375, 500.5888366699219),
                    [8] = CFrame.new(-207.4822998046875, 36.04443359375, 503.91925048828125),
                    [9] = CFrame.new(-207.47259521484375, 36.044429779052734, 507.04620361328125),
                    [10] = CFrame.new(-207.23306274414062, 36.044429779052734, 510.2533874511719),    
                    [11] = CFrame.new(-207.13876342773438, 36.044429779052734, 513.4600219726562),
                    [12] = CFrame.new(-200.50050354003906, 36.04443359375, 514.7053833007812),
                    [13] = CFrame.new(-205.72943115234375, 36.044429779052734, 516.4412231445312),
                    [14] = CFrame.new(-209.26187133789062, 36.044429779052734, 498.9712829589844) ,
                    [15] = CFrame.new(-209.32553100585938, 36.044429779052734, 502.3665466308594),
                    [16] = CFrame.new(-209.19619750976562, 36.044429779052734, 505.51190185546875),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-191.61134338378906, 40.49578094482422, 507.9073791503906),
                    [2] = CFrame.new(-191.77932739257812, 40.49578094482422, 504.7324523925781),
                    [3] = CFrame.new(-188.33482360839844, 40.49578094482422, 509.08538818359375),
                    [4] = CFrame.new(-192.02008056640625, 40.49578094482422, 501.2657470703125),
                    [5] = CFrame.new(-188.54441833496094, 40.49578094482422, 505.6259765625),
                    [6] = CFrame.new(-188.7322235107422, 40.49578094482422, 502.08160400390625),
                    [7] = CFrame.new(-190.868896484375, 40.49578094482422, 498.1007080078125),
                    [8] = CFrame.new(-187.78536987304688, 40.49578094482422, 498.9602966308594),
                    [9] = CFrame.new(-185.05389404296875, 40.49578094482422, 509.0128173828125),
                    [10] = CFrame.new(-185.39024353027344, 40.49578094482422, 505.7655944824219),
                    [11] = CFrame.new(-185.646728515625, 40.49578094482422, 502.4431457519531),
                    [12] = CFrame.new(-184.90725708007812, 40.49578094482422, 499.2392883300781),
                    [13] = CFrame.new(-182.1248016357422, 40.49577713012695, 507.92279052734375),
                    [14] = CFrame.new(-182.20631408691406, 40.49577713012695, 504.5456848144531),
                    [15] = CFrame.new(-182.27780151367188, 40.49577713012695, 501.4147033691406),
                    [16] = CFrame.new(-181.7425537109375, 40.49577713012695, 498.0387878417969),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-213.33856201171875, 36.04443359375, 490.019775390625) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [2] = CFrame.new(-213.26434326171875, 36.04443359375, 485.631103515625) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [3] = CFrame.new(-213.20925903320312, 36.04443359375, 480.9391174316406) * CFrame.Angles(-0, -1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-221.91311645507812, 36.044429779052734, 485.7837219238281) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },


            ["Ant Kingdom"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-121.50485229492188, 23.012636184692383, 3031.7421875),
                    [2] = CFrame.new(-118.60223388671875, 23.08652687072754, 3033.485595703125),
                    [3] = CFrame.new(-115.72386932373047, 23.08652687072754, 3035.455322265625),
                    [4] = CFrame.new(-113.70790100097656, 23.08652687072754, 3038.321044921875),
                    [5] = CFrame.new(-119.74664306640625, 23.012636184692383, 3029.403076171875),
                    [6] = CFrame.new(-116.85429382324219, 23.012636184692383, 3031.037353515625),
                    [7] = CFrame.new(-114.08320617675781, 23.012636184692383, 3032.99951171875),
                    [8] = CFrame.new(-111.85670471191406, 23.012636184692383, 3035.570068359375),
                    [9] = CFrame.new(-110.51747131347656, 23.012638092041016, 3032.5263671875),
                    [10] = CFrame.new(-109.71156311035156, 23.012638092041016, 3038.315673828125),    
                    [11] = CFrame.new(-108.82125854492188, 23.012638092041016, 3035.1630859375),
                    [12] = CFrame.new(-111.84832000732422, 23.08652687072754, 3041.021484375),
                    [13] = CFrame.new(-116.36309814453125, 23.012638092041016, 3024.405029296875),
                    [14] = CFrame.new(-113.32601928710938, 23.012636184692383, 3026.38525390625),
                    [15] = CFrame.new(-114.38345336914062, 23.012638092041016, 3021.8212890625),
                    [16] = CFrame.new(-111.51408386230469, 23.012638092041016, 3023.77392578125),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-124.71884155273438, 26.226430892944336, 3035.44189453125),
                    [2] = CFrame.new(-121.9376220703125, 26.226430892944336, 3036.44482421875),
                    [3] = CFrame.new(-119.27747344970703, 26.226430892944336, 3037.90185546875),
                    [4] = CFrame.new(-117.04389953613281, 26.226430892944336, 3040.674072265625),
                    [5] = CFrame.new(-127.33665466308594, 26.226430892944336, 3037.39697265625),
                    [6] = CFrame.new(-124.23600006103516, 26.226430892944336, 3038.880615234375),
                    [7] = CFrame.new(-121.18905639648438, 26.226430892944336, 3040.53955078125),
                    [8] = CFrame.new(-119.02626037597656, 26.226430892944336, 3043.2197265625),
                    [9] = CFrame.new(-128.9696807861328, 26.226430892944336, 3040.02294921875),
                    [10] = CFrame.new(-126.02021789550781, 26.226430892944336, 3041.64599609375),
                    [11] = CFrame.new(-123.01129150390625, 26.226430892944336, 3043.080078125),
                    [12] = CFrame.new(-120.91787719726562, 26.226430892944336, 3045.773681640625),
                    [13] = CFrame.new(-115.64647674560547, 26.226430892944336, 3043.5830078125),
                    [14] = CFrame.new(-117.56306457519531, 26.226430892944336, 3046.623046875),
                    [15] = CFrame.new(-124.14396667480469, 26.226430892944336, 3047.01708984375),
                    [16] = CFrame.new(-126.33584594726562, 26.226430892944336, 3044.4091796875),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-154.48719787597656, 23.012638092041016, 3008.0185546875) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-154.03152465820312, 23.012638092041016, 3003.686279296875) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-154.17575073242188, 23.012638092041016, 2999.2333984375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-160.71847534179688, 23.012638092041016, 3003.142333984375) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Magic Town"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-633.14697265625, 6.867366790771484, -828.0800170898438),
                    [2] = CFrame.new(-629.2713623046875, 6.867366790771484, -827.9649658203125),
                    [3] = CFrame.new(-636.4457397460938, 6.744270324707031, -827.3037719726562),
                    [4] = CFrame.new(-636.1947631835938, 6.744270324707031, -830.7438354492188),
                    [5] = CFrame.new(-636.6512451171875, 6.744270324707031, -824.2936401367188),
                    [6] = CFrame.new(-636.7354736328125, 6.744270324707031, -821.1996459960938),
                    [7] = CFrame.new(-636.6712036132812, 6.744271278381348, -818.2393798828125),
                    [8] = CFrame.new(-636.6563110351562, 6.744271278381348, -815.3857421875),
                    [9] = CFrame.new(-641.5824584960938, 6.744270324707031, -826.3722534179688),
                    [10] = CFrame.new(-641.4947509765625, 6.7442708015441895, -823.1985473632812),    
                    [11] = CFrame.new(-641.6338500976562, 6.7442708015441895, -819.835205078125),
                    [12] = CFrame.new(-641.6322631835938, 6.744271278381348, -816.3298950195312),
                    [13] = CFrame.new(-632.9827880859375, 6.867367267608643, -831.5005493164062),
                    [14] = CFrame.new(-641.7117309570312, 6.744270324707031, -830.0455932617188),
                    [15] = CFrame.new(-645.0248413085938, 6.744270324707031, -831.223388671875),
                    [16] = CFrame.new(-644.5612182617188, 6.744271278381348, -814.670166015625),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-632.752197265625, 13.104891777038574, -824.14599609375),
                    [2] = CFrame.new(-632.8036499023438, 13.038533210754395, -820.6494750976562),
                    [3] = CFrame.new(-632.7935180664062, 13.051631927490234, -816.9429931640625),
                    [4] = CFrame.new(-632.8040771484375, 13.038077354431152, -813.5859375),
                    [5] = CFrame.new(-630.1622314453125, 16.446191787719727, -824.076171875),
                    [6] = CFrame.new(-630.1196899414062, 16.501068115234375, -820.8889770507812),
                    [7] = CFrame.new(-630.1776123046875, 16.426376342773438, -817.622802734375),
                    [8] = CFrame.new(-630.5320434570312, 15.969231605529785, -812.1407470703125),
                    [9] = CFrame.new(-627.79833984375, 14.957194328308105, -824.2796020507812),
                    [10] = CFrame.new(-627.9783325195312, 15.189447402954102, -820.9540405273438),
                    [11] = CFrame.new(-627.9512939453125, 15.154607772827148, -817.487060546875),
                    [12] = CFrame.new(-627.8185424804688, 14.983454704284668, -812.0704956054688),
                    [13] = CFrame.new(-626.0095825195312, 12.649711608886719, -812.7009887695312),
                    [14] = CFrame.new(-626.107177734375, 12.775589942932129, -815.5083618164062),
                    [15] = CFrame.new(-625.9839477539062, 12.616559982299805, -818.9678344726562),
                    [16] = CFrame.new(-626.1162109375, 12.78714370727539, -822.6221313476562),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-605.835205078125, 6.7442731857299805, -771.9103393554688) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-601.5352172851562, 6.7442731857299805, -771.8367919921875) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-597.0631103515625, 6.7442731857299805, -771.7940673828125) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-601.0176391601562, 6.744272232055664, -779.233642578125) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["Cursed Academy"] = {
                ["Ground"] = {
                    [1] = CFrame.new(375.53875732421875, 122.06111145019531, -96.23596954345703),
                    [2] = CFrame.new(378.14422607421875, 122.06111145019531, -98.29039001464844),
                    [3] = CFrame.new(375.13287353515625, 122.06111145019531, -99.25535583496094),
                    [4] = CFrame.new(378.8585205078125, 122.06111145019531, -101.47903442382812),
                    [5] = CFrame.new(375.8328857421875, 122.06111145019531, -102.0647201538086),
                    [6] = CFrame.new(379.0493469238281, 122.06111145019531, -104.72346496582031),
                    [7] = CFrame.new(375.989990234375, 122.06111145019531, -105.16441345214844),
                    [8] = CFrame.new(378.7890625, 122.06111145019531, -107.6602554321289),
                    [9] = CFrame.new(375.5439453125, 122.06111145019531, -108.1955337524414),
                    [10] = CFrame.new(382.1399230957031, 122.06111145019531, -93.94685363769531),    
                    [11] = CFrame.new(384.46026611328125, 122.06111145019531, -96.13094329833984),
                    [12] = CFrame.new(384.8343505859375, 122.06111145019531, -99.39354705810547),
                    [13] = CFrame.new(384.740234375, 122.06111145019531, -102.67903900146484),
                    [14] = CFrame.new(384.7082824707031, 122.06111145019531, -106.14494323730469) ,
                    [15] = CFrame.new(388.02398681640625, 122.06111145019531, -100.28020477294922),
                    [16] = CFrame.new(388.0490417480469, 122.06111145019531, -103.6360092163086),
                },

                ["Hill"] = {
                    [1] =  CFrame.new(369.94189453125, 125.39746856689453, -95.81576538085938),
                    [2] =  CFrame.new(372.3403015136719, 125.39746856689453, -98.62271118164062),
                    [3] =  CFrame.new(372.7066345214844, 125.39746856689453, -102.07942962646484),
                    [4] =  CFrame.new(373.538330078125, 125.39746856689453, -105.77165985107422),
                    [5] =  CFrame.new(366.7502746582031, 125.39746856689453, -96.04597473144531),
                    [6] =  CFrame.new(368.4996337890625, 125.39746856689453, -98.8386459350586),
                    [7] =  CFrame.new(369.45660400390625, 125.39746856689453, -101.61000061035156),
                    [8] =  CFrame.new(370.1467590332031, 125.39746856689453, -105.11124420166016),
                    [9] =  CFrame.new(372.8037414550781, 125.39746856689453, -108.95603942871094),
                    [10] = CFrame.new(369.8599548339844, 125.39746856689453, -108.5089340209961),
                    [11] = CFrame.new(363.78387451171875, 125.39746856689453, -96.7940444946289),
                    [12] = CFrame.new(364.8832092285156, 125.39746856689453, -99.86100769042969),
                    [13] = CFrame.new(365.7681579589844, 125.39746856689453, -103.57514953613281),
                    [14] = CFrame.new(366.6706848144531, 125.39746856689453, -106.67589569091797),
                    [15] = CFrame.new(363.92095947265625, 125.39746856689453, -108.62181854248047),
                    [16] = CFrame.new(362.744873046875, 125.39746856689453, -105.4998550415039),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(365.91046142578125, 122.06111145019531, -133.80364990234375) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(366.1214904785156, 122.06111145019531, -129.5484161376953) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(366.34161376953125, 122.06111145019531, -125.22640991210938) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(359.56378173828125, 122.06111145019531, -128.83998107910156) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Clover Kingdom"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-122.86571502685547, 1.2332913875579834, -53.455902099609375),
                    [2] = CFrame.new(-126.66148376464844, 1.2332911491394043, -52.499755859375),
                    [3] = CFrame.new(-130.19610595703125, 1.2332911491394043, -51.035400390625),
                    [4] = CFrame.new(-133.69534301757812, 1.2332909107208252, -49.501220703125),
                    [5] = CFrame.new(-124.32135772705078, 1.2332913875579834, -49.97563171386719),
                    [6] = CFrame.new(-127.73600006103516, 1.2332911491394043, -48.8267822265625),
                    [7] = CFrame.new(-136.2860565185547, 1.2332909107208252, -53.61900329589844),
                    [8] = CFrame.new(-133.4272918701172, 1.2332909107208252, -55.29365539550781),
                    [9] = CFrame.new(-130.29833984375, 1.2332911491394043, -56.27543640136719),
                    [10] = CFrame.new(-127.13201904296875, 1.2332911491394043, -57.47416687011719),    
                    [11] = CFrame.new(-123.97782897949219, 1.2332913875579834, -58.05137634277344),
                    [12] = CFrame.new(-136.61346435546875, 1.233290672302246, -57.17036437988281),
                    [13] = CFrame.new(-119.54051208496094, 1.233291506767273, -51.73661804199219),
                    [14] = CFrame.new(-119.80673217773438, 1.233291506767273, -54.69972229003906),
                    [15] = CFrame.new(-121.08936309814453, 1.233291506767273, -59.3135986328125),
                    [16] = CFrame.new(-116.45516967773438, 1.2332916259765625, -53.95225524902344),
                },


                ["Hill"] = {
                    [1] = CFrame.new(-129.40309143066406, 4.8628387451171875, -43.648170471191406),
                    [2] = CFrame.new(-126.54981231689453, 4.8628387451171875, -45.633583068847656),
                    [3] = CFrame.new(-123.70580291748047, 4.8628387451171875, -47.69429397583008),
                    [4] = CFrame.new(-120.70264434814453, 4.8628387451171875, -48.894344329833984),
                    [5] = CFrame.new(-128.39932250976562, 4.8628387451171875, -40.59290313720703),
                    [6] = CFrame.new(-125.54364013671875, 4.8628387451171875, -42.27729415893555),
                    [7] = CFrame.new(-123.15338134765625, 4.8628387451171875, -44.54941177368164),
                    [8] = CFrame.new(-120.193603515625, 4.8628387451171875, -45.909278869628906),
                    [9] = CFrame.new(-127.02595520019531, 4.8628387451171875, -37.68292236328125),
                    [10] = CFrame.new(-124.09138488769531, 4.8628387451171875, -39.46887969970703),
                    [11] = CFrame.new(-121.70692443847656, 4.8628387451171875, -41.56584930419922),
                    [12] = CFrame.new(-118.45948028564453, 4.8628387451171875, -43.10382843017578),
                    [13] = CFrame.new(-117.74365997314453, 4.8628387451171875, -47.752628326416016),
                    [14] = CFrame.new(-115.95211791992188, 4.8628387451171875, -44.95259475708008) ,
                    [15] = CFrame.new(-114.34575653076172, 4.8628387451171875, -42.02674102783203),
                    [16] = CFrame.new(-117.22179412841797, 4.8628387451171875, -40.09629440307617),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-51.78937530517578, 1.2332944869995117, -23.869979858398438) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-55.925384521484375, 1.2332940101623535, -23.707275390625) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-60.026004791259766, 1.2332940101623535, -24.579696655273438) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-57.34385681152344, 1.233294129371643, -30.661834716796875) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },
            ["Clover Kingdom (Elf Invasion)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-122.86571502685547, 1.2332913875579834, -53.455902099609375),
                    [2] = CFrame.new(-126.66148376464844, 1.2332911491394043, -52.499755859375),
                    [3] = CFrame.new(-130.19610595703125, 1.2332911491394043, -51.035400390625),
                    [4] = CFrame.new(-133.69534301757812, 1.2332909107208252, -49.501220703125),
                    [5] = CFrame.new(-124.32135772705078, 1.2332913875579834, -49.97563171386719),
                    [6] = CFrame.new(-127.73600006103516, 1.2332911491394043, -48.8267822265625),
                    [7] = CFrame.new(-136.2860565185547, 1.2332909107208252, -53.61900329589844),
                    [8] = CFrame.new(-133.4272918701172, 1.2332909107208252, -55.29365539550781),
                    [9] = CFrame.new(-130.29833984375, 1.2332911491394043, -56.27543640136719),
                    [10] = CFrame.new(-127.13201904296875, 1.2332911491394043, -57.47416687011719),    
                    [11] = CFrame.new(-123.97782897949219, 1.2332913875579834, -58.05137634277344),
                    [12] = CFrame.new(-136.61346435546875, 1.233290672302246, -57.17036437988281),
                    [13] = CFrame.new(-119.54051208496094, 1.233291506767273, -51.73661804199219),
                    [14] = CFrame.new(-119.80673217773438, 1.233291506767273, -54.69972229003906),
                    [15] = CFrame.new(-121.08936309814453, 1.233291506767273, -59.3135986328125),
                    [16] = CFrame.new(-116.45516967773438, 1.2332916259765625, -53.95225524902344),
                },


                ["Hill"] = {
                    [1] = CFrame.new(-129.40309143066406, 4.8628387451171875, -43.648170471191406),
                    [2] = CFrame.new(-126.54981231689453, 4.8628387451171875, -45.633583068847656),
                    [3] = CFrame.new(-123.70580291748047, 4.8628387451171875, -47.69429397583008),
                    [4] = CFrame.new(-120.70264434814453, 4.8628387451171875, -48.894344329833984),
                    [5] = CFrame.new(-128.39932250976562, 4.8628387451171875, -40.59290313720703),
                    [6] = CFrame.new(-125.54364013671875, 4.8628387451171875, -42.27729415893555),
                    [7] = CFrame.new(-123.15338134765625, 4.8628387451171875, -44.54941177368164),
                    [8] = CFrame.new(-120.193603515625, 4.8628387451171875, -45.909278869628906),
                    [9] = CFrame.new(-127.02595520019531, 4.8628387451171875, -37.68292236328125),
                    [10] = CFrame.new(-124.09138488769531, 4.8628387451171875, -39.46887969970703),
                    [11] = CFrame.new(-121.70692443847656, 4.8628387451171875, -41.56584930419922),
                    [12] = CFrame.new(-118.45948028564453, 4.8628387451171875, -43.10382843017578),
                    [13] = CFrame.new(-117.74365997314453, 4.8628387451171875, -47.752628326416016),
                    [14] = CFrame.new(-115.95211791992188, 4.8628387451171875, -44.95259475708008) ,
                    [15] = CFrame.new(-114.34575653076172, 4.8628387451171875, -42.02674102783203),
                    [16] = CFrame.new(-117.22179412841797, 4.8628387451171875, -40.09629440307617),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-51.78937530517578, 1.2332944869995117, -23.869979858398438) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-55.925384521484375, 1.2332940101623535, -23.707275390625) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-60.026004791259766, 1.2332940101623535, -24.579696655273438) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-57.34385681152344, 1.233294129371643, -30.661834716796875) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["Cape Canaveral"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-22.715415954589844, 14.904389381408691, -569.0084838867188),
                    [2] = CFrame.new(-18.626991271972656, 14.904389381408691, -569.2632446289062),
                    [3] = CFrame.new(-14.773048400878906, 14.904389381408691, -569.427001953125),
                    [4] = CFrame.new(-26.288959503173828, 14.904389381408691, -569.1895751953125) ,
                    [5] = CFrame.new(-14.41400146484375, 14.904389381408691, -564.6781616210938),
                    [6] = CFrame.new(-17.602237701416016, 14.904389381408691, -564.713134765625),
                    [7] = CFrame.new(-20.901840209960938, 14.904389381408691, -564.320556640625),
                    [8] = CFrame.new(-24.32781219482422, 14.904389381408691, -564.531005859375),
                    [9] = CFrame.new(-29.439838409423828, 14.904389381408691, -569.4871826171875),
                    [10] = CFrame.new(-27.686861038208008, 14.904390335083008, -564.79833984375),    
                    [11] = CFrame.new(-31.2148380279541, 14.904390335083008, -564.5147705078125),
                    [12] = CFrame.new(-32.87163543701172, 14.904389381408691, -569.8949584960938),
                    [13] = CFrame.new(-35.9063720703125, 14.904389381408691, -571.0565185546875),
                    [14] = CFrame.new(-34.98902130126953, 14.904390335083008, -564.3560180664062),
                    [15] = CFrame.new(-38.154197692871094, 14.904389381408691, -573.86767578125),
                    [16] = CFrame.new(-38.29641342163086, 14.904390335083008, -564.7863159179688),
                },
                ["Hill"] = {
                    [1] = CFrame.new(-24.430419921875, 18.32282066345215, -580.2772827148438),
                    [2] = CFrame.new(-21.280017852783203, 18.32282066345215, -578.7739868164062),
                    [3] = CFrame.new(-19.86553955078125, 18.32282066345215, -581.6392822265625),
                    [4] = CFrame.new(-18.34632110595703, 18.32282066345215, -576.5825805664062),
                    [5] = CFrame.new(-17.335546493530273, 18.32282066345215, -579.7041015625),
                    [6] = CFrame.new(-15.278182983398438, 18.32282066345215, -575.2303466796875),
                    [7] = CFrame.new(-14.387955665588379, 18.32282066345215, -578.2200927734375),
                    [8] = CFrame.new(-18.56772804260254, 20.187965393066406, -583.8963012695312),
                    [9] = CFrame.new(-15.853006362915039, 20.187965393066406, -582.0343017578125),
                    [10] = CFrame.new(-13.273728370666504, 20.187965393066406, -580.8793334960938),
                    [11] = CFrame.new(-17.167043685913086, 20.187965393066406, -586.80810546875),
                    [12] = CFrame.new(-14.635786056518555, 20.187965393066406, -584.759033203125),
                    [13] = CFrame.new(-11.629015922546387, 20.187965393066406, -583.7688598632812),
                    [14] = CFrame.new(-14.79232406616211, 20.187965393066406, -588.4848022460938),
                    [15] = CFrame.new(-12.032915115356445, 20.187965393066406, -586.9207153320312),
                    [16] = CFrame.new(-9.4402494430542, 18.32282066345215, -587.4119262695312),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-56.4723014831543, 14.904391288757324, -534.74658203125) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-56.403682708740234, 14.904391288757324, -530.3147583007812) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-56.58747863769531, 14.904391288757324, -525.2738037109375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-49.08740234375, 14.904391288757324, -529.776611328125) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Alien Spaceship"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-289.3053894042969, 361.2119445800781, 1442.3155517578125),
                    [2] = CFrame.new(-286.0653991699219, 361.2119445800781, 1442.2305908203125),
                    [3] = CFrame.new(-282.6813659667969, 361.2119445800781, 1442.2216796875),
                    [4] = CFrame.new(-278.8880310058594, 361.2119445800781, 1441.91845703125),
                    [5] = CFrame.new(-292.8357849121094, 361.2119445800781, 1442.2930908203125),
                    [6] = CFrame.new(-291.88616943359375, 361.2119445800781, 1445.395263671875),
                    [7] = CFrame.new(-295.78802490234375, 361.2119445800781, 1442.5361328125),
                    [8] = CFrame.new(-295.1414794921875, 361.2119445800781, 1445.4658203125),
                    [9] = CFrame.new(-281.9401550292969, 361.2119445800781, 1436.9400634765625),
                    [10] = CFrame.new(-285.10858154296875, 361.2119445800781, 1437.10791015625),    
                    [11] = CFrame.new(-288.37420654296875, 361.2119445800781, 1437.204833984375),
                    [12] = CFrame.new(-291.7451171875, 361.2119445800781, 1437.0643310546875),
                    [13] = CFrame.new(-276.6262512207031, 361.2119445800781, 1438.9716796875),
                    [14] = CFrame.new(-279.2862243652344, 361.2119445800781, 1434.8387451171875),
                    [15] = CFrame.new(-275.9823913574219, 361.2119445800781, 1442.483154296875),
                    [16] = CFrame.new(-274.21630859375, 361.2119445800781, 1436.6669921875),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-288.2467041015625, 366.71197509765625, 1448.0416259765625),
                    [2] = CFrame.new(-284.6942443847656, 366.71197509765625, 1448.07421875),
                    [3] = CFrame.new(-281.17181396484375, 366.71197509765625, 1447.562744140625),
                    [4] = CFrame.new(-277.62908935546875, 366.71197509765625, 1447.6309814453125),
                    [5] = CFrame.new(-283.1984558105469, 366.71197509765625, 1450.7105712890625),
                    [6] = CFrame.new(-285.8993225097656, 366.71197509765625, 1451.1669921875),
                    [7] = CFrame.new(-288.55865478515625, 366.71197509765625, 1451.1827392578125),
                    [8] = CFrame.new(-288.59576416015625, 366.71197509765625, 1454.2001953125),
                    [9] = CFrame.new(-264.31085205078125, 366.9309387207031, 1438.3486328125),
                    [10] = CFrame.new(-263.27587890625, 366.9309387207031, 1435.6466064453125),
                    [11] = CFrame.new(-261.9787902832031, 366.9309387207031, 1432.814208984375),
                    [12] = CFrame.new(-260.9986267089844, 366.9309387207031, 1438.9647216796875),
                    [13] = CFrame.new(-260.0120849609375, 366.9309387207031, 1435.862548828125),
                    [14] = CFrame.new(-259.1170959472656, 366.9309387207031, 1431.336181640625),
                    [15] = CFrame.new(-255.80470275878906, 366.9309387207031, 1430.02685546875),
                    [16] = CFrame.new(-256.7384948730469, 366.9309387207031, 1433.90673828125),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-253.5353240966797, 361.2119445800781, 1383.846923828125) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-253.76947021484375, 361.2119445800781, 1388.384521484375) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-253.66537475585938, 361.2119445800781, 1393.017333984375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-246.07696533203125, 361.2119445800781, 1388.884765625) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Alien Spaceship (Final)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-289.3053894042969, 361.2119445800781, 1442.3155517578125),
                    [2] = CFrame.new(-286.0653991699219, 361.2119445800781, 1442.2305908203125),
                    [3] = CFrame.new(-282.6813659667969, 361.2119445800781, 1442.2216796875),
                    [4] = CFrame.new(-278.8880310058594, 361.2119445800781, 1441.91845703125),
                    [5] = CFrame.new(-292.8357849121094, 361.2119445800781, 1442.2930908203125),
                    [6] = CFrame.new(-291.88616943359375, 361.2119445800781, 1445.395263671875),
                    [7] = CFrame.new(-295.78802490234375, 361.2119445800781, 1442.5361328125),
                    [8] = CFrame.new(-295.1414794921875, 361.2119445800781, 1445.4658203125),
                    [9] = CFrame.new(-281.9401550292969, 361.2119445800781, 1436.9400634765625),
                    [10] = CFrame.new(-285.10858154296875, 361.2119445800781, 1437.10791015625),    
                    [11] = CFrame.new(-288.37420654296875, 361.2119445800781, 1437.204833984375),
                    [12] = CFrame.new(-291.7451171875, 361.2119445800781, 1437.0643310546875),
                    [13] = CFrame.new(-276.6262512207031, 361.2119445800781, 1438.9716796875),
                    [14] = CFrame.new(-279.2862243652344, 361.2119445800781, 1434.8387451171875),
                    [15] = CFrame.new(-275.9823913574219, 361.2119445800781, 1442.483154296875),
                    [16] = CFrame.new(-274.21630859375, 361.2119445800781, 1436.6669921875),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-288.2467041015625, 366.71197509765625, 1448.0416259765625),
                    [2] = CFrame.new(-284.6942443847656, 366.71197509765625, 1448.07421875),
                    [3] = CFrame.new(-281.17181396484375, 366.71197509765625, 1447.562744140625),
                    [4] = CFrame.new(-277.62908935546875, 366.71197509765625, 1447.6309814453125),
                    [5] = CFrame.new(-283.1984558105469, 366.71197509765625, 1450.7105712890625),
                    [6] = CFrame.new(-285.8993225097656, 366.71197509765625, 1451.1669921875),
                    [7] = CFrame.new(-288.55865478515625, 366.71197509765625, 1451.1827392578125),
                    [8] = CFrame.new(-288.59576416015625, 366.71197509765625, 1454.2001953125),
                    [9] = CFrame.new(-264.31085205078125, 366.9309387207031, 1438.3486328125),
                    [10] = CFrame.new(-263.27587890625, 366.9309387207031, 1435.6466064453125),
                    [11] = CFrame.new(-261.9787902832031, 366.9309387207031, 1432.814208984375),
                    [12] = CFrame.new(-260.9986267089844, 366.9309387207031, 1438.9647216796875),
                    [13] = CFrame.new(-260.0120849609375, 366.9309387207031, 1435.862548828125),
                    [14] = CFrame.new(-259.1170959472656, 366.9309387207031, 1431.336181640625),
                    [15] = CFrame.new(-255.80470275878906, 366.9309387207031, 1430.02685546875),
                    [16] = CFrame.new(-256.7384948730469, 366.9309387207031, 1433.90673828125),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-253.5353240966797, 361.2119445800781, 1383.846923828125) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-253.76947021484375, 361.2119445800781, 1388.384521484375) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-253.66537475585938, 361.2119445800781, 1393.017333984375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-246.07696533203125, 361.2119445800781, 1388.884765625) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Fabled Kingdom"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-95.2877197265625, 212.861083984375, -225.02305603027344),
                    [2] = CFrame.new(-91.91546630859375, 212.861083984375, -223.95120239257812),
                    [3] = CFrame.new(-88.85272979736328, 212.861083984375, -224.119384765625),
                    [4] = CFrame.new(-85.51748657226562, 212.861083984375, -224.09326171875),
                    [5] = CFrame.new(-83.48641967773438, 212.861083984375, -221.95248413085938),
                    [6] = CFrame.new(-80.82208251953125, 212.9611053466797, -226.84207153320312),
                    [7] = CFrame.new(-83.21914672851562, 212.9611053466797, -229.16172790527344),
                    [8] = CFrame.new(-86.06527709960938, 212.9611053466797, -229.8583984375),
                    [9] = CFrame.new(-88.75141143798828, 212.9611053466797, -229.6879119873047),
                    [10] = CFrame.new(-91.95836639404297, 212.9611053466797, -229.7194366455078),    
                    [11] = CFrame.new(-78.79944610595703, 212.9611053466797, -224.7285614013672),
                    [12] = CFrame.new(-80.58868408203125, 212.861083984375, -220.20069885253906),
                    [13] = CFrame.new(-78.39995574951172, 212.861083984375, -218.39727783203125),
                    [14] = CFrame.new(-76.25247192382812, 212.9611053466797, -222.47988891601562),
                    [15] = CFrame.new(-79.66841888427734, 212.9611053466797, -229.5572967529297),
                    [16] = CFrame.new(-77.08330535888672, 212.9611053466797, -227.11439514160156),
                },


                ["Hill"] = {
                    [1] = CFrame.new(-92.93672180175781, 216.99652099609375, -218.45294189453125),
                    [2] = CFrame.new(-89.71852111816406, 216.99652099609375, -219.7606964111328),
                    [3] = CFrame.new(-86.1817626953125, 216.99652099609375, -218.7396240234375),
                    [4] = CFrame.new(-82.83769989013672, 216.99652099609375, -217.64959716796875),
                    [5] = CFrame.new(-81.3221664428711, 216.99652099609375, -215.11534118652344),
                    [6] = CFrame.new(-85.70886993408203, 216.99652099609375, -215.6962127685547),
                    [7] = CFrame.new(-82.4608154296875, 216.99652099609375, -211.92086791992188),
                    [8] = CFrame.new(-85.47909545898438, 216.99652099609375, -212.50062561035156),
                    [9] = CFrame.new(-82.90509796142578, 216.99652099609375, -208.53045654296875),
                    [10] = CFrame.new(-86.30296325683594, 216.99652099609375, -209.3057098388672),
                    [11] = CFrame.new(-88.6070556640625, 216.99652099609375, -212.34202575683594),
                    [12] = CFrame.new(-89.05338287353516, 216.99652099609375, -209.34304809570312),
                    [13] = CFrame.new(-91.41727447509766, 216.99652099609375, -209.32591247558594),
                    [14] = CFrame.new(-91.35435485839844, 216.99652099609375, -212.21514892578125),
                    [15] = CFrame.new(-91.32441711425781, 216.99652099609375, -215.20767211914062),
                    [16] = CFrame.new(-83.31063079833984, 216.99652099609375, -214.1098175048828),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-105.31837463378906, 212.861083984375, -303.4591979980469) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-105.12193298339844, 212.861083984375, -307.7088317871094) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-105.10121154785156, 212.861083984375, -312.1865234375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-111.6562271118164, 212.861083984375, -308.48248291015625) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Fabled Kingdom (Commandments)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-95.2877197265625, 212.861083984375, -225.02305603027344),
                    [2] = CFrame.new(-91.91546630859375, 212.861083984375, -223.95120239257812),
                    [3] = CFrame.new(-88.85272979736328, 212.861083984375, -224.119384765625),
                    [4] = CFrame.new(-85.51748657226562, 212.861083984375, -224.09326171875),
                    [5] = CFrame.new(-83.48641967773438, 212.861083984375, -221.95248413085938),
                    [6] = CFrame.new(-80.82208251953125, 212.9611053466797, -226.84207153320312),
                    [7] = CFrame.new(-83.21914672851562, 212.9611053466797, -229.16172790527344),
                    [8] = CFrame.new(-86.06527709960938, 212.9611053466797, -229.8583984375),
                    [9] = CFrame.new(-88.75141143798828, 212.9611053466797, -229.6879119873047),
                    [10] = CFrame.new(-91.95836639404297, 212.9611053466797, -229.7194366455078),    
                    [11] = CFrame.new(-78.79944610595703, 212.9611053466797, -224.7285614013672),
                    [12] = CFrame.new(-80.58868408203125, 212.861083984375, -220.20069885253906),
                    [13] = CFrame.new(-78.39995574951172, 212.861083984375, -218.39727783203125),
                    [14] = CFrame.new(-76.25247192382812, 212.9611053466797, -222.47988891601562),
                    [15] = CFrame.new(-79.66841888427734, 212.9611053466797, -229.5572967529297),
                    [16] = CFrame.new(-77.08330535888672, 212.9611053466797, -227.11439514160156),
                },


                ["Hill"] = {
                    [1] = CFrame.new(-92.93672180175781, 216.99652099609375, -218.45294189453125),
                    [2] = CFrame.new(-89.71852111816406, 216.99652099609375, -219.7606964111328),
                    [3] = CFrame.new(-86.1817626953125, 216.99652099609375, -218.7396240234375),
                    [4] = CFrame.new(-82.83769989013672, 216.99652099609375, -217.64959716796875),
                    [5] = CFrame.new(-81.3221664428711, 216.99652099609375, -215.11534118652344),
                    [6] = CFrame.new(-85.70886993408203, 216.99652099609375, -215.6962127685547),
                    [7] = CFrame.new(-82.4608154296875, 216.99652099609375, -211.92086791992188),
                    [8] = CFrame.new(-85.47909545898438, 216.99652099609375, -212.50062561035156),
                    [9] = CFrame.new(-82.90509796142578, 216.99652099609375, -208.53045654296875),
                    [10] = CFrame.new(-86.30296325683594, 216.99652099609375, -209.3057098388672),
                    [11] = CFrame.new(-88.6070556640625, 216.99652099609375, -212.34202575683594),
                    [12] = CFrame.new(-89.05338287353516, 216.99652099609375, -209.34304809570312),
                    [13] = CFrame.new(-91.41727447509766, 216.99652099609375, -209.32591247558594),
                    [14] = CFrame.new(-91.35435485839844, 216.99652099609375, -212.21514892578125),
                    [15] = CFrame.new(-91.32441711425781, 216.99652099609375, -215.20767211914062),
                    [16] = CFrame.new(-83.31063079833984, 216.99652099609375, -214.1098175048828),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-105.31837463378906, 212.861083984375, -303.4591979980469) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-105.12193298339844, 212.861083984375, -307.7088317871094) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-105.10121154785156, 212.861083984375, -312.1865234375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-111.6562271118164, 212.861083984375, -308.48248291015625) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Fabled Kingdom (Cube)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-95.2877197265625, 212.861083984375, -225.02305603027344),
                    [2] = CFrame.new(-91.91546630859375, 212.861083984375, -223.95120239257812),
                    [3] = CFrame.new(-88.85272979736328, 212.861083984375, -224.119384765625),
                    [4] = CFrame.new(-85.51748657226562, 212.861083984375, -224.09326171875),
                    [5] = CFrame.new(-83.48641967773438, 212.861083984375, -221.95248413085938),
                    [6] = CFrame.new(-80.82208251953125, 212.9611053466797, -226.84207153320312),
                    [7] = CFrame.new(-83.21914672851562, 212.9611053466797, -229.16172790527344),
                    [8] = CFrame.new(-86.06527709960938, 212.9611053466797, -229.8583984375),
                    [9] = CFrame.new(-88.75141143798828, 212.9611053466797, -229.6879119873047),
                    [10] = CFrame.new(-91.95836639404297, 212.9611053466797, -229.7194366455078),    
                    [11] = CFrame.new(-78.79944610595703, 212.9611053466797, -224.7285614013672),
                    [12] = CFrame.new(-80.58868408203125, 212.861083984375, -220.20069885253906),
                    [13] = CFrame.new(-78.39995574951172, 212.861083984375, -218.39727783203125),
                    [14] = CFrame.new(-76.25247192382812, 212.9611053466797, -222.47988891601562),
                    [15] = CFrame.new(-79.66841888427734, 212.9611053466797, -229.5572967529297),
                    [16] = CFrame.new(-77.08330535888672, 212.9611053466797, -227.11439514160156),
                },


                ["Hill"] = {
                    [1] = CFrame.new(-92.93672180175781, 216.99652099609375, -218.45294189453125),
                    [2] = CFrame.new(-89.71852111816406, 216.99652099609375, -219.7606964111328),
                    [3] = CFrame.new(-86.1817626953125, 216.99652099609375, -218.7396240234375),
                    [4] = CFrame.new(-82.83769989013672, 216.99652099609375, -217.64959716796875),
                    [5] = CFrame.new(-81.3221664428711, 216.99652099609375, -215.11534118652344),
                    [6] = CFrame.new(-85.70886993408203, 216.99652099609375, -215.6962127685547),
                    [7] = CFrame.new(-82.4608154296875, 216.99652099609375, -211.92086791992188),
                    [8] = CFrame.new(-85.47909545898438, 216.99652099609375, -212.50062561035156),
                    [9] = CFrame.new(-82.90509796142578, 216.99652099609375, -208.53045654296875),
                    [10] = CFrame.new(-86.30296325683594, 216.99652099609375, -209.3057098388672),
                    [11] = CFrame.new(-88.6070556640625, 216.99652099609375, -212.34202575683594),
                    [12] = CFrame.new(-89.05338287353516, 216.99652099609375, -209.34304809570312),
                    [13] = CFrame.new(-91.41727447509766, 216.99652099609375, -209.32591247558594),
                    [14] = CFrame.new(-91.35435485839844, 216.99652099609375, -212.21514892578125),
                    [15] = CFrame.new(-91.32441711425781, 216.99652099609375, -215.20767211914062),
                    [16] = CFrame.new(-83.31063079833984, 216.99652099609375, -214.1098175048828),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-105.31837463378906, 212.861083984375, -303.4591979980469) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(-105.12193298339844, 212.861083984375, -307.7088317871094) * CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(-105.10121154785156, 212.861083984375, -312.1865234375) * CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-111.6562271118164, 212.861083984375, -308.48248291015625) * CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Hero City"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-103.14449310302734, -13.246719360351562, 30.11482810974121),
                    [2] = CFrame.new(-103.20175170898438, -13.246718406677246, 33.82551193237305),
                    [3] = CFrame.new(-106.78905487060547, -13.246719360351562, 30.15005874633789),
                    [4] = CFrame.new(-110.45520782470703, -13.246719360351562, 29.795368194580078),
                    [5] = CFrame.new(-103.2165756225586, -13.246719360351562, 24.88309669494629),
                    [6] = CFrame.new(-106.47978210449219, -13.246719360351562, 24.97106170654297),
                    [7] = CFrame.new(-109.81097412109375, -13.246719360351562, 24.711483001708984),
                    [8] = CFrame.new(-112.80741882324219, -13.246719360351562, 24.579715728759766),
                    [9] = CFrame.new(-111.58174896240234, -13.246719360351562, 21.742816925048828),
                    [10] = CFrame.new(-114.55459594726562, -13.246719360351562, 21.75748062133789),    
                    [11] = CFrame.new(-115.411865234375, -13.246719360351562, 26.130571365356445),
                    [12] = CFrame.new(-117.89839935302734, -13.246719360351562, 28.243114471435547),
                    [13] = CFrame.new(-99.78507995605469, -13.246718406677246, 29.04836082458496),
                    [14] = CFrame.new(-97.48052978515625, -13.246719360351562, 26.616302490234375),
                    [15] = CFrame.new(-99.92202758789062, -13.246718406677246, 32.57048797607422),
                    [16] = CFrame.new(-96.903076171875, -13.246718406677246, 30.760658264160156),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-101.57048034667969, -10.01987075805664, 14.03896427154541),
                    [2] = CFrame.new(-100.67105865478516, -10.01987075805664, 17.276931762695312),
                    [3] = CFrame.new(-103.15116119384766, -10.01987075805664, 19.505815505981445),
                    [4] = CFrame.new(-105.85517883300781, -10.01987075805664, 21.562572479248047),
                    [5] = CFrame.new(-104.09669494628906, -10.01987075805664, 16.021299362182617),
                    [6] = CFrame.new(-106.27689361572266, -10.01987075805664, 18.186176300048828),
                    [7] = CFrame.new(-108.61807250976562, -10.01987075805664, 20.23489761352539),
                    [8] = CFrame.new(-103.54078674316406, -10.01987075805664, 11.302428245544434),
                    [9] = CFrame.new(-105.89411926269531, -10.01987075805664, 13.464326858520508),
                    [10] = CFrame.new(-110.12908172607422, -10.01987075805664, 17.856735229492188),
                    [11] = CFrame.new(-104.65044403076172, -10.01987075805664, 8.380646705627441),
                    [12] = CFrame.new(-102.8708267211914, -9.91476058959961, 40.037715911865234),
                    [13] = CFrame.new(-105.92440032958984, -9.91476058959961, 40.87677001953125),
                    [14] = CFrame.new(-110.44527435302734, -9.91476058959961, 41.85457992553711),
                    [15] = CFrame.new(-108.91462707519531, -9.91476058959961, 44.97590255737305),
                    [16] = CFrame.new(-105.6904296875, -9.91476058959961, 44.041175842285156),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-135.01611328125, -13.246720314025879, -1.463521957397461) * CFrame.Angles(0, -0, -0),
                        [2] = CFrame.new(-130.1866455078125, -13.246720314025879, -1.5893878936767578) * CFrame.Angles(0, -0, -0),
                        [3] = CFrame.new(-125.38678741455078, -13.246720314025879, -1.5726757049560547) * CFrame.Angles(0, -0, -0), 
                    },
                    ["Bulma"] = CFrame.new(-130.160400390625, -13.246720314025879, 5.759489059448242) * CFrame.Angles(0, -0, -0),
                },
            },

            ["Hero City (Midnight)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-103.14449310302734, -13.246719360351562, 30.11482810974121),
                    [2] = CFrame.new(-103.20175170898438, -13.246718406677246, 33.82551193237305),
                    [3] = CFrame.new(-106.78905487060547, -13.246719360351562, 30.15005874633789),
                    [4] = CFrame.new(-110.45520782470703, -13.246719360351562, 29.795368194580078),
                    [5] = CFrame.new(-103.2165756225586, -13.246719360351562, 24.88309669494629),
                    [6] = CFrame.new(-106.47978210449219, -13.246719360351562, 24.97106170654297),
                    [7] = CFrame.new(-109.81097412109375, -13.246719360351562, 24.711483001708984),
                    [8] = CFrame.new(-112.80741882324219, -13.246719360351562, 24.579715728759766),
                    [9] = CFrame.new(-111.58174896240234, -13.246719360351562, 21.742816925048828),
                    [10] = CFrame.new(-114.55459594726562, -13.246719360351562, 21.75748062133789),    
                    [11] = CFrame.new(-115.411865234375, -13.246719360351562, 26.130571365356445),
                    [12] = CFrame.new(-117.89839935302734, -13.246719360351562, 28.243114471435547),
                    [13] = CFrame.new(-99.78507995605469, -13.246718406677246, 29.04836082458496),
                    [14] = CFrame.new(-97.48052978515625, -13.246719360351562, 26.616302490234375),
                    [15] = CFrame.new(-99.92202758789062, -13.246718406677246, 32.57048797607422),
                    [16] = CFrame.new(-96.903076171875, -13.246718406677246, 30.760658264160156),
                },
                
                ["Hill"] = {
                    [1] = CFrame.new(-101.57048034667969, -10.01987075805664, 14.03896427154541),
                    [2] = CFrame.new(-100.67105865478516, -10.01987075805664, 17.276931762695312),
                    [3] = CFrame.new(-103.15116119384766, -10.01987075805664, 19.505815505981445),
                    [4] = CFrame.new(-105.85517883300781, -10.01987075805664, 21.562572479248047),
                    [5] = CFrame.new(-104.09669494628906, -10.01987075805664, 16.021299362182617),
                    [6] = CFrame.new(-106.27689361572266, -10.01987075805664, 18.186176300048828),
                    [7] = CFrame.new(-108.61807250976562, -10.01987075805664, 20.23489761352539),
                    [8] = CFrame.new(-103.54078674316406, -10.01987075805664, 11.302428245544434),
                    [9] = CFrame.new(-105.89411926269531, -10.01987075805664, 13.464326858520508),
                    [10] = CFrame.new(-110.12908172607422, -10.01987075805664, 17.856735229492188),
                    [11] = CFrame.new(-104.65044403076172, -10.01987075805664, 8.380646705627441),
                    [12] = CFrame.new(-102.8708267211914, -9.91476058959961, 40.037715911865234),
                    [13] = CFrame.new(-105.92440032958984, -9.91476058959961, 40.87677001953125),
                    [14] = CFrame.new(-110.44527435302734, -9.91476058959961, 41.85457992553711),
                    [15] = CFrame.new(-108.91462707519531, -9.91476058959961, 44.97590255737305),
                    [16] = CFrame.new(-105.6904296875, -9.91476058959961, 44.041175842285156),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-135.01611328125, -13.246720314025879, -1.463521957397461) * CFrame.Angles(0, -0, -0),
                        [2] = CFrame.new(-130.1866455078125, -13.246720314025879, -1.5893878936767578) * CFrame.Angles(0, -0, -0),
                        [3] = CFrame.new(-125.38678741455078, -13.246720314025879, -1.5726757049560547) * CFrame.Angles(0, -0, -0), 
                    },
                    ["Bulma"] = CFrame.new(-130.160400390625, -13.246720314025879, 5.759489059448242) * CFrame.Angles(0, -0, -0),
                },
            },



            ["Puppet Island"] = {
                ["Ground"] = {
                    [1] = CFrame.new(9.486343383789062, 2.600001335144043, -164.5515594482422),
                    [2] = CFrame.new(13.013542175292969, 2.600001335144043, -164.57505798339844),
                    [3] = CFrame.new(16.51317596435547, 2.600001335144043, -164.6329345703125),
                    [4] = CFrame.new(19.87590789794922, 2.600001335144043, -164.63555908203125),
                    [5] = CFrame.new(9.260826110839844, 2.600001335144043, -159.917724609375),
                    [6] = CFrame.new(12.903045654296875, 2.600001335144043, -160.1636505126953),
                    [7] = CFrame.new(16.157615661621094, 2.600001335144043, -160.06646728515625),
                    [8] = CFrame.new(19.783302307128906, 2.600001335144043, -160.18812561035156),
                    [9] = CFrame.new(23.172027587890625, 2.600001573562622, -164.8140869140625),
                    [10] = CFrame.new(24.003074645996094, 2.600001096725464, -158.25942993164062),    
                    [11] = CFrame.new(26.349205017089844, 2.600001573562622, -164.8639678955078),
                    [12] = CFrame.new(26.764488220214844, 2.600001335144043, -161.63699340820312),
                    [13] = CFrame.new(29.209022521972656, 2.600001335144043, -164.47061157226562),
                    [14] = CFrame.new(29.44403839111328, 2.600001335144043, -161.48585510253906),
                    [15] = CFrame.new(32.19642639160156, 2.600001335144043, -164.59214782714844) ,
                    [16] = CFrame.new(32.26237487792969, 2.600001335144043, -161.33819580078125),
                },

                ["Hill"] = {
                    [1] = CFrame.new(9.110092163085938, 10.436573028564453, -168.74020385742188),
                    [2] = CFrame.new(12.353428840637207, 10.436573028564453, -168.02322387695312),
                    [3] = CFrame.new(15.549477577209473, 10.436573028564453, -167.8869171142578) ,
                    [4] = CFrame.new(18.8882999420166, 10.436573028564453, -167.8211669921875),
                    [5] = CFrame.new(14.237750053405762, 10.436573028564453, -170.88819885253906),
                    [6] = CFrame.new(17.46656036376953, 10.436573028564453, -170.8787384033203),
                    [7] = CFrame.new(8.759273529052734, 10.436573028564453, -171.75900268554688),
                    [8] = CFrame.new(21.703609466552734, 10.436573028564453, -167.55596923828125),
                    [9] = CFrame.new(20.635292053222656, 10.436573028564453, -170.30154418945312),
                    [10] = CFrame.new(17.68035888671875, 10.436573028564453, -174.0322265625),
                    [11] = CFrame.new(7.189229965209961, 10.436573028564453, -174.36172485351562),
                    [12] = CFrame.new(6.957954406738281, 10.436573028564453, -177.29293823242188),
                    [13] = CFrame.new(26.513587951660156, 10.436573028564453, -167.482177734375),
                    [14] = CFrame.new(29.815933227539062, 10.436573028564453, -167.5939178466797),
                    [15] = CFrame.new(23.812259674072266, 10.436573028564453, -171.63307189941406),
                    [16] = CFrame.new(32.88617706298828, 10.436573028564453, -167.4971160888672),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(71.82415771484375, 2.59999942779541, -113.73397827148438)* CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(71.67507934570312, 2.599998950958252, -109.26814270019531)* CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(71.55535888671875, 2.599998950958252, -104.68622589111328)* CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(79.26138305664062, 2.599998950958252, -109.59040832519531)* CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Puppet Island (Birdcage)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(9.486343383789062, 2.600001335144043, -164.5515594482422),
                    [2] = CFrame.new(13.013542175292969, 2.600001335144043, -164.57505798339844),
                    [3] = CFrame.new(16.51317596435547, 2.600001335144043, -164.6329345703125),
                    [4] = CFrame.new(19.87590789794922, 2.600001335144043, -164.63555908203125),
                    [5] = CFrame.new(9.260826110839844, 2.600001335144043, -159.917724609375),
                    [6] = CFrame.new(12.903045654296875, 2.600001335144043, -160.1636505126953),
                    [7] = CFrame.new(16.157615661621094, 2.600001335144043, -160.06646728515625),
                    [8] = CFrame.new(19.783302307128906, 2.600001335144043, -160.18812561035156),
                    [9] = CFrame.new(23.172027587890625, 2.600001573562622, -164.8140869140625),
                    [10] = CFrame.new(24.003074645996094, 2.600001096725464, -158.25942993164062),    
                    [11] = CFrame.new(26.349205017089844, 2.600001573562622, -164.8639678955078),
                    [12] = CFrame.new(26.764488220214844, 2.600001335144043, -161.63699340820312),
                    [13] = CFrame.new(29.209022521972656, 2.600001335144043, -164.47061157226562),
                    [14] = CFrame.new(29.44403839111328, 2.600001335144043, -161.48585510253906),
                    [15] = CFrame.new(32.19642639160156, 2.600001335144043, -164.59214782714844) ,
                    [16] = CFrame.new(32.26237487792969, 2.600001335144043, -161.33819580078125),
                },

                ["Hill"] = {
                    [1] = CFrame.new(9.110092163085938, 10.436573028564453, -168.74020385742188),
                    [2] = CFrame.new(12.353428840637207, 10.436573028564453, -168.02322387695312),
                    [3] = CFrame.new(15.549477577209473, 10.436573028564453, -167.8869171142578) ,
                    [4] = CFrame.new(18.8882999420166, 10.436573028564453, -167.8211669921875),
                    [5] = CFrame.new(14.237750053405762, 10.436573028564453, -170.88819885253906),
                    [6] = CFrame.new(17.46656036376953, 10.436573028564453, -170.8787384033203),
                    [7] = CFrame.new(8.759273529052734, 10.436573028564453, -171.75900268554688),
                    [8] = CFrame.new(21.703609466552734, 10.436573028564453, -167.55596923828125),
                    [9] = CFrame.new(20.635292053222656, 10.436573028564453, -170.30154418945312),
                    [10] = CFrame.new(17.68035888671875, 10.436573028564453, -174.0322265625),
                    [11] = CFrame.new(7.189229965209961, 10.436573028564453, -174.36172485351562),
                    [12] = CFrame.new(6.957954406738281, 10.436573028564453, -177.29293823242188),
                    [13] = CFrame.new(26.513587951660156, 10.436573028564453, -167.482177734375),
                    [14] = CFrame.new(29.815933227539062, 10.436573028564453, -167.5939178466797),
                    [15] = CFrame.new(23.812259674072266, 10.436573028564453, -171.63307189941406),
                    [16] = CFrame.new(32.88617706298828, 10.436573028564453, -167.4971160888672),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(71.82415771484375, 2.59999942779541, -113.73397827148438)* CFrame.Angles(0, 1.5707963705062866, 0),
                        [2] = CFrame.new(71.67507934570312, 2.599998950958252, -109.26814270019531)* CFrame.Angles(0, 1.5707963705062866, 0),
                        [3] = CFrame.new(71.55535888671875, 2.599998950958252, -104.68622589111328)* CFrame.Angles(0, 1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(79.26138305664062, 2.599998950958252, -109.59040832519531)* CFrame.Angles(0, 1.5707963705062866, 0),
                },
            },

            ["Virtual Dungeon"] = {
                ["Ground"] = {
                    [1] = CFrame.new(105.49211883544922, 37.53697967529297, 8.000144958496094),
                    [2] = CFrame.new(102.17700958251953, 37.53697967529297, 7.798133850097656),
                    [3] = CFrame.new(98.62203216552734, 37.53697967529297, 8.294842720031738),
                    [4] = CFrame.new(95.35009765625, 37.411773681640625, 8.619915008544922),
                    [5] = CFrame.new(108.04463958740234, 37.53697967529297, 10.211962699890137),
                    [6] = CFrame.new(109.77922058105469, 37.53697967529297, 13.115884780883789),
                    [7] = CFrame.new(110.50244140625, 37.53697967529297, 6.024560928344727),
                    [8] = CFrame.new(112.8214340209961, 37.53697967529297, 8.250526428222656),
                    [9] = CFrame.new(108.33627319335938, 37.536983489990234, 3.8296871185302734),
                    [10] = CFrame.new(105.27668762207031, 37.536983489990234, 3.1142330169677734),    
                    [11] = CFrame.new(102.24091339111328, 37.536983489990234, 2.973735809326172),
                    [12] = CFrame.new(99.1480712890625, 37.53697967529297, 2.718547821044922),
                    [13] = CFrame.new(92.96866607666016, 37.411773681640625, 10.394930839538574),
                    [14] = CFrame.new(94.91891479492188, 37.411773681640625, 12.704322814941406),
                    [15] = CFrame.new(92.11354064941406, 37.411773681640625, 14.80566120147705),
                    [16] = CFrame.new(90.29678344726562, 37.411773681640625, 12.009614944458008),
                },


                ["Hill"] = {
                    [1] = CFrame.new(107.657958984375, 41.67760467529297, 16.60687828063965),
                    [2] = CFrame.new(105.0462417602539, 41.67760467529297, 14.39125919342041),
                    [3] = CFrame.new(109.5772705078125, 41.67760467529297, 19.931682586669922),
                    [4] = CFrame.new(104.79497528076172, 41.67760467529297, 17.983835220336914),
                    [5] = CFrame.new(102.4747085571289, 41.67760467529297, 12.58594036102295),
                    [6] = CFrame.new(102.24836730957031, 41.67760467529297, 15.526824951171875),
                    [7] = CFrame.new(99.43063354492188, 41.67760467529297, 13.113686561584473),
                    [8] = CFrame.new(98.97168731689453, 41.67760467529297, 16.42049789428711),
                    [9] = CFrame.new(101.38011169433594, 41.67760467529297, 18.670520782470703),
                    [10] = CFrame.new(95.83026885986328, 41.67760467529297, 15.551839828491211),
                    [11] = CFrame.new(93.71857452392578, 41.67760467529297, 17.8607234954834),
                    [12] = CFrame.new(97.32597351074219, 41.67760467529297, 18.370281219482422),
                    [13] = CFrame.new(94.7476577758789, 41.67760467529297, 20.325481414794922),
                    [14] = CFrame.new(110.69050598144531, 41.6776008605957, 23.115497589111328),
                    [15] = CFrame.new(92.1298599243164, 41.67760467529297, 22.189945220947266),
                    [16] = CFrame.new(77.25341033935547, 41.6776008605957, 11.270118713378906),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(134.35316467285156, 37.5369873046875, 22.90865707397461) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(129.88169860839844, 37.5369873046875, 22.748472213745117) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(125.78492736816406, 37.5369873046875, 22.832015991210938) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(129.6101837158203, 37.536983489990234, 29.692096710205078) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["Virtual Dungeon (Bosses)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(105.49211883544922, 37.53697967529297, 8.000144958496094),
                    [2] = CFrame.new(102.17700958251953, 37.53697967529297, 7.798133850097656),
                    [3] = CFrame.new(98.62203216552734, 37.53697967529297, 8.294842720031738),
                    [4] = CFrame.new(95.35009765625, 37.411773681640625, 8.619915008544922),
                    [5] = CFrame.new(108.04463958740234, 37.53697967529297, 10.211962699890137),
                    [6] = CFrame.new(109.77922058105469, 37.53697967529297, 13.115884780883789),
                    [7] = CFrame.new(110.50244140625, 37.53697967529297, 6.024560928344727),
                    [8] = CFrame.new(112.8214340209961, 37.53697967529297, 8.250526428222656),
                    [9] = CFrame.new(108.33627319335938, 37.536983489990234, 3.8296871185302734),
                    [10] = CFrame.new(105.27668762207031, 37.536983489990234, 3.1142330169677734),    
                    [11] = CFrame.new(102.24091339111328, 37.536983489990234, 2.973735809326172),
                    [12] = CFrame.new(99.1480712890625, 37.53697967529297, 2.718547821044922),
                    [13] = CFrame.new(92.96866607666016, 37.411773681640625, 10.394930839538574),
                    [14] = CFrame.new(94.91891479492188, 37.411773681640625, 12.704322814941406),
                    [15] = CFrame.new(92.11354064941406, 37.411773681640625, 14.80566120147705),
                    [16] = CFrame.new(90.29678344726562, 37.411773681640625, 12.009614944458008),
                },


                ["Hill"] = {
                    [1] = CFrame.new(107.657958984375, 41.67760467529297, 16.60687828063965),
                    [2] = CFrame.new(105.0462417602539, 41.67760467529297, 14.39125919342041),
                    [3] = CFrame.new(109.5772705078125, 41.67760467529297, 19.931682586669922),
                    [4] = CFrame.new(104.79497528076172, 41.67760467529297, 17.983835220336914),
                    [5] = CFrame.new(102.4747085571289, 41.67760467529297, 12.58594036102295),
                    [6] = CFrame.new(102.24836730957031, 41.67760467529297, 15.526824951171875),
                    [7] = CFrame.new(99.43063354492188, 41.67760467529297, 13.113686561584473),
                    [8] = CFrame.new(98.97168731689453, 41.67760467529297, 16.42049789428711),
                    [9] = CFrame.new(101.38011169433594, 41.67760467529297, 18.670520782470703),
                    [10] = CFrame.new(95.83026885986328, 41.67760467529297, 15.551839828491211),
                    [11] = CFrame.new(93.71857452392578, 41.67760467529297, 17.8607234954834),
                    [12] = CFrame.new(97.32597351074219, 41.67760467529297, 18.370281219482422),
                    [13] = CFrame.new(94.7476577758789, 41.67760467529297, 20.325481414794922),
                    [14] = CFrame.new(110.69050598144531, 41.6776008605957, 23.115497589111328),
                    [15] = CFrame.new(92.1298599243164, 41.67760467529297, 22.189945220947266),
                    [16] = CFrame.new(77.25341033935547, 41.6776008605957, 11.270118713378906),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(134.35316467285156, 37.5369873046875, 22.90865707397461) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(129.88169860839844, 37.5369873046875, 22.748472213745117) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(125.78492736816406, 37.5369873046875, 22.832015991210938) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(129.6101837158203, 37.536983489990234, 29.692096710205078) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },


            ["Windhym"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-293.0240478515625, -0.07450699806213379, 47.69386291503906),
                    [2] = CFrame.new(-296.31573486328125, -0.07450699806213379, 47.44500732421875),
                    [3] = CFrame.new(-299.4001770019531, -0.07450699806213379, 48.06932067871094),
                    [4] = CFrame.new(-290.42681884765625, -0.07450711727142334, 49.95184326171875),
                    [5] = CFrame.new(-290.148681640625, -0.07450699806213379, 47.1553955078125),
                    [6] = CFrame.new(-289.7666320800781, -0.07450675964355469, 43.48228454589844),
                    [7] = CFrame.new(-293.14422607421875, -0.07450675964355469, 43.91552734375),
                    [8] = CFrame.new(-296.70458984375, -0.07450687885284424, 44.48744201660156),
                    [9] = CFrame.new(-288.6457214355469, -0.07450723648071289, 53.07398986816406),
                    [10] = CFrame.new(-287.5807189941406, -0.07450711727142334, 49.90142822265625),    
                    [11] = CFrame.new(-284.18402099609375, -0.07450711727142334, 50.14036560058594),
                    [12] = CFrame.new(-285.4645690917969, -0.07450723648071289, 53.847076416015625),
                    [13] = CFrame.new(-287.06475830078125, -0.07450699806213379, 47.195098876953125),
                    [14] = CFrame.new(-283.69635009765625, -0.07450699806213379, 47.315460205078125),
                    [15] = CFrame.new(-302.3733825683594, -0.07450699806213379, 47.89576721191406),
                    [16] = CFrame.new(-305.4559631347656, -0.07450699806213379, 47.71907043457031),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-294.864013671875, 3.712193489074707, 51.04349899291992),
                    [2] = CFrame.new(-292.4139404296875, 3.712193489074707, 53.40391540527344),
                    [3] = CFrame.new(-291.689208984375, 3.7121939659118652, 56.91011047363281),
                    [4] = CFrame.new(-298.102294921875, 3.712193489074707, 50.50776672363281),
                    [5] = CFrame.new(-290.30401611328125, 3.7121942043304443, 59.91107940673828),
                    [6] = CFrame.new(-297.0745544433594, 3.712193727493286, 53.659751892089844),
                    [7] = CFrame.new(-294.76416015625, 3.712193727493286, 55.57707595825195),
                    [8] = CFrame.new(-294.3709411621094, 3.712193727493286, 58.79475784301758),
                    [9] = CFrame.new(-292.98052978515625, 3.7121939659118652, 61.79783630371094),
                    [10] = CFrame.new(-300.833740234375, 3.712193489074707, 51.86973571777344),
                    [11] = CFrame.new(-299.9601135253906, 3.7121939659118652, 54.88656997680664),
                    [12] = CFrame.new(-297.09661865234375, 3.7121939659118652, 56.66653823852539),
                    [13] = CFrame.new(-303.8025207519531, 3.712193489074707, 50.901180267333984),
                    [14] = CFrame.new(-302.8158264160156, 3.7121939659118652, 54.27266311645508),
                    [15] = CFrame.new(-306.84503173828125, 3.712193489074707, 51.87311935424805),
                    [16] = CFrame.new(-305.78704833984375, 3.7121939659118652, 55.061012268066406),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-353.26324462890625, -0.07450175285339355, -71.74771118164062) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-358.2713623046875, -0.07450175285339355, -71.71332550048828) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-362.61871337890625, -0.07450175285339355, -71.82679748535156) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-358.6341552734375, -0.07450151443481445, -78.43409729003906) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["The Eclipse"] = {
                ["Ground"] = {
                    [1] = CFrame.new(21.063810348510742, 65.4000015258789, 103.34989929199219),
                    [2] = CFrame.new(23.000362396240234, 65.4000015258789, 100.66295623779297),
                    [3] = CFrame.new(24.847192764282227, 65.4000015258789, 97.70553588867188),
                    [4] = CFrame.new(23.607177734375, 65.4000015258789, 105.9492416381836),
                    [5] = CFrame.new(25.068798065185547, 65.4000015258789, 103.08039093017578),
                    [6] = CFrame.new(26.802085876464844, 65.4000015258789, 99.96479797363281),
                    [7] = CFrame.new(26.473899841308594, 65.4000015258789, 94.62064361572266),
                    [8] = CFrame.new(28.509794235229492, 65.4000015258789, 96.99573516845703),
                    [9] = CFrame.new(30.449203491210938, 65.4000015258789, 94.08677673339844),
                    [10] = CFrame.new(27.616716384887695, 65.4000015258789, 91.68363952636719),    
                    [11] = CFrame.new(30.923870086669922, 65.4000015258789, 90.7178955078125),
                    [12] = CFrame.new(27.896604537963867, 65.4000015258789, 88.40985107421875),
                    [13] = CFrame.new(17.490076065063477, 65.4000015258789, 100.23738861083984),
                    [14] = CFrame.new(19.108739852905273, 65.4000015258789, 97.25697326660156),
                    [15] = CFrame.new(20.920494079589844, 65.4000015258789, 94.35302734375),
                    [16] = CFrame.new(22.34494972229004, 65.4000015258789, 91.84272003173828),
                },
            
                ["Hill"] = {
                    [1] = CFrame.new(34.84789276123047, 69.13812255859375, 92.2256851196289),
                    [2] = CFrame.new(35.53063201904297, 69.13812255859375, 88.91429138183594),
                    [3] = CFrame.new(36.19361114501953, 69.13812255859375, 85.74337005615234),
                    [4] = CFrame.new(37.42669677734375, 69.13812255859375, 82.79389953613281),
                    [5] = CFrame.new(36.77123260498047, 69.13812255859375, 94.99221801757812),
                    [6] = CFrame.new(38.13542175292969, 69.13812255859375, 91.47517395019531),
                    [7] = CFrame.new(38.79554748535156, 69.13812255859375, 88.04167175292969),
                    [8] = CFrame.new(39.88264846801758, 69.13812255859375, 85.04054260253906),
                    [9] = CFrame.new(38.17081832885742, 69.13812255859375, 79.66637420654297),
                    [10] = CFrame.new(40.676239013671875, 69.13812255859375, 81.75609588623047),
                    [11] = CFrame.new(30.891799926757812, 72.33812713623047, 101.68844604492188),
                    [12] = CFrame.new(33.77091979980469, 72.33812713623047, 100.3151626586914),
                    [13] = CFrame.new(29.795360565185547, 72.33812713623047, 104.75857543945312),
                    [14] = CFrame.new(33.528900146484375, 72.33812713623047, 103.25914001464844),
                    [15] = CFrame.new(32.632347106933594, 72.33812713623047, 106.33911895751953),
                    [16] = CFrame.new(28.751331329345703, 72.33812713623047, 107.63384246826172),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-1.8288850784301758, 65.43811798095703, 18.8472957611084) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [2] = CFrame.new(-1.8163108825683594, 65.43811798095703, 14.31883716583252) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [3] = CFrame.new(-1.813699722290039, 65.43811798095703, 9.569472312927246) * CFrame.Angles(-0, -1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(-9.088305473327637, 65.7713851928711, 13.84492015838623) * CFrame.Angles(-0, -1.5707963705062866, 0),
                },
            },

            ["Undead Tomb"] = {
                ["Ground"] = {
                    [1] = CFrame.new(208.58721923828125, 1.0930802822113037, -11.24444580078125),
                    [2] = CFrame.new(208.330322265625, 1.0930805206298828, -14.863777160644531),
                    [3] = CFrame.new(211.96853637695312, 1.0930805206298828, -15.098663330078125),
                    [4] = CFrame.new(212.1754608154297, 1.0930802822113037, -11.697868347167969),
                    [5] = CFrame.new(211.80625915527344, 1.093080759048462, -18.897262573242188),
                    [6] = CFrame.new(208.31015014648438, 1.0930805206298828, -18.22565460205078),
                    [7] = CFrame.new(205.18606567382812, 1.0930802822113037, -12.281875610351562),
                    [8] = CFrame.new(206.37855529785156, 1.0930802822113037, -8.894813537597656),
                    [9] = CFrame.new(202.70973205566406, 1.0930800437927246, -9.756950378417969),
                    [10] = CFrame.new(204.33883666992188, 1.0930800437927246, -6.570808410644531),    
                    [11] = CFrame.new(200.68267822265625, 1.0930800437927246, -7.4723052978515625),
                    [12] = CFrame.new(202.2788543701172, 1.0930800437927246, -4.1839599609375),
                    [13] = CFrame.new(215.50286865234375, 1.0930804014205933, -12.129928588867188),
                    [14] = CFrame.new(215.25030517578125, 1.0930804014205933, -15.191490173339844),
                    [15] = CFrame.new(215.09756469726562, 1.0930806398391724, -18.61530303955078),
                    [16] = CFrame.new(218.95518493652344, 1.0930804014205933, -13.216346740722656),
                },

                ["Hill"] = {
                    [1] = CFrame.new(204.48228454589844, 7.960594177246094, -22.929019927978516),
                    [2] = CFrame.new(202.87020874023438, 7.960594177246094, -20.033052444458008),
                    [3] = CFrame.new(199.7194366455078, 7.960593223571777, -14.44839096069336),
                    [4] = CFrame.new(199.54029846191406, 7.960593223571777, -14.617575645446777),
                    [5] = CFrame.new(197.29287719726562, 7.960593223571777, -12.195398330688477),
                    [6] = CFrame.new(194.10922241210938, 7.960593223571777, -11.550943374633789),
                    [7] = CFrame.new(195.30296325683594, 7.960593223571777, -14.856521606445312),
                    [8] = CFrame.new(197.85076904296875, 7.960593223571777, -17.56131362915039),
                    [9] = CFrame.new(199.6178741455078, 7.960593223571777, -20.106489181518555),
                    [10] = CFrame.new(201.37203979492188, 7.960594177246094, -23.07328224182129),
                    [11] = CFrame.new(205.58067321777344, 7.960594177246094, -26.006155014038086),
                    [12] = CFrame.new(202.59217834472656, 7.960594177246094, -26.18454360961914),
                    [13] = CFrame.new(191.22023010253906, 7.960593223571777, -12.788358688354492),
                    [14] = CFrame.new(187.96726989746094, 7.960593223571777, -14.845324516296387),
                    [15] = CFrame.new(192.53428649902344, 7.960593223571777, -16.008136749267578),
                    [16] = CFrame.new(189.8119659423828, 7.960593223571777, -17.40191078186035),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(232.56015014648438, 1.0930812358856201, -33.112003326416016) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [2] = CFrame.new(232.70013427734375, 1.0930814743041992, -37.438838958740234) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [3] = CFrame.new(232.51046752929688, 1.0930814743041992, -41.91521072387695) * CFrame.Angles(-0, -1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(225.22654724121094, 1.0930815935134888, -37.571449279785156) * CFrame.Angles(-0, -1.5707963705062866, 0),
                },
            },

            ["Mountain Temple"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-163.33180236816406, 54.82859802246094, -526.205810546875),
                    [2] = CFrame.new(-162.74484252929688, 54.82859802246094, -523.0936889648438),
                    [3] = CFrame.new(-160.29212951660156, 54.82859802246094, -520.63525390625),
                    [4] = CFrame.new(-157.5880889892578, 54.82859802246094, -518.5684814453125),
                    [5] = CFrame.new(-167.95184326171875, 54.82859420776367, -527.1221923828125),
                    [6] = CFrame.new(-167.9913330078125, 54.82859420776367, -523.3714599609375),
                    [7] = CFrame.new(-170.88523864746094, 54.82859420776367, -526.9935913085938),
                    [8] = CFrame.new(-166.8800048828125, 54.82859420776367, -520.5382690429688),
                    [9] = CFrame.new(-167.84445190429688, 54.82859802246094, -530.1743774414062),
                    [10] = CFrame.new(-167.63661193847656, 54.82859802246094, -533.47412109375),    
                    [11] = CFrame.new(-154.87643432617188, 54.82859802246094, -518.5679321289062),
                    [12] = CFrame.new(-154.2494354248047, 54.82859802246094, -514.9783935546875),
                    [13] = CFrame.new(-164.60879516601562, 54.82859420776367, -518.3950805664062),
                    [14] = CFrame.new(-162.49105834960938, 54.82859420776367, -516.1588745117188),
                    [15] = CFrame.new(-160.34365844726562, 54.82859420776367, -514.1226196289062),
                    [16] = CFrame.new(-158.10862731933594, 54.82859420776367, -511.7642822265625),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-160.22474670410156, 58.5792236328125, -533.7460327148438),
                    [2] = CFrame.new(-161.16688537597656, 58.5792236328125, -530.2564086914062),
                    [3] = CFrame.new(-158.9446563720703, 58.5792236328125, -527.8370361328125),
                    [4] = CFrame.new(-157.02151489257812, 58.5792236328125, -525.1947021484375),
                    [5] = CFrame.new(-159.35511779785156, 58.579219818115234, -536.621337890625),
                    [6] = CFrame.new(-156.72998046875, 58.579219818115234, -535.1981811523438),
                    [7] = CFrame.new(-157.77178955078125, 58.579219818115234, -531.8515625),
                    [8] = CFrame.new(-156.15640258789062, 58.579219818115234, -528.9241333007812),
                    [9] = CFrame.new(-154.7944793701172, 58.5792236328125, -522.3333129882812),
                    [10] = CFrame.new(-154.07376098632812, 58.5792236328125, -526.662841796875),
                    [11] = CFrame.new(-152.4974822998047, 58.5792236328125, -524.1220092773438) ,
                    [12] = CFrame.new(-152.23208618164062, 58.5792236328125, -520.5164794921875),
                    [13] = CFrame.new(-155.00796508789062, 58.579219818115234, -532.3369140625),
                    [14] = CFrame.new(-152.9481658935547, 58.579219818115234, -529.6415405273438),
                    [15] = CFrame.new(-150.57354736328125, 58.579219818115234, -527.2820434570312),
                    [16] = CFrame.new(-149.61936950683594, 58.579219818115234, -522.3560180664062),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-217.05325317382812, 54.828590393066406, -552.6708374023438),
                        [2] = CFrame.new(-221.22071838378906, 54.828590393066406, -552.6968994140625),
                        [3] = CFrame.new(-225.88400268554688, 54.828590393066406, -552.8196411132812), 
                    },
                    ["Bulma"] = CFrame.new(-221.92967224121094, 54.828590393066406, -559.579345703125) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },


            ["Bizarre Town"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-539.9281616210938, 32.403968811035156, -165.18199157714844),
                    [2] = CFrame.new(-537.3861083984375, 32.42023468017578, -167.2489776611328),
                    [3] = CFrame.new(-542.3599853515625, 32.403968811035156, -167.3878631591797),
                    [4] = CFrame.new(-539.6514892578125, 32.42023468017578, -169.47039794921875),
                    [5] = CFrame.new(-544.3580932617188, 32.403968811035156, -169.72496032714844),
                    [6] = CFrame.new(-541.8588256835938, 32.42023468017578, -171.82652282714844),
                    [7] = CFrame.new(-544.4600219726562, 32.42023468017578, -174.1898956298828),
                    [8] = CFrame.new(-547.8074340820312, 32.403968811035156, -169.34425354003906),
                    [9] = CFrame.new(-533.793212890625, 32.42023849487305, -170.632568359375),
                    [10] = CFrame.new(-536.0960083007812, 32.42023849487305, -172.98785400390625),    
                    [11] = CFrame.new(-538.5908813476562, 32.42023849487305, -175.32569885253906),
                    [12] = CFrame.new(-540.746826171875, 32.42023849487305, -177.74166870117188),
                    [13] = CFrame.new(-535.1956787109375, 32.42023849487305, -164.84771728515625),
                    [14] = CFrame.new(-531.0490112304688, 32.42023849487305, -168.5460205078125),
                    [15] = CFrame.new(-532.7308349609375, 32.42023849487305, -162.51870727539062),
                    [16] = CFrame.new(-528.4871215820312, 32.42023849487305, -165.77993774414062),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-541.960693359375, 41.679237365722656, -163.9541778564453) ,
                    [2] = CFrame.new(-544.7208251953125, 41.91994094848633, -164.988037109375),
                    [3] = CFrame.new(-547.4971923828125, 41.82678985595703, -166.45640563964844),
                    [4] = CFrame.new(-550.4676513671875, 41.68936538696289, -168.07569885253906),
                    [5] = CFrame.new(-553.3363037109375, 41.497802734375, -169.7146759033203),
                    [6] = CFrame.new(-542.411376953125, 42.26610565185547, -161.11231994628906),
                    [7] = CFrame.new(-545.2329711914062, 44.08708953857422, -162.4675750732422),
                    [8] = CFrame.new(-548.456298828125, 44.1859245300293, -163.90782165527344),
                    [9] = CFrame.new(-551.2261962890625, 43.88766860961914, -165.6351776123047),
                    [10] = CFrame.new(-553.797119140625, 43.520721435546875, -166.87928771972656),
                    [11] = CFrame.new(-555.9163818359375, 41.43585205078125, -167.9232635498047),
                    [12] = CFrame.new(-556.8539428710938, 41.851654052734375, -164.9664306640625),
                    [13] = CFrame.new(-554.4122314453125, 44.143619537353516, -164.044921875),
                    [14] = CFrame.new(-551.48193359375, 44.3043212890625, -162.08538818359375),
                    [15] = CFrame.new(-548.5505981445312, 44.3043212890625, -160.53501892089844) ,
                    [16] = CFrame.new(-545.5638427734375, 44.002479553222656, -159.0748291015625),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-610.4159545898438, 32.403968811035156, -122.40049743652344) * CFrame.Angles(0, -0, -0),
                        [2] = CFrame.new(-614.901611328125, 32.403968811035156, -122.83381652832031) * CFrame.Angles(0, -0, -0),
                        [3] = CFrame.new(-620.0655517578125, 32.403968811035156, -123.11514282226562) * CFrame.Angles(0, -0, -0), 
                    },
                    ["Bulma"] = CFrame.new(-615.5183715820312, 32.403968811035156, -112.58860778808594) * CFrame.Angles(0, -0, -0),
                },
            },


            ["Entertainment District"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-46.55516052246094, 495.76129150390625, -54.707435607910156),
                    [2] = CFrame.new(-50.90057373046875, 495.76129150390625, -54.229522705078125),
                    [3] =  CFrame.new(-55.337310791015625, 495.76129150390625, -54.2668342590332),
                    [4] = CFrame.new(-46.88772964477539, 495.76129150390625, -49.27180480957031),
                    [5] = CFrame.new(-52.098106384277344, 495.76129150390625, -49.05592727661133),
                    [6] = CFrame.new(-55.604820251464844, 495.76129150390625, -49.18164825439453),
                    [7] = CFrame.new(-55.431610107421875, 495.76129150390625, -46.08221435546875),
                    [8] = CFrame.new(-52.2232551574707, 495.76129150390625, -46.026756286621094),
                    [9] = CFrame.new(-58.90385818481445, 495.76129150390625, -54.616111755371094),
                    [10] = CFrame.new(-62.35389709472656, 495.76129150390625, -54.503047943115234),    
                    [11] = CFrame.new(-62.36231994628906, 495.76129150390625, -49.14073181152344),
                    [12] = CFrame.new(-58.58946990966797, 495.76129150390625, -46.09059524536133),
                    [13] = CFrame.new(-43.85719299316406, 495.76129150390625, -49.02553176879883),
                    [14] = CFrame.new(-43.48564147949219, 495.76129150390625, -45.4312858581543),
                    [15] = CFrame.new(-41.5792236328125, 495.76129150390625, -51.531593322753906),
                    [16] = CFrame.new(-38.17770767211914, 495.76129150390625, -50.91519546508789),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-68.17353057861328, 504.40875244140625, -48.78916931152344),
                    [2] = CFrame.new(-65.44309997558594, 504.40875244140625, -48.005859375),
                    [3] = CFrame.new(-61.832916259765625, 504.40875244140625, -49.10475158691406),
                    [4] = CFrame.new(-58.37567901611328, 504.40875244140625, -49.36077117919922),
                    [5] = CFrame.new(-68.96395111083984, 504.40875244140625, -45.997711181640625),
                    [6] = CFrame.new(-65.75456237792969, 504.40875244140625, -45.053855895996094),
                    [7] = CFrame.new(-62.59028625488281, 504.40875244140625, -45.75856018066406),
                    [8] = CFrame.new(-59.39767837524414, 504.40875244140625, -46.235233306884766),
                    [9] = CFrame.new(-55.183189392089844, 504.40875244140625, -49.250057220458984),
                    [10] = CFrame.new(-56.36439895629883, 504.40875244140625, -46.118980407714844),
                    [11] = CFrame.new(-52.74821472167969, 504.40875244140625, -46.95664978027344),
                    [12] = CFrame.new(-49.899131774902344, 504.40875244140625, -47.24878692626953),
                    [13] = CFrame.new(-49.79103469848633, 504.40875244140625, -44.078006744384766),
                    [14] = CFrame.new(-53.11698913574219, 504.40875244140625, -43.47740173339844),
                    [15] = CFrame.new(-56.7740592956543, 504.40875244140625, -43.3449592590332),
                    [16] = CFrame.new(-60.24883270263672, 504.40875244140625, -43.34196853637695),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-140.54742431640625, 495.76129150390625, -66.44224548339844),
                        [2] = CFrame.new(-135.61032104492188, 495.76129150390625, -66.36257934570312),
                        [3] = CFrame.new(-130.9374542236328, 495.76129150390625, -66.4173812866211), 
                    },
                    ["Bulma"] = CFrame.new(-134.96099853515625, 495.76129150390625, -73.14171600341797),
                },
            },

            ["West City (Freezo's Invasion)"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-2338.56787109375, 19.763046264648438, -67.65560913085938),
                    [2] = CFrame.new(-2335.081298828125, 19.763046264648438, -67.77815246582031),
                    [3] = CFrame.new(-2331.46923828125, 19.763046264648438, -67.6360092163086),
                    [4] = CFrame.new(-2327.79638671875, 19.763046264648438, -67.86774444580078),
                    [5] = CFrame.new(-2339.015869140625, 19.763046264648438, -70.88257598876953),
                    [6] = CFrame.new(-2335.42822265625, 19.763046264648438, -71.00889587402344),
                    [7] = CFrame.new(-2331.98388671875, 19.763046264648438, -70.78338623046875),
                    [8] = CFrame.new(-2328.13232421875, 19.763046264648438, -70.87403869628906),
                    [9] = CFrame.new(-2338.966552734375, 19.763046264648438, -62.82512283325195),
                    [10] = CFrame.new(-2335.31494140625, 19.763046264648438, -62.840145111083984),    
                    [11] = CFrame.new(-2332.07958984375, 19.763046264648438, -62.95124435424805),
                    [12] = CFrame.new(-2328.64453125, 19.763046264648438, -62.84536361694336),
                    [13] = CFrame.new(-2324.8857421875, 19.913042068481445, -71.07695007324219),
                    [14] = CFrame.new(-2324.773193359375, 19.763046264648438, -67.70198822021484),
                    [15] = CFrame.new(-2325.30078125, 19.763046264648438, -62.48783493041992),
                    [16] = CFrame.new(-2342.257568359375, 19.763046264648438, -67.84422302246094),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-2328.084228515625, 31.41953468322754, -73.98809814453125),
                    [2] = CFrame.new(-2331.478271484375, 31.41953468322754, -74.49413299560547),
                    [3] = CFrame.new(-2334.584228515625, 31.419538497924805, -76.00594329833984),
                    [4] = CFrame.new(-2337.69482421875, 31.419538497924805, -74.47396087646484),
                    [5] = CFrame.new(-2327.887451171875, 31.41953468322754, -77.42427825927734),
                    [6] = CFrame.new(-2331.282958984375, 31.41953468322754, -77.74604034423828),
                    [7] = CFrame.new(-2334.45947265625, 31.419538497924805, -78.98389434814453),
                    [8] = CFrame.new(-2337.236083984375, 31.419538497924805, -77.6899185180664),
                    [9] = CFrame.new(-2327.7392578125, 31.419538497924805, -81.10651397705078),
                    [10] = CFrame.new(-2331.368896484375, 31.419538497924805, -81.10900115966797),
                    [11] = CFrame.new(-2334.561279296875, 31.419538497924805, -81.8802261352539),
                    [12] = CFrame.new(-2337.715087890625, 31.419538497924805, -80.98682403564453),
                    [13] = CFrame.new(-2303.138671875, 32.976097106933594, -78.58064270019531),
                    [14] = CFrame.new(-2299.666748046875, 32.976097106933594, -78.47079467773438),
                    [15] = CFrame.new(-2296.392578125, 32.976097106933594, -78.5296630859375),
                    [16] = CFrame.new(-2293.14404296875, 32.976097106933594, -78.74526977539062),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-2294.58056640625, 19.76304054260254, 33.680171966552734),
                        [2] = CFrame.new(-2290.0693359375, 19.76304054260254, 34.47228240966797),
                        [3] = CFrame.new(-2285.41162109375, 19.76304054260254, 33.80161666870117), 
                    },
                    ["Bulma"] = CFrame.new(-2288.95068359375, 19.763042449951172, 27.397872924804688),
                },
            },
    
            ["West City"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-2338.56787109375, 19.763046264648438, -67.65560913085938),
                    [2] = CFrame.new(-2335.081298828125, 19.763046264648438, -67.77815246582031),
                    [3] = CFrame.new(-2331.46923828125, 19.763046264648438, -67.6360092163086),
                    [4] = CFrame.new(-2327.79638671875, 19.763046264648438, -67.86774444580078),
                    [5] = CFrame.new(-2339.015869140625, 19.763046264648438, -70.88257598876953),
                    [6] = CFrame.new(-2335.42822265625, 19.763046264648438, -71.00889587402344),
                    [7] = CFrame.new(-2331.98388671875, 19.763046264648438, -70.78338623046875),
                    [8] = CFrame.new(-2328.13232421875, 19.763046264648438, -70.87403869628906),
                    [9] = CFrame.new(-2338.966552734375, 19.763046264648438, -62.82512283325195),
                    [10] = CFrame.new(-2335.31494140625, 19.763046264648438, -62.840145111083984),    
                    [11] = CFrame.new(-2332.07958984375, 19.763046264648438, -62.95124435424805),
                    [12] = CFrame.new(-2328.64453125, 19.763046264648438, -62.84536361694336),
                    [13] = CFrame.new(-2324.8857421875, 19.913042068481445, -71.07695007324219),
                    [14] = CFrame.new(-2324.773193359375, 19.763046264648438, -67.70198822021484),
                    [15] = CFrame.new(-2325.30078125, 19.763046264648438, -62.48783493041992),
                    [16] = CFrame.new(-2342.257568359375, 19.763046264648438, -67.84422302246094),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-2328.084228515625, 31.41953468322754, -73.98809814453125),
                    [2] = CFrame.new(-2331.478271484375, 31.41953468322754, -74.49413299560547),
                    [3] = CFrame.new(-2334.584228515625, 31.419538497924805, -76.00594329833984),
                    [4] = CFrame.new(-2337.69482421875, 31.419538497924805, -74.47396087646484),
                    [5] = CFrame.new(-2327.887451171875, 31.41953468322754, -77.42427825927734),
                    [6] = CFrame.new(-2331.282958984375, 31.41953468322754, -77.74604034423828),
                    [7] = CFrame.new(-2334.45947265625, 31.419538497924805, -78.98389434814453),
                    [8] = CFrame.new(-2337.236083984375, 31.419538497924805, -77.6899185180664),
                    [9] = CFrame.new(-2327.7392578125, 31.419538497924805, -81.10651397705078),
                    [10] = CFrame.new(-2331.368896484375, 31.419538497924805, -81.10900115966797),
                    [11] = CFrame.new(-2334.561279296875, 31.419538497924805, -81.8802261352539),
                    [12] = CFrame.new(-2337.715087890625, 31.419538497924805, -80.98682403564453),
                    [13] = CFrame.new(-2303.138671875, 32.976097106933594, -78.58064270019531),
                    [14] = CFrame.new(-2299.666748046875, 32.976097106933594, -78.47079467773438),
                    [15] = CFrame.new(-2296.392578125, 32.976097106933594, -78.5296630859375),
                    [16] = CFrame.new(-2293.14404296875, 32.976097106933594, -78.74526977539062),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-2294.58056640625, 19.76304054260254, 33.680171966552734),
                        [2] = CFrame.new(-2290.0693359375, 19.76304054260254, 34.47228240966797),
                        [3] = CFrame.new(-2285.41162109375, 19.76304054260254, 33.80161666870117), 
                    },
                    ["Bulma"] = CFrame.new(-2288.95068359375, 19.763042449951172, 27.397872924804688),
                },
            },

            ["Storm Hideout"] = {
                ["Ground"] = {
                    [1] = CFrame.new(276.1158142089844, 536.8999633789062, -533.7772827148438),
                    [2] = CFrame.new(273.7956237792969, 536.8999633789062, -536.1849975585938),
                    [3] = CFrame.new(273.8504943847656, 536.8999633789062, -531.359619140625),
                    [4] = CFrame.new(271.75396728515625, 536.8999633789062, -533.7742309570312),
                    [5] = CFrame.new(272.02459716796875, 536.8999633789062, -538.7838745117188),
                    [6] = CFrame.new(270.28643798828125, 536.8999633789062, -535.9087524414062),
                    [7] = CFrame.new(268.90411376953125, 536.8999633789062, -540.3526611328125),
                    [8] = CFrame.new(280.164794921875, 536.8999633789062, -537.2330322265625),
                    [9] = CFrame.new(277.960693359375, 536.8999633789062, -539.5422973632812),
                    [10] = CFrame.new(275.5675354003906, 536.8999633789062, -541.4056396484375),    
                    [11] = CFrame.new(281.7215576171875, 536.8999633789062, -539.95166015625),
                    [12] = CFrame.new(279.5833740234375, 536.8999633789062, -541.9986572265625),
                    [13] = CFrame.new(273.1459045410156, 536.8999633789062, -544.003173828125),
                    [14] = CFrame.new(267.4660339355469, 536.8999633789062, -542.8015747070312),
                    [15] = CFrame.new(264.3894348144531, 536.8999633789062, -544.2769775390625),
                    [16] = CFrame.new(263.0137939453125, 536.8999633789062, -548.9840087890625),
                },

                ["Hill"] = {
                    [1] = CFrame.new(256.4298095703125, 541.12939453125, -540.4310302734375),
                    [2] = CFrame.new(259.94915771484375, 541.12939453125, -540.5270385742188),
                    [3] = CFrame.new(263.2398376464844, 541.12939453125, -540.1962890625),
                    [4] = CFrame.new(266.37200927734375, 541.12939453125, -538.3355102539062),
                    [5] = CFrame.new(257.4338073730469, 541.12939453125, -537.2153930664062),
                    [6] = CFrame.new(260.5759582519531, 541.12939453125, -537.2685546875),
                    [7] = CFrame.new(263.8914489746094, 541.12939453125, -536.3025512695312),
                    [8] = CFrame.new(266.9289855957031, 541.12939453125, -535.0972900390625),
                    [9] = CFrame.new(257.55853271484375, 541.12939453125, -534.1866455078125),
                    [10] = CFrame.new(260.69561767578125, 541.12939453125, -533.990478515625) ,
                    [11] = CFrame.new(263.81573486328125, 541.12939453125, -532.7820434570312),
                    [12] = CFrame.new(267.03668212890625, 541.12939453125, -531.8619384765625),
                    [13] = CFrame.new(266.4343566894531, 539.8976440429688, -550.0392456054688),
                    [14] = CFrame.new(263.8668212890625, 539.8976440429688, -552.4157104492188)  ,
                    [15] = CFrame.new(266.56427001953125, 539.8976440429688, -554.3898315429688),
                    [16] = CFrame.new(261.51300048828125, 539.8976440429688, -559.025634765625),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(263.1932067871094, 536.8999633789062, -501.8247985839844) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(267.6446838378906, 536.8999633789062, -501.6645202636719) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(273.4220275878906, 536.8999633789062, -501.67034912109375) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732) , 
                    },
                    ["Bulma"] = CFrame.new(268.397705078125, 536.8999633789062, -511.0014953613281) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },
            ["Infinity Train"] = {
                ["Ground"] = {
                    [1] = CFrame.new(29.873048782348633, -15.0777587890625, 336.43212890625),
                    [2] = CFrame.new(31.55721664428711, -15.0777587890625, 333.7015075683594),
                    [3] = CFrame.new(32.91865539550781, -15.0777587890625, 331.1833801269531),
                    [4] = CFrame.new(34.3801155090332, -15.0777587890625, 328.5841979980469),
                    [5] = CFrame.new(32.56523132324219, -15.077757835388184, 338.495361328125),
                    [6] = CFrame.new(34.197532653808594, -15.0777587890625, 335.89434814453125),
                    [7] = CFrame.new(36.00400161743164, -15.0777587890625, 333.1783142089844),
                    [8] = CFrame.new(37.58716583251953, -15.0777587890625, 330.4546203613281),
                    [9] = CFrame.new(36.10966110229492, -15.0777587890625, 325.52813720703125),
                    [10] = CFrame.new(38.67676544189453, -15.0777587890625, 327.452392578125),    
                    [11] = CFrame.new(41.91072082519531, -15.0777587890625, 327.4654541015625),
                    [12] = CFrame.new(40.008583068847656, -15.0777587890625, 324.59613037109375),
                    [13] = CFrame.new(25.383556365966797, -15.0777587890625, 332.9354248046875),
                    [14] = CFrame.new(27.23531723022461, -15.0777587890625, 330.2837829589844),
                    [15] = CFrame.new(28.81470489501953, -15.0777587890625, 327.3663330078125),
                    [16] = CFrame.new(30.437252044677734, -15.0777587890625, 324.3457946777344),
                },


                ["Hill"] = {
                    [1] = CFrame.new(41.42992401123047, -10.761448860168457, 329.61187744140625),
                    [2] = CFrame.new(39.81901550292969, -10.74949836730957, 332.1681823730469),
                    [3] = CFrame.new(38.25169372558594, -10.75703239440918, 334.56573486328125),
                    [4] =  CFrame.new(36.79578399658203, -10.722905158996582, 336.9851379394531),
                    [5] = CFrame.new(34.89577102661133, -10.814603805541992, 339.505615234375),
                    [6] = CFrame.new(43.798805236816406, -9.669116973876953, 331.041748046875),
                    [7] = CFrame.new(42.06483459472656, -9.71052360534668, 333.53961181640625),
                    [8] = CFrame.new(40.34364700317383, -9.734641075134277, 336.0984802246094),
                    [9] = CFrame.new(38.529544830322266, -9.902709007263184, 338.1285705566406),
                    [10] = CFrame.new(37.140628814697266, -9.75057315826416, 340.9956970214844),
                    [11] = CFrame.new(39.80025863647461, -8.575921058654785, 342.3591003417969),
                    [12] = CFrame.new(41.272518157958984, -8.650201797485352, 339.7265930175781),
                    [13] = CFrame.new(43.043094635009766, -8.619848251342773, 337.1202087402344),
                    [14] = CFrame.new(44.482643127441406, -8.629029273986816, 334.84283447265625),
                    [15] = CFrame.new(7.742193222045898, -7.6272196769714355, 339.3094787597656),
                    [16] = CFrame.new(7.315534591674805, -7.627219200134277, 342.48785400390625),
                },

                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(87.3070068359375, -15.077746391296387, 343.0149230957031) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(91.78126525878906, -15.077746391296387, 343.1064758300781) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] =   CFrame.new(96.72727966308594, -15.077746391296387, 343.91009521484375) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(90.88911437988281, -15.077746391296387, 335.400390625) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },


            ["Cursed Womb"] = {
                ["Ground"] = {
                    [1] = CFrame.new(375.4761657714844, 122.06111145019531, -95.70745849609375),
                    [2] = CFrame.new(377.8339538574219, 122.06111145019531, -98.5380630493164),
                    [3] = CFrame.new(378.66864013671875, 122.06111145019531, -101.65446472167969),
                    [4] = CFrame.new(378.9903564453125, 122.06111145019531, -105.52156829833984),
                    [5] = CFrame.new(382.14813232421875, 122.06111145019531, -93.20935821533203),
                    [6] = CFrame.new(384.4913330078125, 122.06111145019531, -96.10357666015625),
                    [7] = CFrame.new(384.5663146972656, 122.06111145019531, -99.76707458496094),
                    [8] = CFrame.new(384.8219909667969, 122.06111145019531, -103.239013671875),
                    [9] =  CFrame.new(385.1625671386719, 122.06111145019531, -106.92814636230469),
                    [10] = CFrame.new(377.1276550292969, 122.06111145019531, -108.4106216430664),    
                    [11] = CFrame.new(387.09417724609375, 122.06111145019531, -97.45933532714844),
                    [12] =  CFrame.new(387.579833984375, 122.06111145019531, -101.11663818359375),
                    [13] = CFrame.new(378.77081298828125, 122.06111145019531, -90.2545166015625),
                    [14] = CFrame.new(382.1344909667969, 122.06111145019531, -89.68250274658203),
                    [15] = CFrame.new(384.2567138671875, 122.06111145019531, -110.08502197265625),
                    [16] = CFrame.new(387.89764404296875, 122.06111145019531, -104.38597106933594),
                },


                ["Hill"] = {
                    [1] = CFrame.new(370.2013244628906, 125.39746856689453, -94.50399780273438),
                    [2] = CFrame.new(366.7919006347656, 125.39746856689453, -95.53001403808594),
                    [3] = CFrame.new(372.2124938964844, 125.39746856689453, -97.41812133789062),
                    [4] = CFrame.new(373.17041015625, 125.39746856689453, -100.65673828125),
                    [5] = CFrame.new(363.74774169921875, 125.39746856689453, -96.28041076660156),
                    [6] = CFrame.new(362.4122009277344, 125.39746856689453, -99.35128784179688),
                    [7] = CFrame.new(365.60491943359375, 125.39746856689453, -99.20856475830078),
                    [8] = CFrame.new(368.9860534667969, 125.39746856689453, -99.01911163330078),
                    [9] = CFrame.new(370.3214111328125, 125.39746856689453, -102.07938385009766),
                    [10] = CFrame.new(373.5555419921875, 125.39746856689453, -103.9023208618164),
                    [11] = CFrame.new(373.67962646484375, 125.39746856689453, -107.00299835205078),
                    [12] = CFrame.new(370.53466796875, 125.39746856689453, -105.02913665771484),
                    [13] =  CFrame.new(372.2917175292969, 125.39746856689453, -109.55270385742188),
                    [14] = CFrame.new(369.2396240234375, 125.39746856689453, -107.67861938476562),
                    [15] = CFrame.new(366.766357421875, 125.39746856689453, -109.4957275390625) ,
                    [16] = CFrame.new(365.6781921386719, 125.39746856689453, -105.64868927001953),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(375.4161682128906, 122.06111145019531, -121.79158020019531) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [2] = CFrame.new(374.74151611328125, 122.06111145019531, -125.97207641601562) * CFrame.Angles(-0, -1.5707963705062866, 0),
                        [3] = CFrame.new(375.198486328125, 122.06111145019531, -130.59153747558594) * CFrame.Angles(-0, -1.5707963705062866, 0), 
                    },
                    ["Bulma"] = CFrame.new(360.7737121582031, 122.06111145019531, -124.67512512207031) * CFrame.Angles(-0, -1.5707963705062866, 0),
                },
            },
           
            ["Thriller Park"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-223.22250366210938, 109.37401580810547, -641.5128173828125),
                    [2] = CFrame.new(-227.80418395996094, 109.37401580810547, -635.7719116210938),
                    [3] = CFrame.new(-225.96359252929688, 109.37401580810547, -643.7072143554688),
                    [4] = CFrame.new(-227.17361450195312, 109.37401580810547, -646.7116088867188),
                    [5] = CFrame.new(-219.71568298339844, 109.37400817871094, -641.684814453125),
                    [6] = CFrame.new(-220.9564971923828, 109.37400817871094, -639.061279296875),
                    [7] = CFrame.new(-224.81961059570312, 109.37400817871094, -633.7529907226562),
                    [8] = CFrame.new(-229.86756896972656, 109.37400817871094, -638.604736328125),
                    [9] = CFrame.new(-216.35696411132812, 109.37400817871094, -641.6439819335938),
                    [10] = CFrame.new(-217.6221160888672, 109.37400817871094, -638.76953125),    
                    [11] = CFrame.new(-222.23951721191406, 109.37400817871094, -631.83837890625),
                    [12] = CFrame.new(-225.07766723632812, 109.37400817871094, -630.4147338867188),
                    [13] = CFrame.new(-232.09913635253906, 109.37401580810547, -641.4098510742188),
                    [14] = CFrame.new(-228.3379669189453, 109.37401580810547, -649.8090209960938),
                    [15] = CFrame.new(-233.46371459960938, 109.37401580810547, -644.4705200195312),
                    [16] = CFrame.new(-216.71463012695312, 109.37401580810547, -635.0079345703125),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-218.5472412109375, 112.1015396118164, -645.4920043945312),
                    [2] = CFrame.new(-221.8396759033203, 112.1015396118164, -645.0758666992188),
                    [3] = CFrame.new(-224.02731323242188, 112.1015396118164, -647.5641479492188),
                    [4] = CFrame.new(-220.7797393798828, 112.1015396118164, -647.8206787109375),
                    [5] = CFrame.new(-218.5752410888672, 114.61528778076172, -649.6912231445312),
                    [6] = CFrame.new(-221.3768768310547, 114.61528778076172, -651.1923217773438),
                    [7] = CFrame.new(-215.26197814941406, 114.61528778076172, -648.7979736328125),
                    [8] = CFrame.new(-216.20994567871094, 114.61528778076172, -651.87646484375),
                    [9] = CFrame.new(-218.93719482421875, 114.61528778076172, -653.2685546875),
                    [10] = CFrame.new(-223.5064239501953, 113.23728942871094, -652.7530517578125),
                    [11] = CFrame.new(-226.8870086669922, 113.23728942871094, -652.5302124023438),
                    [12] = CFrame.new(-223.1650390625, 113.23728942871094, -655.8432006835938),
                    [13] = CFrame.new(-226.2116241455078, 113.23728942871094, -655.599853515625),
                    [14] = CFrame.new(-212.81431579589844, 114.61528778076172, -650.8815307617188),
                    [15] = CFrame.new(-220.60743713378906, 114.61528778076172, -656.3530883789062),
                    [16] = CFrame.new(-217.37059020996094, 114.61528778076172, -656.138916015625),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(-176.8423309326172, 109.37401580810547, -667.56005859375) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [2] = CFrame.new(-172.60658264160156, 109.37401580810547, -667.3743896484375) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                        [3] = CFrame.new(-168.3042449951172, 109.37401580810547, -667.09130859375) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732), 
                    },
                    ["Bulma"] = CFrame.new(-172.16036987304688, 109.37401580810547, -674.5574340820312) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732),
                },
            },

            ["Rain Village"] = {
                ["Ground"] = {
                    [1] = CFrame.new(-71.74403381347656, 4.287008285522461, -16.21238899230957, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [2] = CFrame.new(-71.64053344726562, 4.287007808685303, -13.050935745239258, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [3] = CFrame.new(-71.46590423583984, 4.287007808685303, -10.004903793334961, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [4] = CFrame.new(-74.6563949584961, 4.287008285522461, -16.434762954711914, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [5] = CFrame.new(-74.63853454589844, 4.287008285522461, -13.144845962524414, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [6] = CFrame.new(-77.71919250488281, 4.287008285522461, -16.57874870300293, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [7] = CFrame.new(-77.77388000488281, 4.287008285522461, -13.724557876586914, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [8] = CFrame.new(-78.33277130126953, 4.2870073318481445, -10.879251480102539, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [9] = CFrame.new(-80.56182098388672, 4.287008285522461, -16.84147071838379, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [10] = CFrame.new(-80.74667358398438, 4.287008285522461, -13.970220565795898, 1, 0, -0, -0, 1, -0, 0, 0, 1),    
                    [11] = CFrame.new(-81.264404296875, 4.287007808685303, -10.793481826782227, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [12] = CFrame.new(-84.06262969970703, 4.287008285522461, -16.81428337097168, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [13] = CFrame.new(-84.26216888427734, 4.287007808685303, -13.56452751159668, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [14] = CFrame.new(-84.78407287597656, 4.287007808685303, -10.585336685180664, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [15] = CFrame.new(-86.61212158203125, 4.287008285522461, -16.59544563293457, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [16] = CFrame.new(-87.55323028564453, 4.287007808685303, -13.559000015258789, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                },

                ["Hill"] = {
                    [1] = CFrame.new(-70.77149200439453, 8.644067764282227, -3.1954879760742188),
                    [2] = CFrame.new(-71.91324615478516, 8.609624862670898, -5.600104808807373),
                    [3] = CFrame.new(-73.20967864990234, 8.586286544799805, -8.072832107543945, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [4] = CFrame.new(-74.42396545410156, 8.537230491638184, -10.833208084106445, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [5] = CFrame.new(-73.00569152832031, 8.918804168701172, -2.311408519744873, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [6] = CFrame.new(-74.42498016357422, 8.901639938354492, -4.881475448608398, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [7] = CFrame.new(-75.74673461914062, 8.901104927062988, -7.02252197265625, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [8] = CFrame.new(-76.9124526977539, 8.873926162719727, -9.347135543823242, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [9] = CFrame.new(-75.28958892822266, 9.204479217529297, -1.3288214206695557, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [10] = CFrame.new(-76.424072265625, 9.178013801574707, -3.5913805961608887, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [11] = CFrame.new(-77.84907531738281, 9.180611610412598, -5.847796440124512, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [12] = CFrame.new(-78.97406005859375, 9.134588241577148, -8.414565086364746, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [13] = CFrame.new(-87.24465942382812, 9.646183967590332, -9.70932388305664, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [14] = CFrame.new(-84.25188446044922, 9.662909507751465, -9.625805854797363, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [15] = CFrame.new(-81.73150634765625, 9.623245239257812, -9.823930740356445, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                    [16] = CFrame.new(-87.10787963867188, 10.170489311218262, -7.0905680656433105, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = CFrame.new(0.23870472609996796, 4.287006378173828, 18.637012481689453, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                        [2] = CFrame.new(-5.419282913208008, 4.287006378173828, 18.635818481445312, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                        [3] = CFrame.new(-10.766857147216797, 4.287006378173828, 18.454753875732422, 1, 0, -0, -0, 1, -0, 0, 0, 1), 
                    },
                    ["Bulma"] = CFrame.new(-4.505878448486328, 4.28700590133667, 30.21428108215332, 1, 0, -0, -0, 1, -0, 0, 0, 1),
                },
            },
            --[[
                ["Bizarre Town"] = {
                ["Ground"] = {
                    [1] = ,
                    [2] = ,
                    [3] = ,
                    [4] = ,
                    [5] = ,
                    [6] = ,
                    [7] = ,
                    [8] = ,
                    [9] = ,
                    [10] = ,    
                    [11] = ,
                    [12] = ,
                    [13] = ,
                    [14] = ,
                    [15] = ,
                    [16] = ,
                },
                ["Hill"] = {
                    [1] = ,
                    [2] = ,
                    [3] = ,
                    [4] = ,
                    [5] = ,
                    [6] = ,
                    [7] = ,
                    [8] = ,
                    [9] = ,
                    [10] = ,
                    [11] = ,
                    [12] = ,
                    [13] = ,
                    [14] = ,
                    [15] = ,
                    [16] = ,
                },
                ["Economy"] = {
                    ["SpeedWagon"] = {
                        [1] = ,
                        [2] = ,
                        [3] = , 
                    },
                    ["Bulma"] = ,
                },
            },]]
        }

        number_of_hill = 1
        number_of_ground = 1
        number_of_speedwagon = 1
        TowerPlacement = function(Unit)
            local GetCframe;
            HillPlacement = nil
            GroundPlacement = nil
            SpeedWagonPlacement = nil
            BulmaPlacement = nil
            if MapData.mode == "Cursed Womb" then 
                MapType = "Cursed Womb"
            elseif MapData.mode == "Nightmare Hunt" then 
                for i,v in pairs(PlacementDataBase)do 
                    if string.find(tostring(MapData.name),tostring(i)) then 
                        MapType = tostring(i)
                    end
                end
                else
                MapType = MapData.name
            end
            if Unit == "speedwagon" then 
                GetCframe = PlacementDataBase[MapType]["Economy"]["SpeedWagon"][number_of_speedwagon]
                SpeedWagonPlacement = true 
            elseif  Unit == "bulma" then 
                GetCframe = PlacementDataBase[MapType]["Economy"]["Bulma"]
                BulmaPlacement = true    
            else
                if DataBaseUnit[Unit]["Type"] == "Hill" then 
                    GetCframe = PlacementDataBase[MapType]["Hill"][number_of_hill]
                    HillPlacement = true 
                    else
                    GetCframe = PlacementDataBase[MapType]["Ground"][number_of_ground] 
                    GroundPlacement = true 
                end
            end
            return GetCframe
        end
        -- Full Auto Play 
        FULLAUTOPLAYSPAWNCOUT = {
            [1] = 0,
            [2] = 0,
            [3] = 0,
            [4] = 0,
            [5] = 0,
            [6] = 0,
        }

        ---------------------------
        number_of_hill_FAP = 1
        number_of_ground_FAP = 1
        number_of_speedwagon_FAP = 1
        ---------------------------
        
        -- DataSave["U1 Spawn Cap"]

        
        LoopInGame024 = task.spawn(function()
            repeat task.wait(.1)
                pcall(function()
                    if DataSave["AI Play"] and not  DataSave["Marco Play"] then 
                        Service[8].PlayerGui.MessageGui.messages.Visible = false
                        Service[3].packages.assets["ui_sfx"]["error"].Volume = 0
                        InGameMoney = tonumber(Service[8]._stats.resource.Value)
                        SuccessFAP = false
                        if MapData.mode == "Cursed Womb" then 
                            MapType = "Cursed Womb"
                        elseif MapData.mode == "Nightmare Hunt" then 
                            for i,v in pairs(PlacementDataBase)do 
                                if string.find(tostring(MapData.name),tostring(i)) then 
                                    MapType = tostring(i)
                                end
                            end
                        else
                            MapType = MapData.name
                        end
                        -- Mapfind


                        for i,v in pairs(DATAFULLAUTOPLAY)do 
                        if v["Spawn Cap"] and FULLAUTOPLAYSPAWNCOUT[i] < v["Spawn Cap"] and FULLAUTOPLAYSPAWNCOUT[i] < DataSave["U"..tostring(i).." Spawn Cap"] then 
                            SuccessFAP = true 
                            if v["Cost"] and InGameMoney >= v["Cost"]  then 
                                if v["Unit"] == "speedwagon" then    
                                    BaseGetCFrame = PlacementDataBase[MapType]["Economy"]["SpeedWagon"][number_of_speedwagon_FAP]
                                    args = {
                                        [1] = v["uuid"],
                                        [2] = BaseGetCFrame
                                    }
                                    delay(0,function() 
                                        Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) 
                                    end)
                                elseif v["Unit"] == "bulma" then    
                                    BaseGetCFrame = PlacementDataBase[MapType]["Economy"]["Bulma"]
                                    args = {
                                        [1] = v["uuid"],
                                        [2] = BaseGetCFrame
                                    }
                                    delay(0,function() 
                                        Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) 
                                    end)
                                else
                                    if v["Type"] == "Hill" then 
                                            BaseGetCFrame = PlacementDataBase[MapType]["Hill"][number_of_hill_FAP]
                                            args = {
                                                [1] = v["uuid"],
                                                [2] = BaseGetCFrame
                                            }
                                            delay(0,function() 
                                                Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) 
                                            end)
                                            
                                        else
                                            BaseGetCFrame = PlacementDataBase[MapType]["Ground"][number_of_ground_FAP]
                                            args = {
                                                [1] = v["uuid"],
                                                [2] = BaseGetCFrame
                                             }
                                            delay(0,function() 
                                            Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) 
                                            end)
                                        end
                                    end
                                end
                            end
                            --[[if SuccessFAP then 
                                task.wait(2)
                            end]]
                        end
                        if not SuccessFAP then 
                            for i = 1,UnitValueFAP do     
                                for x,y in pairs(DATAFULLAUTOPLAY)do 
                                    if y["Unit"] == tostring(getgenv()["IndexUnitFAP"..tostring(i)]["_stats"]["id"].Value) 
                                        and tonumber(getgenv()["IndexUnitFAP"..tostring(i)]["_stats"]["upgrade"].Value) < DataSave["U"..tostring(x).." Upgrade Cap"] then 
                                            Service[3].endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(getgenv()["IndexUnitFAP"..tostring(i)])
                                    end
                                end
                                task.wait(.4)
                           end
                        end
                    end
                end)
            until getgenv().Teleport == true 
        end)
        -- Marco Play 
    
    
        LoopInGame005 = task.spawn(function() -- Update Game Time 
            repeat task.wait(1)
                local success, error = pcall(function()
                    if DataSave["Auto Upgrade"] then 
                        if tonumber(IndexPlay2) >=  tonumber(Index) then 
                            for i = 1,UnitValue do 
                                Network = Service[3].endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(getgenv()["IndexUnit"..tostring(i)]) 
                                task.wait(.7)
                            end
                            task.wait(5)
                        end
                    end
                end) 
            until getgenv().Teleport == true 
        end)
    
    
        LoopInGame004 = task.spawn(function() -- Update Game Time 
            repeat task.wait(1)
                local success, error = pcall(function()
                    if DataSave["Marco Play"] then 
                        if Index then 
                            Options.Label020:SetText("Action : "..tostring(IndexPlay2).."/"..tostring(Index))
                        end
                    end
                end) 
            until getgenv().Teleport == true 
        end)
        
        LoopInGame023 = task.spawn(function() -- Sell Speed Wagon
            repeat task.wait(0.03)
                local success, error = pcall(function() 
                        if tonumber(GeneralWave.Text) >= tonumber(DataSave["Select Wave Sell SpeedWagon"]) then
                            if DataSave["Auto Sell speedwagon At Wave"] then 
                                for i,v in pairs(workspace["_UNITS"]:GetChildren())do    
                                    if tostring(v["_stats"]["player"].Value) == Service[8].Name 
                                    and tostring(v["_stats"]["id"].Value) == "speedwagon" then
                                    Service[3].endpoints.client_to_server.sell_unit_ingame:InvokeServer(v)
                                end
                            end
                        end
                    end
                end) 
            until getgenv().Teleport == true 
        end)
    
        LoopInGame012 = task.spawn(function() -- Update Game Time 
            repeat task.wait(0.03)
                local success, error = pcall(function() 
                        if tonumber(GeneralWave.Text) >= tonumber(DataSave["Select Wave Sell"]) then
                            if DataSave["Auto Sell At Wave"] then 
                                for i,v in pairs(workspace["_UNITS"]:GetChildren())do    
                                    if tostring(v["_stats"]["player"].Value) == Service[8].Name and not string.find(v.Name,"bulma") then
                                    Service[3].endpoints.client_to_server.sell_unit_ingame:InvokeServer(v)
                                end
                            end
                            elseif DataSave["Auto Leave At Wave"] then 
                            getgenv().Teleport = true 
                            Service[16]:Teleport(8304191830, Service[8])    
                        end
                    end
                end) 
            until getgenv().Teleport == true 
        end)
        local p_sc = require(game.ReplicatedStorage.src.Loader)
        local placement = p_sc.load_client_service(script, "PlacementServiceClient")
        LoopInGame014 = task.spawn(function() 
            repeat task.wait()
                local success, error = pcall(function() 
                    if DataSave["Place Anywhere"] then 
                        placement.can_place = true
                        else
                        task.wait(.1)
                    end
                end) 
            until getgenv().Teleport == true 
        end)

        LoopInGame013 = task.spawn(function() 
            repeat task.wait(0.03)
                local success, error = pcall(function() 
                    if DataSave["Remove Map"] then 
                    if workspace["_map"] then workspace["_map"]:Destroy() end
                    for i,v in pairs(workspace["_terrain"].terrain:GetChildren())do v:Destroy()end end
                    if DataSave["Clumsy"] then 
                        for i,v in pairs(workspace["_UNITS"]:GetChildren())do    
                            if tostring(v["_stats"]["player"].Value) == Service[8].Name and v:FindFirstChild("_hitbox") then
                                v["_hitbox"]:Destroy()
                            end
                        end
                    end
                end) 
            until getgenv().Teleport == true 
        end)

        -- Buff 100 %
        local Orwin_buff_target = 1
        local Orwin_count_2 = 0 
        LoopInGame014 = task.spawn(function() -- Orwin
            repeat task.wait(0.03)
                local success, error = pcall(function() 
                    if DataSave["Auto_Use_Abillties"] and DataSave["Abillties_Select"]["Orwin"] then         
                        if DataSave["Orwin_Buff_Method"] == "All" then 
                            for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                                if string.find(v.Name,"erwin") then
                                    if v["_stats"]["player"].Value == game.Players.LocalPlayer then    
                                        Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                   end
                               end
                           end
                            elseif DataSave["Orwin_Buff_Method"] == "Normal" then
                                for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                                    if string.find(v.Name,"erwin") then
                                        if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                        repeat wait() local p = Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v) until p    
                                        task.wait(32)
                                    end
                                end
                            end  
                            elseif DataSave["Orwin_Buff_Method"] == "100% Need 4 Unit Only" then   
                                local Orwin_count = 0 
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                    if string.find(v.Name,"erwin") then 
                                        Orwin_count = Orwin_count + 1 
                                    end
                                end
                                if Orwin_count == 4 then
                                local c = 1
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                if string.find(v.Name,"erwin") and not v:FindFirstChild("3cq8y") then 
                                        local p1 = Instance.new("NumberValue")
                                        p1.Name = "3cq8y" 
                                        p1.Value = c
                                        c = c + 1
                                        p1.Parent = v
                                    end
                                end
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                    if string.find(v.Name,"erwin") and v:FindFirstChild("3cq8y") and v["3cq8y"].Value == Orwin_buff_target then 
                                    repeat wait() local mt = game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v) until mt 
                                    Orwin_count_2 = Orwin_count_2 + 1
                                    Orwin_buff_target = Orwin_buff_target + 1
                                    if Orwin_count_2 == 1 then task.wait(5) elseif Orwin_count_2 == 2 then task.wait(26) elseif Orwin_count_2 == 3 then  task.wait(5) elseif Orwin_count_2 == 4 then task.wait(26) Orwin_count_2 = 0 end end end
                                    if Orwin_buff_target > 4 then 
                                    Orwin_buff_target = 1
                                end
                            end
                        end
                    end           
                end) 
            until getgenv().Teleport == true 
        end)


        local Wenda_buff_target = 1
        local Wenda_count_2 = 0 
        LoopInGame015 = task.spawn(function() -- Wenda
            repeat task.wait(0.03)
                local success, error = pcall(function() 
                    if DataSave["Auto_Use_Abillties"] and DataSave["Abillties_Select"]["Wenda"] then         
                        if DataSave["Wenda_Buff_Method"] == "All" then 
                            for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                                if string.find(v.Name,"wendy") then
                                    if v["_stats"]["player"].Value == game.Players.LocalPlayer then    
                                        Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                   end
                               end
                           end
                            elseif DataSave["Wenda_Buff_Method"] == "Normal" then
                                for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                                    if string.find(v.Name,"wendy") then
                                        if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                        repeat wait() local p = Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v) until p    
                                        task.wait(32)
                                    end
                                end
                            end  
                            elseif DataSave["Wenda_Buff_Method"] == "100% Need 4 Unit Only" then   
                                local Wenda_count = 0 
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                    if string.find(v.Name,"wendy") then 
                                        Wenda_count = Wenda_count + 1 
                                    end
                                end
                                if Wenda_count == 4 then
                                local c = 1
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                if string.find(v.Name,"wendy") and not v:FindFirstChild("3cq8y") then 
                                        local p1 = Instance.new("NumberValue")
                                        p1.Name = "3cq8y" 
                                        p1.Value = c
                                        c = c + 1
                                        p1.Parent = v
                                    end
                                end
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                    if string.find(v.Name,"wendy") and v:FindFirstChild("3cq8y") and v["3cq8y"].Value == Wenda_buff_target then 
                                    repeat wait() local mt = game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v) until mt 
                                    Wenda_count_2 = Wenda_count_2 + 1
                                    Wenda_buff_target = Wenda_buff_target + 1
                                    if Wenda_count_2 == 1 then task.wait(5) elseif Wenda_count_2 == 2 then task.wait(26) elseif Wenda_count_2 == 3 then  task.wait(5) elseif Wenda_count_2 == 4 then task.wait(26) Wenda_count_2 = 0 end end end
                                    if Wenda_buff_target > 4 then 
                                    Wenda_buff_target = 1
                                end
                            end
                        end
                    end           
                end) 
            until getgenv().Teleport == true 
        end)


        local Leafy_buff_target = 1
        local Leafy_count_2 = 0 
        LoopInGame016 = task.spawn(function() -- Leafy
            repeat task.wait(0.03)
                local success, error = pcall(function() 
                    if DataSave["Auto_Use_Abillties"] and DataSave["Abillties_Select"]["Leafy"] then         
                        if DataSave["Leafy_Buff_Method"] == "All" then 
                            for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                                if tostring(v["_stats"]["id"].Value) == "leafa_evolved" then
                                    if v["_stats"]["player"].Value == game.Players.LocalPlayer then    
                                        Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                   end
                               end
                           end
                            elseif DataSave["Leafy_Buff_Method"] == "Normal" then
                                for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                                    if tostring(v["_stats"]["id"].Value) == "leafa_evolved" then
                                        if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                        repeat wait() local p = Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v) until p    
                                        task.wait(32)
                                    end
                                end
                            end  
                            elseif DataSave["Leafy_Buff_Method"] == "100% Need 4 Unit Only" then   
                                local Leafy_count = 0 
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                    if tostring(v["_stats"]["id"].Value) == "leafa_evolved" 
                                    and v["_stats"]["player"].Value == game.Players.LocalPlayer then 
                                        Leafy_count = Leafy_count + 1 
                                    end
                                end
                                if Leafy_count == 4 then
                                local c = 1
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                if tostring(v["_stats"]["id"].Value) == "leafa_evolved" 
                                and v["_stats"]["player"].Value == game.Players.LocalPlayer and not v:FindFirstChild("3cq8y") then 
                                        local p1 = Instance.new("NumberValue")
                                        p1.Name = "3cq8y" 
                                        p1.Value = c
                                        c = c + 1
                                        p1.Parent = v
                                    end
                                end
                                for i,v in pairs(workspace._UNITS:GetChildren())do 
                                    if tostring(v["_stats"]["id"].Value) == "leafa_evolved" 
                                    and v["_stats"]["player"].Value == game.Players.LocalPlayer and v:FindFirstChild("3cq8y") and v["3cq8y"].Value == Leafy_buff_target then 
                                    repeat wait() local mt = game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(v) until mt 
                                    Leafy_count_2 = Leafy_count_2 + 1
                                    Leafy_buff_target = Leafy_buff_target + 1
                                    if Leafy_count_2 == 1 then task.wait(5) elseif Leafy_count_2 == 2 then task.wait(26) elseif Leafy_count_2 == 3 then  task.wait(5) elseif Leafy_count_2 == 4 then task.wait(26) Leafy_count_2 = 0 end end end
                                    if Leafy_buff_target > 4 then 
                                    Leafy_buff_target = 1
                                end
                            end
                        end
                    end           
                end) 
            until getgenv().Teleport == true 
        end)

        LoopInGame016 = task.spawn(function() 
            repeat task.wait(1)
            local success, error = pcall(function() 
                if DataSave["Universe Auto Abillties"]["Unit_1"] then 
                    for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                        if tostring(v["_stats"]["id"].Value) == UnitEquip[1]["ID"] then
                            if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                    Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    task.wait(DataSave["U1_delay"])
                                end 
                            end    
                        end 
                    end
                end) 
            until getgenv().Teleport == true 
        end)

        LoopInGame017 = task.spawn(function() 
            repeat task.wait(1)
                local success, error = pcall(function() 
                    if DataSave["Universe Auto Abillties"]["Unit_2"] then 
                        for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                            if tostring(v["_stats"]["id"].Value) == UnitEquip[2]["ID"] then
                            if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                    Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    task.wait(DataSave["U2_delay"])
                                end 
                            end    
                        end 
                    end
                end) 
            until getgenv().Teleport == true 
        end)

        LoopInGame018 = task.spawn(function() 
            repeat task.wait(1)
                local success, error = pcall(function() 
                    if DataSave["Universe Auto Abillties"]["Unit_3"] then 
                        for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                            if tostring(v["_stats"]["id"].Value) == UnitEquip[3]["ID"] then
                            if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                    Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    task.wait(DataSave["U3_delay"])
                                end 
                            end    
                        end 
                    end
                end) 
            until getgenv().Teleport == true 
        end)

        LoopInGame019 = task.spawn(function() 
            repeat task.wait(1)
                local success, error = pcall(function() 
                    if DataSave["Universe Auto Abillties"]["Unit_4"] then 
                        for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                            if tostring(v["_stats"]["id"].Value) == UnitEquip[4]["ID"] then
                            if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                    Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    task.wait(DataSave["U4_delay"])
                                end 
                            end    
                        end 
                    end
                end) 
            until getgenv().Teleport == true 
        end)


        LoopInGame020 = task.spawn(function() 
            repeat task.wait(1)
                local success, error = pcall(function() 
                    if DataSave["Universe Auto Abillties"]["Unit_5"] then 
                        for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                            if tostring(v["_stats"]["id"].Value) == UnitEquip[5]["ID"] then
                            if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                    Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    task.wait(DataSave["U5_delay"])
                                end 
                            end    
                        end 
                    end
                end) 
            until getgenv().Teleport == true 
        end)

        LoopInGame021 = task.spawn(function() 
            repeat task.wait(1)
                local success, error = pcall(function() 
                    if DataSave["Universe Auto Abillties"]["Unit_6"] then 
                        for i,v in pairs(Service[1]["_UNITS"]:GetChildren())do
                            if tostring(v["_stats"]["id"].Value) == UnitEquip[6]["ID"] then
                                if v["_stats"]["player"].Value == game.Players.LocalPlayer then
                                    Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(v)
                                    task.wait(DataSave["U6_delay"])
                                end 
                            end    
                        end 
                    end
                end) 
            until getgenv().Teleport == true 
        end)


        --
    

        LoopInGame003 = task.spawn(function()
            repeat task.wait(0.03)
                local success, error = pcall(function()
                    if DataSave["Marco Play"] then 
                            Service[8].PlayerGui.MessageGui.messages.Visible = false
                            Service[3].packages.assets["ui_sfx"]["error"].Volume = 0
                            if Marco_Data[IndexPlay]["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "GJgjPRAs8Vuqn52RcEP3ZRdNYXEecM" then 
                                local uuid = ""
                                    local cframe;
                                        if DataSave["Auto Tower Placement"] then 
                                                cframe = TowerPlacement(DeHas(Marco_Data[IndexPlay]["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"]))
                                                unpackcframe = cframe
                                            else
                                            cframe = Service[4]:JSONDecode('['..Marco_Data[IndexPlay]["JnKaJfey79cNT1fE6f55Ab0snLxQQ7"]..']')
                                            unpackcframe = CFrame.new(unpack(cframe))
                                        end
                                        for i,v in pairs(UnitEquip)do 
                                            if v["ID"] == DeHas(Marco_Data[IndexPlay]["VUeLU5WhEHLYdnEBcCUwVqztVMP2NK"]) then 
                                                uuid = v["uuid"]
                                            end    
                                        end
                                    if DataSave["Play Method"] == "Hybrid Index" then 
                                    args = {
                                        [1] = uuid,
                                        [2] = unpackcframe
                                    }
                                    delay(0,function() Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) end)
                                    else
                                    if not Information["No Wave"] then 
                                        if tonumber(GeneralWave.Text) <=  Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                            if Wave_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] and tonumber(GeneralWave.Text) >= Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                                args = {
                                                    [1] = uuid,
                                                    [2] = CFrame.new(unpack(cframe))
                                                }
                                                delay(0,function() Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) end)
                                                end
                                            else
                                            args = {
                                                [1] = uuid,
                                                [2] = CFrame.new(unpack(cframe))
                                            }
                                            delay(0,function() Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) end)
                                            end
                                        else
                                            if Game_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] then 
                                                args = {
                                                    [1] = uuid,
                                                    [2] = CFrame.new(unpack(cframe))
                                                }
                                                delay(0,function() Network = Service[3].endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args)) end)
                                            end
                                        end
                                    end
                                elseif  Marco_Data[IndexPlay]["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "uVofgY51jLOoXb1TAzc0K2KWFV8OpB" then 
                                    local GetIndex = getgenv()["IndexUnit"..tostring(Marco_Data[IndexPlay]["rZ6j9ayysH00P2rhDBQMZapfz6dP04"])]
                                    if GetIndex["_stats"].upgrade.Value < Marco_Data[IndexPlay]["0CJtTUUGzYYxiB3QWfqvZwitgHD9N6"] then 
                                    if DataSave["Play Method"] == "Hybrid Index" then 
                                        Network = Service[3].endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(GetIndex) 
                                    else
                                        if not Information["No Wave"] then 
                                        if tonumber(GeneralWave.Text) <=  Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                            if Wave_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] and tonumber(GeneralWave.Text) >= Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                                Network = Service[3].endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(GetIndex) 
                                            end
                                            else    
                                                Network = Service[3].endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(GetIndex) 
                                            end
                                            else  
                                            if Game_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] then     
                                                Network = Service[3].endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(GetIndex)
                                            end
                                        end
                                    end
                                end 
                                elseif  Marco_Data[IndexPlay]["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "uN4d22Iu4BBZEx2ZCmN90GShuttRaD" then 
                                local GetIndex = getgenv()["IndexUnit"..tostring(Marco_Data[IndexPlay]["rZ6j9ayysH00P2rhDBQMZapfz6dP04"])]
                                if not Information["No Wave"] then
                                if tonumber(GeneralWave.Text) <=  Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                    if Wave_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] and tonumber(GeneralWave.Text) >= Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                       Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(GetIndex) 
                                        IndexPlay = IndexPlay  + 1
                                        IndexPlay2 = IndexPlay2 + 1 
                                    end 
                                    
                                    else
                                   Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(GetIndex)
                                    IndexPlay = IndexPlay  + 1    
                                    IndexPlay2 = IndexPlay2 + 1  
                                end
                                    else
                                    if Game_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] then 
                                        Service[3].endpoints.client_to_server.use_active_attack:InvokeServer(GetIndex) 
                                        IndexPlay = IndexPlay  + 1    
                                        IndexPlay2 = IndexPlay2 + 1  
                                    end
                                end
                                elseif  Marco_Data[IndexPlay]["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "y08kgBLPyqtzqxsqw9jfrjX0lD6PVq" then 
                                local GetIndex = getgenv()["IndexUnit"..tostring(Marco_Data[IndexPlay]["rZ6j9ayysH00P2rhDBQMZapfz6dP04"])]
                                if not Information["No Wave"] then
                                if tonumber(GeneralWave.Text) <=  Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                    if Wave_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] and tonumber(GeneralWave.Text) >= Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                        Service[3].endpoints.client_to_server.cycle_priority:InvokeServer(GetIndex) 
                                        IndexPlay = IndexPlay  + 1
                                        IndexPlay2 = IndexPlay2 + 1 
                                    end
                                    else
                                    Service[3].endpoints.client_to_server.cycle_priority:InvokeServer(GetIndex) 
                                    IndexPlay = IndexPlay  + 1     
                                    IndexPlay2 = IndexPlay2 + 1 
                                end
                                else
                                    if Game_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] then 
                                        Service[3].endpoints.client_to_server.cycle_priority:InvokeServer(GetIndex) 
                                        IndexPlay = IndexPlay  + 1
                                        IndexPlay2 = IndexPlay2 + 1 
                                    end
                                end
                                elseif  Marco_Data[IndexPlay]["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "17tSJpzx4vV2R3jD9Y25KJXDZYALFz" then 
                                local GetIndex = getgenv()["IndexUnit"..tostring(Marco_Data[IndexPlay]["rZ6j9ayysH00P2rhDBQMZapfz6dP04"])]
                                if not Information["No Wave"] then
                                if tonumber(GeneralWave.Text) <=  Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                if Wave_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] and tonumber(GeneralWave.Text) >= Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                            Service[3].endpoints.client_to_server.sell_unit_ingame:InvokeServer(GetIndex) 
                                            IndexPlay = IndexPlay  + 1
                                            IndexPlay2 = IndexPlay2 + 1 
                                        end
                                    else
                                   Service[3].endpoints.client_to_server.sell_unit_ingame:InvokeServer(GetIndex)
                                    IndexPlay = IndexPlay  + 1
                                    IndexPlay2 = IndexPlay2 + 1 
                                end
                                else
                                if Game_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] then
                                    Service[3].endpoints.client_to_server.sell_unit_ingame:InvokeServer(GetIndex)
                                    IndexPlay = IndexPlay  + 1
                                    IndexPlay2 = IndexPlay2 + 1 
                                end
                            end
                            elseif  Marco_Data[IndexPlay]["Z1pmZEXC2JEMTQSfWy0e0zdO7bExF0"] == "xrCsk0BLjDuzMOh5opy1Q66cDzpOs0" then
                            if ToggleAutoSkipWave.TextLabel.Text == "Off" then 
                                if not Information["No Wave"] then    
                                if tonumber(GeneralWave.Text) <=  Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                    if Wave_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] and tonumber(GeneralWave.Text) >= Marco_Data[IndexPlay]["I57udUlJKxWbinV7gonvJDhhzg9iV3"] then 
                                        Service[3].endpoints.client_to_server.vote_wave_skip:InvokeServer() 
                                        IndexPlay = IndexPlay  + 1
                                        IndexPlay2 = IndexPlay2 + 1 
                                    end
                                else
                                    Service[3].endpoints.client_to_server.vote_wave_skip:InvokeServer() 
                                    IndexPlay = IndexPlay  + 1    
                                    IndexPlay2 = IndexPlay2 + 1 
                                end
                            else
                                if Game_Time >= Marco_Data[IndexPlay]["cePvWEdWPe3Ok6lzvNHRo26SMTkktn"] then 
                                    Service[3].endpoints.client_to_server.vote_wave_skip:InvokeServer() 
                                    IndexPlay = IndexPlay  + 1    
                                    IndexPlay2 = IndexPlay2 + 1 
                                end
                            end
                                else
                                IndexPlay = IndexPlay  + 1    
                                IndexPlay2 = IndexPlay2 + 1 
                            end
                        end 
                        task.wait(.3)
                    end
                end)
            until getgenv().Teleport == true 
        end)
        local TeleportCheck = Service[8].PlayerGui.MessageGui.messages.ChildAdded:Connect(function(v)
            if v.Name == "Success" then 
                v:WaitForChild("Tex")
                if v.Tex.Text == "Teleporting..." then 
                    getgenv()["Teleport"] = true 
                end
            end
        end)
        New_data_item = {}
        Sead_data_item = ""
        local Gem_Index  = Service[8].PlayerGui.ResultsUI.Holder.LevelRewards.ScrollingFrame.GemReward.Main.Amount
        Gem_Index:GetPropertyChangedSignal("Text"):Connect(function()
            --local a_gem = string.gsub(Gem_Index.Text,"+","")
             local a_gem = string.match(Gem_Index.Text,"%d+")
             table.insert(New_data_item,tostring(a_gem).." Gems")
        end)
        local EXP_Index  = Service[8].PlayerGui.ResultsUI.Holder.LevelRewards.ScrollingFrame.XPReward.Main.Amount
            EXP_Index:GetPropertyChangedSignal("Text"):Connect(function()
            local a_xp = string.match(EXP_Index.Text,"%d+")
            table.insert(New_data_item,tostring(a_xp).." EXP")
        end)
        function requestItemDrop()
            for i,v in pairs(ItemData)do 
                table.insert(New_data_item,tostring(i).." : "..tostring(v))
            end
            PortalItemNew = {}
            for i,v in pairs(PortalData)do 
                if string.find(v.item_id,"portal") then 
                    if not PortalItemNew[v.item_id] then 
                        PortalItemNew[v.item_id] = 1 
                        else
                        PortalItemNew[v.item_id] = PortalItemNew[v.item_id] + 1
                    end
                end
            end
            for i,v in pairs(PortalItemNew)do 
                if ItemInGame[i] then 
                     table.insert(New_data_item,tostring(ItemInGame[i]).." : "..tostring(v))
                end
            end
            for i,v in pairs(New_data_item)do 
                if not table.find(Old_item_data,v) then 
                   local p0 = tostring(string.match(v,"%d+"))
                   local p1 = string.gsub(v," : "..p0,"") 
                   data_check = false 
                   for x,y in pairs(Old_item_data)do 
                        if string.find(y,p1) then 
                            data_check = true 
                            local p2 = tonumber(string.match(y,"%d+"))
                            local p3 = tonumber(p0) - p2     
                            local p4 = string.gsub(y," : "..tostring(p2),"")
                            local p5 = "+ "..p3.." : "..p4
                            Sead_data_item = Sead_data_item.."\n"..p5
                        end
                   end
                    if not data_check then 
                        local p6 = "+ "..p0.." : "..p1
                        Sead_data_item = Sead_data_item.."\n"..p6
                    end
                end    
            end
        end
        LoopInGame011 = task.spawn(function() -- Game Ending
            repeat task.wait(1)
                local success, error = pcall(function()
                    if Service[8].PlayerGui.ResultsUI.Enabled == true then 
                            task.wait(2)
                            if DataSave["Webhook Complate"] and not seadwebhook then 
                                requestItemDrop()
                                requestWebhookEndGame()
                                seadwebhook = true 
                            end     
                             if DataSave["Auto Replay"] then 
                                Library:Notify('Please wait , Replay...', 5)
                                Service[3].endpoints.client_to_server.set_game_finished_vote:InvokeServer("replay")
                            end     
                            if DataSave["Auto Next Story"] then 
                                Library:Notify('Please wait , Next Story...', 5)
                                Service[3].endpoints.client_to_server.set_game_finished_vote:InvokeServer("next_story") 
                            end   
                            if  DataSave["Auto Next Room"] and string.find(MapData.mode,"Infinity Castle") then 
                                Library:Notify('Please wait , Next Room...', 5)
                                Service[3].endpoints.client_to_server.request_start_infinite_tower_from_game:InvokeServer()
                            end   
                            if  DataSave["Auto Pick Portal"]  then 
                                PortalPickID = ""
                                Pick = false
                                for i,v in pairs(PortalData)do
                                    if v.uuid and v.item_id then 
                                            if DataSave["Selects Portal"] == "Alien Portal"
                                            and v.item_id == "portal_boros_g" then 
                                            Pick = true 
                                            PortalPickID = tostring(v.uuid)             
                                            elseif DataSave["Selects Portal"] == "Demon Leader's Portal" 
                                            and v.item_id == "portal_zeldris" then
                                            Pick = true  
                                            PortalPickID = tostring(v.uuid)                
                                            elseif DataSave["Selects Portal"] == "Puppet Portal" 
                                            and v.item_id == "portal_item__dressrosa" then
                                            Pick = true 
                                            PortalPickID = tostring(v.uuid)     
                                            elseif DataSave["Selects Portal"] == "Noble Portal" 
                                            and v.item_id == "portal_item__fate" then
                                            Pick = true 
                                            PortalPickID = tostring(v.uuid)  
                                            elseif DataSave["Selects Portal"] == "Port Agency Portal" 
                                            and v.item_id == "portal_item__bsd" then 
                                            CheckPortalAgency = false;
                                            if DataSave["Selects Portal Tier"][tostring(v._unique_item_data._unique_portal_data.portal_depth)]  and
                                            not table.find(DataSave["Ignore Portal Difficulty"],tostring(v._unique_item_data._unique_portal_data.challenge)) then 
                                            for x,y in pairs(DataWorld)do
                                                if y.levels then
                                                   for x2,y2 in pairs(y.levels)do 
                                                        if v._unique_item_data._unique_portal_data.level_id == y2.id then 
                                                            if not table.find(DataSave["Ignore Portal Worlds"],y.name) then
                                                                    Pick = true 
                                                                    PortalPickID = tostring(v.uuid)  
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end  
                                            elseif DataSave["Selects Portal"] == "Eclipse Portal" 
                                            and v.item_id == "portal_item__eclipse" then 
                                            Pick = true 
                                            PortalPickID = tostring(v.uuid)      
                                        end
                                    end 
                                end
                                if Pick then Library:Notify('Please wait , Pick Portal...', 5) end
                                argsPortal = {[1] = "replay",[2] = {["item_uuid"] = PortalPickID}}
                                Service[3].endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(argsPortal))   
                                if not Pick then Service[3].endpoints.client_to_server.teleport_back_to_lobby:InvokeServer() 
                                    Library:Notify('Please wait , Back To Lobby...', 5)
                                end
                            end   
                            if  DataSave["Auto Back To Lobby"]  then 
                            Library:Notify('Please wait , Back To Lobby...', 5)
                            Service[3].endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
                        end
                        task.wait(10)
                    end
                end) 
            until getgenv().Teleport == true
        end)
end
Xenon_load = true 
Library:Notify('Script loaded successfully.', 5)
Library:Notify('Developed by Code X Dev.', 5)
Library:Notify('Open / Bind Ui Pass F1.', 5)


local CreateBindButton = game.Players.LocalPlayer.PlayerGui.settings_test.Right:Clone()
CreateBindButton.Name = "Xenon Hub"
CreateBindButton.Parent = game.Players.LocalPlayer.PlayerGui.settings_test
CreateBindButton.Position = UDim2.new(0.055, 0, 1, -10)
CreateBindButton["ui"].BackgroundColor3 = Color3.fromRGB(255, 255, 0)
CreateBindButton["ui"]["Main"]["ImageLabel"].ImageColor3 = Color3.fromRGB(255, 0, 0)

local function UIHind()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "F1", false, game) 
    task.wait(.1) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "F1", false, game)
end
CreateBindButton["ui"].Activated:Connect(UIHind)
    
end 


-- Loder 
repeat task.wait() until game.PlaceId == 8304191830 or 
game:GetService("Players").LocalPlayer.PlayerGui.VoteStart.Enabled == true 
or game:GetService("Players").LocalPlayer.PlayerGui.Waves.Enabled == true 
if game.PlaceId ~= 8304191830 then 
MapData = {
name = tostring(game.Players.LocalPlayer.PlayerGui.NewArea.holder.areaTitle.Text),
mode = tostring(game.Players.LocalPlayer.PlayerGui.NewArea.holder.areaDescription.Text),
difficulty = tostring(game.Players.LocalPlayer.PlayerGui.NewArea.holder.Difficulty.Text),
} 
end LodingScript() 

