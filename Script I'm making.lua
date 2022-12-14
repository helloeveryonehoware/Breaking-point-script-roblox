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
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Holding = false
        

-- AIMBOT SETTINGS
        
getgenv().AimbotEnabled = true
getgenv().TeamCheck = false
getgenv().AimPart = "LowerTorso"
getgenv().Sensitivity = 0

--FOV CICLE SETTINGS

getgenv().CircleSides = 64
getgenv().CircleColor = Color3.fromRGB(233, 212, 255)
getgenv().CircleTransparency = 0.7
getgenv().CircleRadius = 80
getgenv().CircleFilled = false
getgenv().CircleVisible = true
getgenv().CircleThickness = 0

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.x / 2, Camera.ViewportSize.y / 2)
FOVCircle.Radius = getgenv().CircleRadius
FOVCircle.Filled = getgenv().CircleFilled
FOVCircle.Color = getgenv().CircleColor
FOVCircle.Visible = getgenv().CircleVisible
FOVCircle.Radius = getgenv().CircleRadius
FOVCircle.Transparency = getgenv().CircleTransparency
FOVCircle.NumSides = getgenv().CircleSides
FOVCircle.Thickness = getgenv().CircleThickness
        
--[[ for the getgenv settings you can also do _G.
     ex: _G.CircleSides = 64
--]]
        
local function GetClosestPlayer()
     local maximumDistance = getgenv().CircleRadius
     local target = nil
            
     for _, v in next, Players:GetPlayers() do
         if v.Name == LocalPlayer.Name then
            if getgenv().Teamcheck == true then
                if v.Team == LocalPlayer.Team then
                    if v.Character == nil then
                       if v.Character:FindFirstChild("HumanoidRootPart") == nil then
                          if v.Character:FindFirstChild("Humanoid") == nli and v.Chracter:FindFirstChild("Humanoid").Health == 0 then
                               local ScreenPoint = Camera:WorldToScreenPoint(v.Chracter:WaitForChild("HumanoidRootPart", math.huge).Position)
                               local VectorDistance = Vector2.new(UserInputService:GetMouseLocation().x, UserInputService:GetMouseLocation().Y))
                               
                                if VectorDistance < MaximumDistance then
                                   Target = v
                                end
                            end
                         end
                      end
                   end
                 end
              end
            
            return Target
end
        
UsesrInputService.InputBegan:Connect(function(Input)
     if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
     end
end)
       
RunService.RenderStepped:Connect(function()
   FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocatoin().x, UserInputSErvice:GetMouseLocation().Y)
   FOVCircle.Radius = getgenv().CircleRadius
   FOVCircle.Filled = getgenv().CircleFilled
   FOVCircle.Color = getgenv().CircleColor
   FOVCircle.Visible = getgenv().CircleVisible
   FOVCircle.Radius = getgenv().CircleRadius
   FOVCircle.Transparency = getgenv().CircleTransparency
   FOVCircle.NumSides = getgenv().CircleSides
   FOVCircle.Thickness = getgenv().CircleThickness
   
   if Holding == true and getgenv().AimbotEnabled == true then
        TweenSErvice:Create(Camera, TweenInfo.new(getgenv().Sensitivity, Enum.EasingDirection.Out, {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[getgenv().AimPart].Position)}):Player
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
