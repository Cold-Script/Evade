--EZ EVADE
game:GetService("RunService").RenderStepped:Connect(function()			
pcall(function()	
if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 10/100)
end
if game.Players.LocalPlayer.Character:GetAttribute("Downed") then
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end
game.Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
workspace.Game.Settings:SetAttribute("ReviveTime", 0)
end)
end)
local IJ = true
game:GetService("UserInputService").JumpRequest:connect(function()
if IJ then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
end
end)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()
l:Notify("YPoint / Evade","Evade EZ",10)
