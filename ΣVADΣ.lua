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
-// Accronym Game \\
local GamePlayer = workspace.Game.Players
local Gravity = workspace.Gravity
local VoidROBLOX = workspace.FallenPartsDestroyHeight
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character.HumanoidRootPart
local Camera = workspace.CurrentCamera
