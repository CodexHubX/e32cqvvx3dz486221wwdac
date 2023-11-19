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

DataBaseUnit = {}
function LODING.GETUNITDATABASE()
    pcall(function()
    for i,v in pairs(Service[3]["src"]["Data"]["Units"]:GetDescendants())do
        if v:IsA("ModuleScript") and v.Name ~= "UnitPresets" and not string.find(v.Name,"_PVE")  then
            for x,y in pairs(require(v))do  
                if  not string.find(tostring(x),"_test") 
                    and not string.find(tostring(x),"test_")then 
                    local unitdatabasetype = nil;
                    if y["hybrid_placement"] then unitdatabasetype  ="Hybrid" elseif y["hill_unit"] then unitdatabasetype = "Hill" else unitdatabasetype = "Grnd" end 
                    local spawncap = nil;
                    local upgradedata = {};
                    if y.spawn_cap then spawncap = y.spawn_cap end
                        if y.upgrade then 
                        if #y.upgrade > 0 then 
                                upgradedata = y.upgrade
                            end
                        end
                        DataBaseUnit[y.id] = {["Name"] = y.name,["Cost"] = y.cost,["SpawnCap"] = spawncap, ["UpgradeCap"] = #upgradedata,["Type"] = unitdatabasetype,["Upgrade"] = upgradedata,} 
                    end
                end
            end
        end
    end)
end 
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
                ["uuid"] = tostring(v.uuid),
                ["ID"] = tostring(v.unit_id),
            }
            if not table.find(AllUnitInSlot,tostring(v.unit_id)) then 
                table.insert(AllUnitInSlot,tostring(v.unit_id))
                end
            end
        end
    end
end 
function LODING.SETUPFULLAUTOPLAY()
    AI_CONFIG_SETIING = {
        ENABLED_SPAWN_LIMIT = false,
        ENABLED_UPGRADE_LIMIT = false,
        SPAWN = {[1] = 4,[2] = 4,[3] = 4,[4] = 4,[5] = 4,[6] = 4,},
        UPGRADE = {[1] = 15,[2] = 15,[3] = 15,[4] = 15,[5] = 15,[6] = 15,},
    },
    UNIT_COST = {},
    for i,v in next, UnitEquip do 
        UNIT_COST[i] = {["Unit"] = v["ID"],["uuid"] = v["uuid"],["Upgrade"] = DataeUnit[v["ID"]]["Upgrade"],}                
        UNIT_COST[i]["Cost"] = tonumber(Service[8].PlayerGui.spawn_units.Lives.Frame.Units[tostring(i)].Cost.text.Text)
    end
end    
LODING.GETUNITDATABASE()
LODING.SETUPFULLAUTOPLAY() 

