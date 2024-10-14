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
--// Acronym Classic \\
local Players = game:GetService("Players")
local workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
--// Accronym Game \\
local Gravity = workspace.Gravity
local VoidROBLOX = workspace.FallenPartsDestroyHeight
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart
local Camera = workspace.CurrentCamera
--// Library Setting \\
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
local Tab2 = Window:AddTab("Exploit", "rbxassetid://10653012630")
local Tab3 = Window:AddTab("Configs", "rbxassetid://8571432274")
--// Group Tab \\
local Add = {
  Left = Tab:AddLeftGroupbox("Main"),
  Right = Tab:AddRightGroupbox("Auto")
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
Add.Left:AddDivider()
Add.Left:AddSlider("MySlider",{
    Text = "SpeedBoost",
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
Add.Right:AddToggle({
	Name = "Auto Whistle",
	Description = "Auto Whistle",
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
Add.Right:AddToggle({
	Name = "Auto Drink Cola",
	Description = "Drink Cola (Can Complete Quest)",
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
