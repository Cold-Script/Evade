--// Tween, CircleTween, Teleport \\
function Tween(Pos)
local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
pcall(function()
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/100, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
tween:Play()
if Distance <= 100 then
tween:Cancel()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end
end
function CircleTween(Pos)
for _,v in pairs(game.workspace.Game.Players:GetChildren()) do
v:PivotTo(v:GetPivot() * Pos * CFrame.Angles(0, math.rad(7.5), 0))
end
end
function TP(Pos)
game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Pos
end
local repo = "https://raw.githubusercontent.com/Cold-Script/Linoria/main/LinoriaLib/"
local Library = loadstring(game:HttpGet(repo .. "Library_Loader.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()
local Options = getgenv().Linoria.Options
local Toggles = getgenv().Linoria.Toggles
local Window = Library:CreateWindow({
	Title = "[ v1.5 ] ΣVADΣ | YOUHUB",
	Center = true,
	AutoShow = true,
	Resizable = true,
  NotifySide = "Right",
	ShowCustomCursor = true,
	TabPadding = 2,
	MenuFadeTime = 0
})
--// Tab \\
local Tab = Window:AddTab("Main", "rbxassetid://4335489011")
local Tab3 = Window:AddTab("Configs", "rbxassetid://8571432274")
--// Group Tab \\
local Add = {
  Left = Tab:AddLeftGroupbox("Main"),
  Right = Tab:AddRightGroupbox("Auto"),
  Light = Tab:AddRightGroupbox("Self")
}
Add.Left:AddSlider("MySlider",{
    Text = "Cooldown Farm",
    Default = 0,
    Min = 0, Max = 0.25,
    Rounding = 1, Compact = true,
    Callback = function(v)
_G.CDAFK = v
end})
Add.Left:AddToggle("MyToggle",{
    Text = "AFK Farm",
    Default = false,
    Callback = function(v)
_G.AFK = v
pcall(function()
while _G.AFK do 
wait()
TP(CFrame.new(0,700,0))
wait(_G.CDAFK)
TP(CFrame.new(500,700,500))
wait(_G.CDAFK)
TP(CFrame.new(-500,700,-500))
end
end)
end})
Add.Left:AddToggle("MyToggle",{
    Text = "Ticket Farm",
    Default = false,
    Callback = function(v)
_G.TAFK = v
pcall(function()
while _G.TAFK do 
wait(_G.CDAFK)
TP(workspace.Tickets.CFrame)
end
end)
end})
Add.Left:AddDivider()
Add.Left:AddSlider("MySlider",{
    Text = "Speed",
    Default = 0,
    Min = 0, Max = 7,
    Rounding = 1, Compact = true,
    Callback = function(v)
_G.SB = v
game:GetService("RunService").RenderStepped:Connect(function()			
pcall(function()	
if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * _G.SB/100)
end
end)
end)
end})
Add.Left:AddDivider()
Add.Left:AddToggle("MyToggle",{
    Text = "Fast Revive",
    Default = false,
    Callback = function(value)
if value then
workspace.Game.Settings:SetAttribute("ReviveTime", 1.9)
else
workspace.Game.Settings:SetAttribute("ReviveTime", 3)				
end
end})
Add.Right:AddToggle("MyToggle",{
	Text = "Auto Whistle",
	Default = false,
	Callback = function(value)
_G.Whi = value
while _G.Whi do wait()
spawn(function()
pcall(function()
game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire("Whistle", true)
game:GetService("ReplicatedStorage").Events.Whistle:FireServer()			
end)
end)
end        
end})
Add.Right:AddToggle("MyToggle",{
	Text = "Auto Drink Cola",
	Default = false,
	Callback = function(value)
_G.Drink = value
while _G.Drink do wait()
spawn(function()
pcall(function()
game:GetService("ReplicatedStorage").Events.UseUsable:FireServer("Cola")
end)
end)
end        
end})
Add.Light:AddToggle("MyToggle",{
    Text = "No Wall",
    Default = false,
    Callback = function(v)
_G.NW = v
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.NW then
for _,v in pairs(workspace:GetDescendants()) do
v.Barrier.CanCollide = false
end
else
for _,v in pairs(workspace:GetDescendants()) do
v.Barrier.CanCollide = true
end
end
end)
end)
end})
Add.Light:AddToggle("MyToggle",{
    Text = "No Glass",
    Default = false,
    Callback = function(v)
_G.NG = v
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.NG then
for _,v in pairs(workspace:GetDescendants()) do
v.Glass.CanCollide = false
v.Glass.Transparency = 1
end
else
for _,v in pairs(workspace:GetDescendants()) do
v.Glass.CanCollide = true
v.Glass.Transparency = 0
end
end
end)
end)
end})
Add.Light:AddDivider()
Add.Light:AddToggle("MyToggle",{
    Text = "Anti KillBrick",
    Default = false,
    Callback = function(v)
_G.AKill = v
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.AKill then
for _,v in pairs(workspace:GetDescendants()) do
v.KillBrick.CanTouch = false
end
else
for _,v in pairs(workspace:GetDescendants()) do
v.KillBrick.CanTouch = true
end
end
end)
end)
end})
Add.Light:AddToggle("MyToggle",{
    Text = "Anti Nextbots",
    Default = false,
    Callback = function(v)
_G.ANext = v
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.ANext then
for _,v in pairs(workspace:GetDescendants()) do
v.HumanoidRootPart.CanTouch = false
v.HumanoidRootPart.CanCollide = false									
end
else
for _,v in pairs(workspace:GetDescendants()) do
v.HumanoidRootPart.CanTouch = true
v.HumanoidRootPart.CanCollide = false									
end
end
end)
end)
end})
Add.Light:AddDivider()
Add.Light:AddLabel("Ambient"):AddColorPicker("MyColorPicker",{
            Default = Color3.new(1, 1, 1),
	    Callback = function(v)
_G.ColorAmbient = v
end})
Add.Light:AddToggle("MyToggle",{
    Text = "Fullbright",
    Default = false,
    Callback = function(v)
_G.Fullbright = v
game:GetService("RunService").RenderStepped:Connect(function()
if _G.Fullbright then
game.Lighting.Brightness = 1.5
game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = _G.ColorAmbient or Color3.fromRGB(255, 255, 255)
else
game.Lighting.Brightness = 1
game.Lighting.GlobalShadows = true
game.Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
end
end)
end
})
Add.Light:AddToggle("MyToggle",{
    Text = "Delete Fog",
    Default = false,
    Callback = function(v)
pcall(function()
if not game.Lighting:GetAttribute("FogStart") then game.Lighting:SetAttribute("FogStart", game.Lighting.FogStart) end
if not game.Lighting:GetAttribute("FogEnd") then game.Lighting:SetAttribute("FogEnd", game.Lighting.FogEnd) end
game.Lighting.FogStart = value and 0 or game.Lighting:GetAttribute("FogStart")
game.Lighting.FogEnd = value and math.huge or game.Lighting:GetAttribute("FogEnd")
local fog = game.Lighting:FindFirstChildOfClass("Atmosphere")
if fog then
if not fog:GetAttribute("Density") then fog:SetAttribute("Density", fog.Density) end
fog.Density = value and 0 or fog:GetAttribute("Density")
end
end)
end
})
Add.Light:AddToggle("MyToggle",{
    Text = "Always Day",
    Default = false,
    Callback = function(v)
pcall(function()
if v then
game.Lighting.ClockTime = 12
else
game.Lighting.ClockTime = 24
end
end)
end})
Add.Light:AddButton({
    Text = "Destroy Effect Sky",
    DoubleClick = true,
    Callback = function()
game.Lighting.Sky:Destroy()
end})
