--Gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("loanoforeve's bp script", "Ocean")

--Main
local Welcome = Window:NewTab("Welcome")
local Welcome = Welcome:NewSection("Welcome")
local Autofarmstuff = Window:NewTab("Autofarm")
local AutofarmSection = Autofarmstuff:NewSection("Autofarms")
local Dupes = Window:NewTab("Dupes")
local Dupes = Dupes:NewSection("Dupes")
local Visuals = Window:NewTab("Visuals")
local Visuals = Visuals:NewSection("Visuals")
local Credits = Window:NewTab("Credits")
local InfiniteCredits = Credits:NewSection("InfiniteCredits section")
local Aimbot = Window:NewTab("Aimbotstuff")
local AimbotSection = Aimbot:NewSection("Aimbot")
local Playerhacks = Window:NewTab("Playerhacks")
local Playerhacks = Playerhacks:NewSection("Playerstuff")
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

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


--Credits for the people

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

--Inf credits
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


--Aimbot
AimbotSection:NewButton("Aimbot", "turns on an aimbot with fov", function()
local UIS = game.UserInputService
local camera = game.Workspace.CurrentCamera
local TS = game.TweenService
local tweeinfo = TweenInfo.new(0.25)

--gets the closest Player
function getClosest()
    local closestDistance = math.huge
    local closestPlayer = nil
    for i,v in pairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
            local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position == v.Character.HumanoidRootPart).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = v
            end
        end
    end
    return closestPlayer
end
--Stars the loop
UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
       getgenv().aim = true
       while wait() do
            local camera = game.CurrentCamera
            local tween = TS:Create(camera, tweenInfo, {CFrame = CFrame = CFrame.new(camera.Position, getClosest().HumanoidRootPart.Position)})
            if getgenv().aim == false then Tween:Cancel() return end
       end 
    end
end)

--Stops the loop
UIS.InputEmbed:Connect(functoin(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        getgenv().aim = false
    end
end)

--Tags for ranking
local ServerScriptService = game:GetService("ServerScriptService")
local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))
local Players = game:GetService("Players")

local Owner = {'heheits_tt'}

ChatService.SpeakerAdded:Connect(function(PlrName)
 local Speaker = ChatService:GetSpeaker(PlrName)
 for _, v in pairs(Owner) do
  if Players[PlrName].Name == v then
   Speaker:SetExtraData('Tags', {{TagText = "BP SCRIPT OWNER", TagColor = Color3.fromRGB(255,0,0)}}) --Change the numbers to what you want the color to be, you get the color code from a part when you choose what color it should be. 
  end
 end
end)

                local ServerScriptService = game:GetService("ServerScriptService")
local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))
local Players = game:GetService("Players")

local Owner = {'cakcenum'}

ChatService.SpeakerAdded:Connect(function(PlrName)
 local Speaker = ChatService:GetSpeaker(PlrName)
 for _, v in pairs(Owner) do
  if Players[PlrName].Name == v then
   Speaker:SetExtraData('Tags', {{TagText = "BP SCRIPT FRIEND", TagColor = Color3.fromRGB(255,0,0)}}) --Change the numbers to what you want the color to be, you get the color code from a part when you choose what color it should be. 
  end
 end
end)

Playerhacks:NewButton("chams", "highlights characters in the dark", function()
    getgenv().chams = false
    local Players = game:GetService("Players") -- variable to get the players in the game
    script.Parent.MouseButton1Click:Connect(function()
        if getgnev().chams = false then
            getgenv().chams = true
            scirpt.Parent.Text = "On"
            script.Parent.TextColor3 = Color3.fromRGB(0, 255, 0)

            --chams
            function CreateGui(name,Parent,face) -- function that creates the chams
                local SurfaceGui = Instance.new("SurfaceGui",parent) -- Creates the surfacegui in the game
                SurfaceGui.Parent = parent
                SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                SurfaceGui.Face = Enum.NormalId[face]
                SurfaceGui.LightInfluence = 0
                SurfaceGui.ResetOnSpawn = false
                ScreenfaceGui.Name = name
                SurfaceGui.AlwaysOnTop = true
                local Frame = Instance.new("Frame",SurfaceGui)
                Frame.BackgroundColor3 = Color3.fromRGB(85, 170, 255) -- colour for the surfacegui
                Frame.Size = UDim2.new(1,0,1,0)
            end

            while wait(1) do
                for i,v in pairs (Players:GetPlayers()) do
                    if v ~= Players.LocalPlayer and v.Character ~= nil and v.Chracter:FindFirstChild("Head") and getgenv().chams and v.Chracter.Head:FindFirstChild("cham") == nli then -- Checks to check if the player is appropriate to make a cham
                        for i,v in pairs (v.Character:GetChildren()) do -- lopping through every child in the character of the player
                            if v:IsA("MeshPart") or v.Name == "Head" then -- checking if the child is a body part
                                CreateGui("cham",v,"Back")
                                CreateGui("cham",v,"Front")
                                CreateGui("cham",v,"Top")
                                CreateGui("cham",v,"Bottom")
                                CreateGui("cham",v,"Right")
                                CreateGui("cham",v,"Left")
            end
        else
            getgenv().chams = false
            script.Parent.Text = "Off"
            script.Parent.TextColor3 = Color3.fromRGB(255, 0, 0)
end)
