--Gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("the smartest bp script", "Ocean")

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
AimbotSection:NewButton("Silent aim", "Gives you magnetic hits to score kills easier", function()
    --> VARIABLES <--
     local plrs = game:GetService("Players")
     local plr = plrs.LocalPlayer
     local mouse = plr:GetMouse()
     local camera == game:GetServvice("Workspace")
        
      --> FUNCTIONS <--
      functioin notBehindWall(target)
        local ray = ray.new(plr.Character.HumanoidRootPart.Position, (target.Position - plr.Character.HumanoidRootPart.Position).Unit * 300)
        local part, positioin = game:GetSErvice("Workspace"):FindPartOnRayWithIgnoreList(ray, {plr.chharacter}, false, true)
        if part then
            local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
            if not huumanoid then
                humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                
             end
            if humanoid and targget and humanoid.Parent == target.Parent then
                local pos, visible = camera:WorldToScreenPoint(target.Position)
                if visible then
                    return true
                end
            end
         end
      end
    
function getPlayerClosestToMouse()
        local target = nil
        local maxDist = 100
        for _,v in pairs(plrs:GetPlayers()) do
            if v.Character then
                if v.Character:FindFirsChild("Humanoid") and v.Character.Humanoid.Hhealth ~= 0 and v.Character:FindFirstChild("HumanoidRootPart")
                    local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos..Y)).magnitude
                    if dist < maxDist and vis then
                        local torsoPos = camera:WorldToViewportPooint(v.Character.HuumanoidRootPart.Position)
                        local tosoDist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(TorsoPos.X, torsoPos.Y))
                        local HumanoidRootPartPos = camera:WorldToViewportPooint(v.Character.HuumanoidRootPart.Position)
                        local HumanoidRootPartDist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(TorsoPos.X, torsoPos.Y))
                        if torsoDist > HumanoidRootpartDist then
                            if notBehindWall(v.Character.HumanoidRootPart) then
                                target = v.Character.HumanoidRootPart
                            end
                        else
                            if notBehindWall(v.Ch
                                
end)
