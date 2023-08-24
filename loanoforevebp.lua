--Gui
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Breaking point script (beta)",
    LoadingTitle = "loanoforeve's breaking point script",
    LoadingSubtitle = "the key may be loanoforevebpontop hehehe",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "loanoforevebp"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    }, true to use our key system
    KeySettings = {
       Title = "loanoforevebp key sys",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "loanoforevesbpkey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"loanoforevebpontop", "loanoforeve", "loanoforevebp"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


--Main
local Welcome = Window:CreateTab("Welcome", 4483362458) -- Title, Image
local hellothere = Welcome:CreateSection("welcome to this awesome script")
local Autofarms = Window:CreateTab("Autofarms", 4483362458) -- Title, Image
local AutofarmSection = Autofarms:CreateSection("Autofarms")
local Dupes = Window:CreateTab("Dupes", 4483362458) -- Title, Image
local dupe = Dupes:CreateSection("Dupes")
local Visuals = Window:CreateTab("Visual tab", 4483362458) -- Title, Image
local Visualss = Visuals:CreateSection("Visual things")
local Creditstab = Window:CreateTab("Credits related", 4483362458) -- Title, Image
local Creditsthing = Creditstab:CreateSection("Credits idk for inf credits")


--Autofarms
local Aautofarmlmao = Autofarms:CreateButton({
    Name = "Autofarm",
    Callback = function()
        getgenv().AutoFarm = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/Breaking-Point'))()
    end,
 })



--Dupes

local eraindupe = Dupes:CreateButton({
    Name = "dupe /e rain",
    Callback = function()
        local args = {
            [1] = 66,
            [2] = "Animations",
            [3] = "Exclusive"
        }
        
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
    end,
 })


 local candycrowndupe = Dupes:CreateButton({
    Name = "Candy crown duped",
    Callback = function()
        local args = {
            [1] = 66,
            [2] = "Knife Skins",
            [3] = "Winter Gift"
        }
        
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
    end,
 })

 local Royalreddupe = Dupes:CreateButton({
    Name = "Button Example",
    Callback = function()
        local args = {
            [1] = 66,
            [2] = "Chair Skins",
            [3] = "Winter"
        }
        
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
    end,
 })

 local Antlersdupe = Dupes:CreateButton({
    Name = "Antlers",
    Callback = function()
        local args = {
            [1] = 66,
            [2] = "Accessories",
            [3] = "Knife Antlers"
        }
        
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
    end,
 })


--Local player


--Credits for the people

if game.PlaceId == 648362523 then
    repeat wait() until game:IsLoaded()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Credis",
            Text = "IsaaaKK#9010, DekuDimz, valor#7303, nyra.da, SkullKillls#2766"
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

local InfiniteCreditsstuff = Creditstab:CreateButton({
    Name = "Infinite credits (execute first)",
    Callback = function()
        while wait() do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
            wait()
            for i,v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
                end
            end
        end
    end,
 })

 local InfCreditssince = Creditstab:CreateButton({
    Name = "Infinite credits (execute second)",
    Callback = function()
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
    end,
})








-- notifications or whatever
Rayfield:Notify({
    Title = "/e rain stuff",
    Content = "say /e rain when u dupe it to use the animation",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })