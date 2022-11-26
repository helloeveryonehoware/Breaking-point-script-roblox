--Gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Best script", "Ocean")

--Main
local Autofarmstuff = Window:NewTab("Autofarm")
local AutofarmSection = Autofarmstuff:NewSection("Autofarms")
local Dupes = Window:NewTab("Dupes")
local Dupes = Dupes:NewSection("Dupes")
local Visuals = Window:NewTab("Visuals")
local Visuals = Visuals:NewSection("Visuals")
local Credits = Credits:NewTab("Credits")
local InfiniteCredits = Credits:NewSection("InfiniteCredits section")
local Settings = Settings:NewTab("Settings")
local Settings = Settings:NewSection("Settings")

--Autofarms
AutofarmSection:NewButton("Main autofarm", "the main autofarm can't get stopped", function()
    getgenv().AutoFarm = true
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Breaking-Point'))()
end)

--Dupes
Dupes:NewButton("Dupe /e rain", "Say /e rain to use it also it uses 3 credits", function()
    local args = {
        [1] = 66,
        [2] = "Animations",
        [3] = "Exclusive"
    }
    
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Dupes:NewButton("Candy Crown", "Dupes Candy crown 10k credits", function()
    local args = {
        [1] = 66,
        [2] = "Knife Skins",
        [3] = "Winter Gift"
    }
    
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Dupes:NewButton("Royal red", "Dupes the royal red chair 10k credits to dupe it", function()
    local args = {
        [1] = 66,
        [2] = "Chair Skins",
        [3] = "Winter"
    }
    
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Dupes:NewButton("Antlers", "Dupe the antlers case 10k credits to dupe it", function()
    
local args = {
    [1] = 66,
    [2] = "Accessories",
    [3] = "Knife Antlers"
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

--Local player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Sets your walkspeed", 60, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumpower", "Sets your Jumpower", 70, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Jumpower = s
end)

PlayerSection:NewButton("Reset", "Rests your jumpower and walkspeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.Jumpower = 50
end)

PlayerSection:NewButton("Bypassed Fly", "It's a bypassed fly idiot", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

    Fly(true)
end)

--other things

if game.PlaceId == 648362523 then
    repeat wait() until game:IsLoaded()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Credis",
            Text = "IsaaaKK#9010, DekuDimz, valor#7303, Iloveusingthis#3292, SkullKillls#2766"
        }
    )
    repeat wait() until game:IsLoaded()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Inf credits tab",
            Text = "Credits tab doesn't give credits to people who made it, it gives inf credits you have to click on 2 buttons"
        }
    )
end


Visuals:NewButton("Fullbright", "makes everything light up", function()
    local L = game:GetService("Lighting")

L:GetPropertyChangedSignal("Brightness"):connect(function()
    L.Brightness = math.huge;
end)

L:GetPropertyChangedSignal("Ambient"):connect(function()
    L.Ambient = Color3.fromRGB(255,255,255)
end)

L:GetPropertyChangedSignal("GlobalShadows"):connect(function()
    L.GlobalShadows = false;
end)

L.Brightness = math.huge;
L.Ambient = Color3.fromRGB(255,255,255)
L.GlobalShadows = false;
L.MapSaturation:Destroy()
L.SkyBox:Destroy()
L.BlackWhite:Destroy()
sethiddenproperty(game.Workspace.Lighting,"Technology",2)
end)

InfiniteCredits:NewButton("InfiniteCredits (Execute first)", "This is the first inf credits script you execute", function()
    while wait() do
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
        wait()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
            end
        end
    end
end)

InfiniteCredits:NewButton("InfiniteCredits (Execute Second)", "this is the second inf credits script you execute", function()
    while wait() do
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if game.Workspace:FindFirstChild(v.Name) then
                    if game.Workspace[v.Name].Humanoid.Sit ~= true then
                        if game.Workspace[v.Name]:FindFirstChild("Blade") then
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(37, CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)), Vector3.new(v.Character.HumanoidRootPart.CFrame.x, 4, v.Character.HumanoidRootPart.CFrame.z), Vector3.new(0, 0, 0))
                            wait(.1)
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(43, v.Character.HumanoidRootPart, v, "IIlIla", true)
                        else
                            if v.Backpack:FindFirstChild("Blade") then
                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(37, CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)), Vector3.new(v.Character.HumanoidRootPart.CFrame.x, 4, v.Character.HumanoidRootPart.CFrame.z), Vector3.new(0, 0, 0))
                                wait(.1)
                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(43, v.Character.HumanoidRootPart, v, "IIlIla", true)
                            end
                        end
                    end
                end
            end
        end
    end
end)

Settings:NewKeybind("Keybind for menu", "Sets a keybind to toggle the UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
