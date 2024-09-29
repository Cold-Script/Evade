--EZ EVADE
function Distance(part, extra)
	if not extra then extra = 15 end
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= extra then
		return true
	end
	return false
end
pcall(function()
for _,v in pairs(workspace.Game.Players:GetDescendants()) do
if not game.Players:FindFirstChild(v.Name) and Distance(v:FindFirstChildWhichIsA("BasePart"), 55) then
game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, 100000, 0)
end
end
end)
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
game:GetService("RunService").RenderStepped:Connect(function()			
pcall(function()	
if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 5.5/100)
end
if game.Players.LocalPlayer.Character:GetAttribute("Downed") then
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end
game.Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
workspace.Game.Settings:SetAttribute("ReviveTime", 1.5)
end)
end)
local IJ = true
game:GetService("UserInputService").JumpRequest:connect(function()
if IJ then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
end
end)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()
library:Notify("YPoint / Evade","Evade is EZ (BY RECHEDMCVN & GV)",10)
