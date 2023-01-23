local Config = {
    WindowName = "V.G Hub",
    Color = Color3.fromRGB(255, 128, 64),
    Keybind = Enum.KeyCode.RightControl
}
repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Debris = game:GetService("Debris")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local VirtualUser = game:GetService("VirtualUser")

local Player = Players.LocalPlayer
local wait = task.wait

Player.Idled:connect(
    function()
        VirtualUser:ClickButton2(Vector2.new())
    end
)

for i,v in pairs(getconnections(Player.Idled)) do
    v:Disable()
end 

local NewsApp = Player.PlayerGui:FindFirstChild("NewsApp")
repeat wait() until NewsApp:FindFirstChild("EnclosingFrame"):FindFirstChild("MainFrame").Contents.PlayButton
local PlayButton = NewsApp:WaitForChild("EnclosingFrame"):WaitForChild("MainFrame").Contents.PlayButton
local Baby = Player.PlayerGui.DialogApp.Dialog.RoleChooserDialog.ChooseParent

spawn(function()
    while PlayButton.Visible do wait(1)
        for i,v in pairs(getconnections(PlayButton.MouseButton1Click)) do
            v:Fire()
        end 
    end 
end)
spawn(function()
    while Baby.Visible do wait(1)
        if Baby.Visible then
            for i,v in pairs(getconnections(Baby.MouseButton1Click)) do
                v:Fire()
            end 
        end 
    end 
end)
if Workspace:FindFirstChild("ServerSidedMapSeats") then
    Workspace.ServerSidedMapSeats:Destroy()
end

local Table = {6152116144, 185655149}
local Set = setfpscap

 

local Name = "Adopt me" .. " " .. Player.Name .. ".json"

Des = {}
if makefolder then
    makefolder("V.G Hub")
end

local Settings

if
    not pcall(
        function()
            readfile("V.G Hub//" .. Name)
        end
    )
 then
    writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Des))
end
if readfile("V.G Hub//" .. Name) then
    Settings = HttpService:JSONDecode(readfile("V.G Hub//" .. Name))
end

local function Save()
    writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Settings))
end



StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "Added check for when your fully loaded in when executed please load into the game fully for script to execute"
    }
)


local getupvalue = getupvalue or debug.getupvalue
local getconstant = getconstant or debug.getconstant

local getconstants = getconstants or debug.getconstants
local getgc = getgc or get_gc_objects or debug.getgc
local getreg = getreg or getregistry or debug.getregistry
local get_thread_context = get_thread_context or getthreadcontext or getidentity or syn.get_thread_identity
local get_thread_identity = get_thread_context
local set_thread_context = set_thread_context or setthreadcontext or setidentity or syn.set_thread_identity
local set_thread_identity = set_thread_context

local Remotes = {}
local Inventorys = ReplicatedStorage.ClientDB.Inventory
local InventoryGiftsSubDB = require(Inventorys.InventoryGiftsSubDB)

local Stores = {
    "CoffeeShop",
    "Supermarket",
    "PizzaShop",
    "ToyShop",
    "Obbies",
    "Neighborhood",
    "CampingShop",
    "AutoShop",
    "Nursery",
    "Cave",
    "IceCream",
    "PotionShop",
    "SkyCastle",
    "Hospital",
    "HatShop",
    "PetShop",
    "School",
    "BabyShop",
    "HotSpringHouse",
    "SafetyHub",
    "DebugInterior",
    "VIP",
    "Salon",
    "SpleefMinigame",
    "SimonSaysMinigame",
    "WinterCastle"
}

local Baths = {
    "StylishShower",
    "CheapBathtub",
    "ModernShower",
    "Bathtub",
    "GingerbreadShower",
    "HotTub"
}

local FreeFoods = {
    "ham_vip",
    "water_vip",
    "chocolate_milk_vip",
    "popcorn_vip",
    "marshmallow_on_a_stick",
    "healing_apple",
    "teachers_apple",
}

local Beds = {
    "FancyPetBed",
    "ModernPetBed",
    "CircularPetBed",
    "RectangularPetBed",
    "NormalCrib",
    "BasicCrib",
    "RoyalCrib",
    "PoshCrib",
}
local Tasks = {
    "hungry",
    "sleepy",
    "thirsty",
    "bored",
    "dirty",
    "camping",
    "sick",
    "school",
    "hot_spring",
    "salon",
    "pizza_party"
}

local Egg = {
    "japan_2022_egg",
    "cracked_egg",
    "regular_pet_egg",
    "royal_egg",
    "retired_egg"
}

local gifts = {
    "smallgift",
    "biggift",
    "massivegift",
    "legend_hat_2022_simple_chest",
    "legend_hat_2022_regal_chest"
}
local Obbys = {
    "miniworld",
    "coastal_climb",
    "shipwreck_bay",
    "ancient_ruins",
    "lonelypeak",
    "pyramid",
    "tinyisles"
}

local RetardedBullShit = {
    "CashRegister",
    "GoldenCashRegister"
}

local PP = {}

local Part = Instance.new("Part")
Part.Name = "P"
Part.Size = Vector3.new(9e9,0,9e9)
Part.Anchored = true 
Part.Transparency = 0.5 
Part.CFrame = CFrame.new(5000,5000,5000)
Part.Parent = Workspace

local Location = nil
for i, v in pairs(getgc(true)) do
    if type(v) == "function" then
        if getfenv(v).script == ReplicatedStorage.ClientModules.Core.InteriorsM.InteriorsM then
            if table.find(getconstants(v), "LocationAPI/SetLocation") then
                Location = v
                break
            end
        end
    end
end
local function SetLocation(A, B, C)
    set_thread_identity(2)
    local O = get_thread_identity()
    Location(A, B, C)
    set_thread_identity(O)
end
function Home()
    if Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model") then
        return Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model").Name
    else
        return false
    end
end
function PersonHome()
    if Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model") then
        return Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model").Name
    else
        return false
    end
end 
function Store()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if not string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"MainMap") and not
                string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"Neighborhood")
         then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

function MainMap()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"MainMap") then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

function Neighborhood()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name,"Neighborhood") then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

function GoToStore(Name)
    if Store() == Name then
        return true
    end
    SetLocation(Name, "MainDoor", {})
    while Store() ~= Name do
        wait()
    end
    if Home() then
        return true
    end
    return false
end

function GoToHome()
    SetLocation("housing", "MainDoor", {["house_owner"] = Player})
    while not Home() do
        wait()
    end
    if Home() then
        return true
    end
    return false
end

function GoToNeighborhood()
    SetLocation("Neighborhood", "MainDoor", {})
    while not Neighborhood() do
        wait()
    end
    if Neighborhood() then
        return true
    end
    return false
end

function GoToMainMap()
    SetLocation("MainMap", "Neighborhood/MainDoor", {})
    while not MainMap() do
        wait()
    end
    if MainMap() then
        return true
    end
    return false
end

function GoToPersonsHouse(Name)
    SetLocation("housing","MainDoor",{["house_owner"] = Players[Name]})
    while not PersonHome() do
        wait()
    end 
    if PersonHome() then
        return true 
    end 
    return false
end 
function Bed(Name)
    GoToHome()
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(Beds, v:FindFirstChildWhichIsA("Model").Name)) then
            local String = string.split(v.Name,"true/")[2]
            print(String)
            return String
        end
    end
end
function Cash()
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(RetardedBullShit, v:FindFirstChildWhichIsA("Model").Name)) then
            local String = string.split(v.Name,"true/")[2]
            print(String)
            return String
        end
    end
end

function Showers(Name)
    GoToHome()
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(Baths, v:FindFirstChildWhichIsA("Model").Name)) then
            local String = string.split(v.Name,"true/")[2]
            print(String)
            return String
        end
    end
end



local Neon = {}
local Spec = {}
Settings.Key = {}
local PetID
local Pet
local PetsShow = {}
local List = {}
local JoJo = {}
local GGO = {}
for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
    local Key = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
    PetsShow[Key] = v
    table.insert(List, Key)
    table.sort(List, key)

end
for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
    if not table.find(JoJo,tostring(v["id"])) then
        local Key2 = tostring(v["id"])
        GGO[Key2] = v 
        table.insert(JoJo,Key2)
        table.sort(JoJo)
    end 
end 
UserInputService.WindowFocusReleased:Connect(
    function()
        if Settings.Render then
            RunService:Set3dRenderingEnabled(false)
            if table.find(Table, game.PlaceId) then
                Set(30)
            else
                Set(5)
            end
        end 
    end
)
UserInputService.WindowFocused:Connect(
    function()
        if Settings.Render then
            RunService:Set3dRenderingEnabled(true)
            Set(100)
        end 
    end
)

for i, v in pairs(getupvalue(require(ReplicatedStorage.Fsys).load("RouterClient").init, 4)) do
    v.Name = i
end
pcall(
    function()
        ReplicatedStorage.API:FindFirstChild("DailyLoginAPI/ClaimDailyReward"):InvokeServer()
    end
)

if Settings.Petsd == nil then
    Settings.Petsd = "Pets"
end


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/test"))()
local Window = Library:CreateWindow(Config, CoreGui)

local Tab1 = Window:CreateTab("Adopt Me")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("Second Section")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")
--local Section5 = Tab2:CreateSection("Misc")

-------------
local Toggle1 = Section1:CreateToggle("AutoFarm Baby", Settings.BabyFarm, function(State)
Settings.BabyFarm = State
spawn(function()
if Settings.BabyFarm then
    ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Babies", true)
end 
if not Settings.BabyFarm then 
    ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Parents", true)
end 
spawn(function()
    while wait(1) and Settings.BabyFarm do 
        pcall(
            function()
                for i,v in pairs(Tasks) do
                    if Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChild(v) and wait(1) then
                        ReplicatedStorage.API["MonitorAPI/AddAdditive"]:FireServer(v, 100)
                    end
                end 
            end
        )
        end 
    end
)
end)
end)


local Toggle434 = Section1:CreateToggle("Auto Invis", Settings.Invis, function(State)
Settings.Invis = State
    spawn(function()
        while Settings.Invis do wait()
            pcall(function()
                if Player.Character:FindFirstChild("LowerTorso") then
                    Player.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root"):Destroy()
                end 
            end)
        end
    end)
end)

local Toggle2 = Section1:CreateToggle("CPU Usage Improver", Settings.Render, function(State)
    Settings.Render = State
end)

local Toggle2 = Section1:CreateToggle("Low Render/ HideParts", Settings.Hide, function(State)
Settings.Hide = State

for i,v in pairs(game:GetService("Workspace").Interiors:GetDescendants()) do
    if v:IsA("BasePart") and Settings.Hide then
        v.Transparency = 1 
    elseif v:IsA("BasePart") and not Settings.Hide then
        v.Transparency = 0 
    end 
end 

game:GetService("Workspace").Interiors.DescendantAdded:Connect(function(v)
    if v:IsA('BasePart') and Settings.Hide then
        v.Transparency = 1 
    end 
end)
end)

local Toggle = Section1:CreateToggle("Crash Server", Settings.Crash, function(State)
Settings.Crash = State
RunService.RenderStepped:Connect(function()
    if Settings.Crash then
        ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Babies", true) print("Parent")
    end 
end)

end)

local Toggle = Section1:CreateToggle("Auto Claim Quests", Settings.FK, function(State)
Settings.FK = State
spawn(function()
    while wait() and Settings.FK do 
        pcall(function()
            ReplicatedStorage.API:FindFirstChild("QuestAPI/ClaimQuest"):InvokeServer(tostring(Player.PlayerGui.QuestApp.Board.Body.Contents.ScrollingFrame.QuestTemplate.Body:GetAttribute("QuestId")))
        end)
    end 
end)
end)


local Toggle2 = Section1:CreateToggle("Auto Collect Lanterns", Settings.Eh, function(State)
Settings.Eh = State




spawn(
    function()
        while Settings.Eh do
            wait()
            pcall(
                function()
                    if
                        not Workspace.Interiors:FindFirstChildWhichIsA("Model") or
                            not string.find(Workspace.Interiors:FindFirstChildWhichIsA("Model").Name, "MainMap")
                     then
                        GoToMainMap()
                    end
                    local LanternHunt = require(ReplicatedStorage.ClientModules.Game.Minigames.LanternHuntClient)
                    if not LanternHunt.is_game_in_progress() then
                        Player.Character:FindFirstChild("HumanoidRootPart").CFrame =
                            Workspace.Interiors:FindFirstChildWhichIsA("Model"):FindFirstChild("Event").LanternHunt.JoinZone.Ring.CFrame
                    end
                    if LanternHunt.is_game_in_progress() then
                        for i,v in pairs(Workspace.StaticMap.LanternSpawnLocations:GetChildren()) do
                            for i,v in pairs(v:GetChildren()) do
                                if v:IsA("BasePart") then 
                                    ReplicatedStorage.API:FindFirstChild("EventAPI/LanternHuntCollectLantern"):FireServer(v.Name)
                                end 
                            end 
                        end 
                    end
                    
                end
            )
        end
    end
)

end)
--[[
local Toggle2 = Section1:CreateToggle("Auto Join Winter Minigames", Settings.Cand, function(State)
Settings.Cand = State


RunService.RenderStepped:connect(
    function()
        if Settings.Cand and not Settings.PetFarm then
            pcall(
                function()
                    Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
                end
            )
        end
    end
)

spawn(
    function()
        while wait(1) do
            pcall(function()
                    if Settings.Cand and not Settings.PetFarm then
                        
                        local DodgeballMinigameInterior = require(ReplicatedStorage.ClientModules.Game.Minigames.DodgeballMinigameInterior)
                        local IceBridgeMinigameInterior = require(ReplicatedStorage.ClientModules.Game.Minigames.IceBridgeMinigameInterior)
                        local Conpare = string.gsub(DodgeballMinigameInterior.get_join_timer_display_string_now(), "%D", "")
                        local Conpare2 = string.gsub(IceBridgeMinigameInterior.get_join_timer_display_string_now(), "%D", "")
                        if not Workspace.Interiors:FindFirstChild("WinterCastle") and
                                wait()
                         then
                            GoToStore("WinterCastle")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                         end 
                         if Workspace.Interiors:FindFirstChild("WinterCastle") then
                        if not DodgeballMinigameInterior.is_game_in_progress() and Conpare < Conpare2 then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.WinterCastle.DodgeballMinigame.JoinZone.Collider.CFrame
                        end 
                        if DodgeballMinigameInterior.is_game_in_progress()  then 
                            DodgeballMinigameInterior.shovel_tool_prepare_snowball()
                            DodgeballMinigameInterior.throw_snowbal()
                        end 
                        if not IceBridgeMinigameInterior.is_game_in_progress() and Conpare2 < Conpare then
                            Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors.WinterCastle.IceBridgeMinigame.JoinZone.Collider.CFrame
                        end 
                        if IceBridgeMinigameInterior.is_game_in_progress() then
                            IceBridgeMinigameInterior.complete_Player_game()
                        end 
                        end 
                    end 
                end)
            end 
        end
    )
end)]]--
--[[
local S = {
    "SimonSaysMinigame",
    "SpleefMinigame"
}
local Toggle2 = Section1:CreateToggle("Auto Candy", Settings.Candy, function(State)
Settings.Candy = State

RunService.RenderStepped:connect(
    function()
        if Settings.Candy and not Settings.PetFarm then
            pcall(
                function()
                    Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
                end
            )
        end
    end
)
spawn(
    function()
        while wait(1) do
            pcall(function()
                    if Settings.Candy and not Settings.PetFarm then
                        local SpleefMinigame = require(ReplicatedStorage.ClientModules.Game.Minigames.SpleefMinigameInterior)
                        local SimonSaysMinigame = require(ReplicatedStorage.ClientModules.Game.Interiors.SimonSaysMinigameInterior)
                        local HideAndSeek = require(ReplicatedStorage.ClientModules.Game.Interiors.HideAndSeekInterior)
                        Player.Character.HumanoidRootPart.Anchored = true
                        local Conpare = string.gsub(SimonSaysMinigame.get_join_timer_display_string_now(), "%D", "")
                        local Conpare2 = string.gsub(SpleefMinigame.get_join_timer_display_string_now(), "%D", "")
                        local Conpare3 = string.gsub(HideAndSeek.get_join_timer_display_string_now(), "%D", "")
                        if
                            Conpare < Conpare2 and Conpare < Conpare3 and not SimonSaysMinigame.is_game_in_progress() and
                                not Workspace.Interiors:FindFirstChild("SimonSaysMinigame") and
                                wait()
                         then
                            GoToStore("SimonSaysMinigame")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                        elseif
                            Conpare2 < Conpare and Conpare2 < Conpare3 and not SpleefMinigame.is_game_in_progress() and
                                not Workspace.Interiors:FindFirstChild("SpleefMinigame") and
                                wait()
                         then
                            GoToStore("SpleefMinigame")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                        elseif
                            Conpare3 < Conpare and Conpare3 < Conpare2 and
                                not Workspace.Interiors:FindFirstChild("HideAndSeekInterior") and Settings.HideAndSeek
                         then
                            GoToStore("HideAndSeekInterior")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                        end

                        if
                            not SimonSaysMinigame.is_game_in_progress() and
                                Workspace.Interiors:FindFirstChild("SimonSaysMinigame") and
                                wait()
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SimonSaysMinigame.Minigame.JoinZone.Collider.CFrame
                        elseif
                            not SpleefMinigame.is_game_in_progress() and
                                Workspace.Interiors:FindFirstChild("SpleefMinigame") and
                                wait()
                                
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SpleefMinigame.Minigame.JoinZone.Collider.CFrame
                         elseif Workspace.Interiors:FindFirstChild("HideAndSeekInterior") then
                           Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors.HideAndSeekInterior.HideAndSeekJoinZone.Collider.CFrame
                            wait()
                        end
                        if
                            Workspace.Interiors:FindFirstChild("SimonSaysMinigame") and Workspace.Interiors.SimonSaysMinigame:FindFirstChild("CenterIsland").Block and
                                SimonSaysMinigame.is_game_in_progress() and
                                wait(1)
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SimonSaysMinigame.CenterIsland.Block.CFrame
                        elseif
                            Workspace.Interiors:FindFirstChild("SpleefMinigame") and
                                SpleefMinigame.is_game_in_progress() and
                                wait(1)
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SpleefMinigame.Minigame.SpleefRoot.CFrame
                        elseif
                            Workspace.Interiors:FindFirstChild("HideAndSeekInterior") and not SimonSaysMinigame.is_game_in_progress() and
                                not SpleefMinigame.is_game_in_progress() and Settings.HideAndSeek
                         then
                             
                            for i, v in pairs(
                                Workspace.Interiors.HideAndSeekInterior.Map.Visual.SetDressingHidingSpots:GetChildren()
                            ) do
                                if v:IsA("Model") and v.Name == "Crate" then
                                    wait(1)
                                    Player.Character.HumanoidRootPart.CFrame =
                                        v:FindFirstChildWhichIsA("BasePart").CFrame
                                end
                            end
                        end
                    end
                    if not Settings.Candy then
                        Player.Character.HumanoidRootPart.Anchored = false
                    end
                    end)
        end
    end
)

end)
local Toggle2 = Section1:CreateToggle("Add HideAndSeek", Settings.HideAndSeek, function(State)
    Settings.HideAndSeek = State
end)


]]---
-- Script generated by SimpleSpy - credits to exx#9394






local Toggle2 = Section1:CreateToggle("Auto Neon", Settings.Neon, function(State)
Settings.Neon = State
spawn(
    function()
        while Settings.Neon do
            wait(2)
            do
                pcall(
                    function()

                        local Number = 0
                       for i, v in pairs(
                            require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets
                        ) do
                            for i, x in pairs(
                                require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets
                            ) do
                                if string.find(x.id, v) and x.properties.age == 6 then
                                    Number = Number + 1
                                    table.insert(Spec, x.unique)
                                    if Number == 4 then
                                        ReplicatedStorage.API:FindFirstChild("PetAPI/DoNeonFusion"):InvokeServer(
                                            {unpack(Spec)}
                                        )
                                        Number = 0
                                        table.clear(Spec)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

end)


local AilmentFurnitues = {}


local Toggle2 = Section1:CreateToggle("PetFarm", Settings.PetFarm, function(State)
Settings.PetFarm = State

RunService.RenderStepped:connect(
    function()
        if Settings.PetFarm then
            pcall(function()
                Player.Character.Humanoid:ChangeState(11)
                Workspace["P"].CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0,-5,0))
            end)
        end
    end
)

spawn(function()
if not Settings.PetFarm then
    Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState("Jumping")
    Player.Character.HumanoidRootPart.Anchored = false
end 



if Settings.Key then
    PetID = Settings.Key.unique
    AilmentFurnitues["generic_crib"] = nil
    while not AilmentFurnitues["generic_crib"] do
        wait()
        AilmentFurnitues["generic_crib"] = Bed()
        AilmentFurnitues["generic_shower"] = Showers()
    end
    ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
    Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
end

local a
a = {
    ["sleepy"] = function(c)
        while c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments do
            wait()
            spawn(
                function()
                    pcall(
                        function()
                            ReplicatedStorage.API["HousingAPI/ActivateFurniture"]:InvokeServer(
                                Player,
                                AilmentFurnitues["generic_crib"],
                                "UseBlock",
                                {
                                    ["cframe"] = Player.Character.HumanoidRootPart.CFrame
                                },
                                Pet
                            )
                        end
                    )
                end
            )
        end

        while wait() do
            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
            Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
            if Pet then
                if Pet.Parent then
                    break
                end
            end
        end
    end,
    ["hungry"] = function(c)
        if Settings.PetFarm then
            ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "apple", {})
            wait()
            local Foods =
                require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
            local Apple
            for i, v in pairs(Foods) do
                if v.id == "apple" then
                    Apple = v.unique
                    break
                end
            end
            if not Apple then
                return
            end

            ReplicatedStorage.API["PetObjectAPI/CreatePetObject"]:InvokeServer(
                "__Enum_PetObjectCreatorType_2",
                {["unique_id"] = Apple}
            )
            wait(2)
            ReplicatedStorage.API["PetAPI/ConsumeFoodItem"]:FireServer(Apple)
            repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
        end
    end,
    ["thirsty"] = function(c)
        ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "tea", {})
        local Foods =
            require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
        local Tea
        for i, v in pairs(Foods) do
            if v.id == "tea" then
                Tea = v.unique
                break
            end
        end
        if not Tea then
            return
        end

        ReplicatedStorage.API["PetObjectAPI/CreatePetObject"]:InvokeServer(
            "__Enum_PetObjectCreatorType_2",
            {["unique_id"] = Tea}
        )
        wait(2)
        ReplicatedStorage.API["PetAPI/ConsumeFoodItem"]:FireServer(Tea)
        repeat wait() until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["dirty"] = function(c)
        while c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments do
            wait()
            spawn(
                function()
                    pcall(
                        function()
                            ReplicatedStorage.API["HousingAPI/ActivateFurniture"]:InvokeServer(
                                Player,
                                AilmentFurnitues["generic_shower"],
                                "UseBlock",
                                {
                                    ["cframe"] = Player.Character.HumanoidRootPart.CFrame
                                },
                                Pet
                            )
                        end
                    )
                end
            )
        end

        while wait() do
            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
            Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
            if Pet then
                if Pet.Parent then
                    break
                end
            end
        end
    end,
    ["pizza_party"] = function(c)
        GoToStore("PizzaShop")
        wait(1)
        Player.Character.HumanoidRootPart.CFrame =
            Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["salon"] = function(c)
        GoToStore("Salon")
        wait(1)
        Player.Character.HumanoidRootPart.CFrame =
            Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["sick"] = function(c)
        ReplicatedStorage.API["MonitorAPI/HealWithDoctor"]:FireServer()
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["adoption_party"] = function(c)
        GoToStore("Nursery")
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["school"] = function(c)
        GoToStore("School")
        wait(1)
        Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').Doors.MainDoor.WorkingParts.TouchToEnter.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["hot_spring"] = function(c)
        GoToMainMap()
        wait(1)
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.StaticMap.HotSpring.HotSpringOrigin.Position + Vector3.new(0,5,0))
    
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["camping"] = function(c)
        GoToMainMap()
        wait(1)
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Workspace.StaticMap.Campsite.CampsiteOrigin.Position + Vector3.new(0,5,0))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["bored"] = function(c)
        GoToMainMap()
        wait(1)
        Player.Character.HumanoidRootPart.CFrame =
            Workspace.StaticMap.Park.BoredAilmentTarget.CFrame * CFrame.new(0,5,0)
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end
}



spawn(
    function()
        while wait() and Settings.PetFarm do
            pcall(function()
                local Ailment = Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChildWhichIsA("Frame")
                if Ailment then
                    local Name = Ailment.Name
                    if a[Name] and wait() then
                        a[Name](Ailment)
                    end
                end
                if Pet and wait() then
                    if Pet.Parent ~= Workspace.Pets then
                        ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                        Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                    end
                else
                    ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                    Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                end
                wait(1)
            end)
        end
    end
)
end)
end)
local Dropdown = Section1:CreateDropdown("Pets", List, function(Name)
    Settings.Key = PetsShow[Name]
end)


local Toggle434 = Section1:CreateToggle("Switch Out when full grown", Settings.SwitchOutFullyGrown, function(State)
Settings.SwitchOutFullyGrown = State
StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "PetFarm must be off when turning this on "
    }
)
spawn(
    function()
        while Settings.SwitchOutFullyGrown do
            pcall(
                function()
                    wait()
                    repeat
                        wait()
                    until Settings.PetFarm
                    local Pets =
                        require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or
                        {}
                    if Pets[tostring(PetID)] then
                        if Pets[(PetID)]["properties"]["age"] ~= 6 then
                        else
                            for i, v in pairs(Pets) do
                                if v["properties"]["age"] ~= 6 then
                                    PetID = v.unique
                                end
                            end
                        end
                    else
                        for i, v in pairs(Pets) do
                            if v["properties"]["age"] ~= 6 then
                                PetID = v.unique
                            end
                        end
                    end
                end
            )
        end
    end
)

end)
--[[
local Toggle434 = Section1:CreateToggle("Ginger Bread Farm", Settings.Start, function(State)
Settings.Start = State
spawn(function()
    while wait() and Settings.Start do
        pcall(function()
            for i,v in pairs(ReplicatedStorage.Resources.IceSkating.GingerbreadMarkers:GetChildren()) do
                if v:IsA("BasePart") then
                    ReplicatedStorage.API:FindFirstChild("WinterEventAPI/PickUpGingerbread"):InvokeServer(v.Name)
                end 
            end 
            ReplicatedStorage.API:FindFirstChild("WinterEventAPI/RedeemPendingGingerbread"):FireServer()
        end)
    end
end)
end)

]]-- 




local Toggle4832 = Section1:CreateToggle("Switch Out Eggs", Settings.SwitchOutEgg, function(State)
Settings.SwitchOutEgg = State

StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "PetFarm must be off when turning this on "
    }
)
spawn(
    function()
        while Settings.SwitchOutEgg do
            pcall(
                function()
                    wait()
                    repeat
                        wait()
                    until Settings.PetFarm
                    local Pets =
                        require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or
                        {}
                    if Pets[tostring(PetID)] then
                        if Pets[(PetID)]["id"]:match("egg") and not Pets[(PetID)]["id"]:match("basic_egg") then
                        else
                            for i, v in pairs(Pets) do
                                if v["id"]:match("egg") and not v["id"]:match("basic_egg") then
                                    PetID = v.unique
                                end
                            end
                        end
                    else
                        for i, v in pairs(Pets) do
                            if v["id"]:match("egg") and not v["id"]:match("basic_egg") then
                                PetID = v.unique
                            end
                        end
                    end
                end
            )
        end
    end
)

end)

local Toggle2 = Section1:CreateToggle("Switch Out Pet Species", Settings.True, function(State)
Settings.True = State

StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "PetFarm must be off when turning this on "
    }
)
spawn(
    function()
        while Settings.True do
            pcall(
                function()
                    wait()
                    repeat
                        wait()
                    until Settings.PetFarm
                    local Pets =
                        require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or
                        {}
                    if Pets[tostring(PetID)] then
                        if Pets[(PetID)] and Pets[(PetID)]["properties"]["age"] ~= 6 then
                        else
                            for i, v in pairs(Pets) do
                                if v["id"] == Settings.sp and v["properties"]["age"] ~= 6 then
                                    PetID = v.unique
                                end
                            end
                        end
                    else
                        for i, v in pairs(Pets) do
                            if v["id"] == Settings.sp and v["properties"]["age"] ~= 6 then
                                PetID = v.unique
                            end
                        end
                    end
                end
            )
        end
    end
)
end)

local Dropdown = Section1:CreateDropdown("Select Pet Species", JoJo, function(Name)
    Settings.sp = Name
end)

local Toggle188908 = Section1:CreateToggle("Auto Heal Others", Settings.HealOthers, function(State)
Settings.HealOthers = State
spawn(
    function()
        while Settings.HealOthers do
            wait(2)
            ReplicatedStorage.API["MonitorAPI/HealWithDoctor"]:FireServer()
        end
    end
)
end)

local Toggle1 = Section1:CreateToggle("No Baby PickUp", nil, function(State)
Settings.Family = State
if Settings.Family then
    ReplicatedStorage.API["FamilyAPI/CreateFamily"]:InvokeServer() 
elseif not Settings.Family then
    ReplicatedStorage.API["FamilyAPI/LeaveFamily"]:InvokeServer()
end 
end)

local Toggle1 = Section1:CreateToggle("Fly Ride All Pets", Settings.FlyPets, function(State)
Settings.FlyPets = State

spawn(function()
    while wait() and Settings.FlyPets do
        pcall(function()
            for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                if Settings.FlyPets then
                    v.properties.rideable = true
                    v.properties.flyable = true
                elseif not Settings.FlyPets then
                    v.properties.rideable = false
                    v.properties.flyable = false
                end
            end
        end)
    end 
end)
end)


local Dropdown = Section1:CreateDropdown("Eggs", Egg, function(Name)
	Settings.Egg = Name
end)

local Dropdown = Section1:CreateDropdown("Gift", gifts, function(Name)
	Settings.gifts = Name
end)



local Toggle13322113 = Section1:CreateToggle("Auto Buy Gifts", Settings.DoDoPants, function(State)
Settings.DoDoPants = State
spawn(function()
while Settings.DoDoPants do wait()
ReplicatedStorage.API:FindFirstChild("ShopAPI/BuyItem"):InvokeServer("gifts",Settings.gifts,{})
end end) end)
local Toggle13322113 = Section1:CreateToggle("Auto Buy Egg", Settings.DoDoPants1, function(State)
Settings.DoDoPants1 = State
spawn(function()
while Settings.DoDoPants1 do wait()
ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("pets",Settings.Egg,{})

local Toggle = Section1:CreateToggle("Auto Accept Auto Trade", Settings.Lololol, function(State)
Settings.Lololol = State
spawn(function()
    while Settings.Lololol do wait()
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if v ~= Player then
                    ReplicatedStorage.API:FindFirstChild("TradeAPI/AcceptOrDeclineTradeRequest"):InvokeServer(v,true)
                end 
            end 
            ReplicatedStorage.API:FindFirstChild("TradeAPI/AcceptNegotiation"):FireServer()
            ReplicatedStorage.API:FindFirstChild("TradeAPI/ConfirmTrade"):FireServer()
            for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                v.Function()
                while Settings.YouTube and wait(1) do
        pcall(function()
            if not Player.PlayerGui.TradeApp.Frame.Visible then
                ReplicatedStorage.API:FindFirstChild("TradeAPI/SendTradeRequest"):FireServer(Settings.Playt)
            end 
            if Player.PlayerGui.TradeApp.Frame.Visible then
                if Settings.Petsd == "Pets" then
                    for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                        ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                    end
                end 
                if Settings.Petsd == "GrownPets" then
                    for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                        if v["properties"]["age"] == 6 then
                            ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                        end 
                    end
                end 
                if Settings.Petsd == "Eggs" then
                    for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
                        if v["id"]:find("Egg") and not v["id"]:find("_2022") then
                            ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                        end 
                    end
                end 
                if Settings.Petsd == "Gifts" then
                    for i,v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.gifts) do
                        ReplicatedStorage.API:FindFirstChild("TradeAPI/AddItemToOffer"):FireServer(v.unique)
                    end 
                end 
                ReplicatedStorage.API:FindFirstChild("TradeAPI/AcceptNegotiation"):FireServer()
                ReplicatedStorage.API:FindFirstChild("TradeAPI/ConfirmTrade"):FireServer()
                for i,v in pairs(getconnections(Player.PlayerGui.DialogApp.Dialog.NormalDialog.Buttons.ButtonTemplate.MouseButton1Click)) do
                    v.Function()
                    
                    Section1:CreateTextBox("Auto Trade or Auto Buy Person Name", "Isabeiiaw", false, function(String)
for i,v in pairs(Players:GetPlayers()) do
    if v.Name == (String) or v.Name:find(String) or v.DisplayName == String or v.DisplayName:find(String) then
       Settings.Playt = v
       
       local Dropdown = Section1:CreateDropdown("Auto Trade Options", {"Pets","Gifts","GrownPets","Eggs"}, function(Name)
    Settings.Petsd = Pets
end)
