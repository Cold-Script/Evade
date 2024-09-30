--EZ EVADE
local function Billboard(child, name, title)
bill = Instance.new("BillboardGui", game.CoreGui)
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(0,400,0,100)
        bill.Adornee = child
        bill.MaxDistance = 2000
        bill.Name = title

        local mid = Instance.new("Frame",bill)
        mid.AnchorPoint = Vector2.new(0.5,0.5)
        mid.BackgroundColor3 = Color3.new(1,1,1)
        mid.Size = UDim2.new(0,12.5,0,12.5)
        mid.Position = UDim2.new(0.5,0,0.5,0)
        Instance.new("UICorner",mid).CornerRadius = UDim.new(100,0)
        Instance.new("UIStroke",mid)

        local txt = Instance.new("TextLabel",bill)
        txt.AnchorPoint = Vector2.new(0.5,0.5)
        txt.BackgroundTransparency = 1
        txt.BackgroundColor3 = Color3.new(0,0,0)
        txt.TextColor3 = Color3.new(1,1,1)
        txt.Font = "GothamBold"
        txt.TextSize = "15"
        txt.Size = UDim2.new(1,0,0,-50)
        txt.Position = UDim2.new(0.5,0,0.7,0)
        Instance.new("UIStroke",txt)
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
txt.Text = string.format("%s\n[%s studs]", name or child.Name, math.floor((game.Players.LocalPlayer.Character.Head.Position - child:GetPivot().Position).Magnitude));
end);
end);
end
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
task.spawn(function()
while task.wait() do
pcall(function()
for i, v in pairs(workspace.Game.Players:GetChildren()) do
if not game.Players:FindFirstChild(v.Name) then
Billboard(v.HumanoidRootPart, v.Name, "Bot_ESP")
end							
end
end)
end
end)
pcall(function()
for _,v in pairs(workspace.Game.Players:GetChildren()) do
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
workspace.Game.Settings:SetAttribute("ReviveTime", 1.95)
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
