local function Billboard(child, name, color, title)
local Billboard = Instance.new("BillboardGui");do
Billboard.Active = true;
Billboard.AlwaysOnTop = true;
Billboard.ClipsDescendants = true;
Billboard.LightInfluence = 1;
Billboard.Size = UDim2.new(10000, 0, 10000, 0);
Billboard.ResetOnSpawn = false;
Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
Billboard.Parent = child;
Billboard.Name = title;
local Title = Instance.new("TextLabel");
Title.TextSize = 15;
Title.Font = "RobotoCondensed";
Title.TextColor3 = color;
Title.BackgroundColor3 = Color3.new(1, 1, 1);
Title.BackgroundTransparency = 1;
Title.BorderColor3 = Color3.new(0, 0, 0);
Title.BorderSizePixel = 0;
Title.Size = UDim2.new(1, 0, 1, 0);
Title.Visible = true;
Title.Parent = Billboard;
local uistroke = Instance.new("UIStroke");
uistroke.Thickness = 1;
uistroke.Parent = Title;
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
Title.Text = string.format("%s\n[%sm]", name or child.Name, math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude));
end);
end);
end
end
local function CylinderESP(child, name, color, title)
Billboard(child, name, color, title)
local Adornment = Instance.new("CylinderHandleAdornment")
Adornment.Height = child.Size.Y * 2
Adornment.Radius = child.Size.X * 2
Adornment.CFrame = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90), 0, 0)
Adornment.Color3 = color
Adornment.Transparency = 0.65
Adornment.AlwaysOnTop = true
Adornment.ZIndex = 10
Adornment.Adornee = child
Adornment.Name = title
Adornment.Parent = child
end
local function Billboard2(child, name, color, title)
local Billboard = Instance.new("BillboardGui");do
Billboard.Active = true;
Billboard.AlwaysOnTop = true;
Billboard.ClipsDescendants = true;
Billboard.LightInfluence = 1;
Billboard.Size = UDim2.new(10000, 0, 10000, 35);
Billboard.ResetOnSpawn = false;
Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
Billboard.Parent = child;
Billboard.Name = title;
local Title = Instance.new("TextLabel");
Title.TextSize = 15;
Title.Font = "RobotoCondensed";
Title.TextColor3 = color;
Title.BackgroundColor3 = Color3.new(1, 1, 1);
Title.BackgroundTransparency = 1;
Title.BorderColor3 = Color3.new(0, 0, 0);
Title.BorderSizePixel = 0;
Title.Size = UDim2.new(1, 0, 1, 0);
Title.Visible = true;
Title.Parent = Billboard;
local uistroke = Instance.new("UIStroke");
uistroke.Thickness = 1;
uistroke.Parent = Title;
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
Title.Text = string.format("%s\n[%sm][Downed]", name or child.Name, math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude));
end);
end);
end
end

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()
local v = 2
local Window = redzlib:MakeWindow({"YOUHUB : Evade v".. v, "by white7777", "testando-redzLibv5.json"})
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://5522032314", BackgroundTransparency = 0.25 },
  Corner = { CornerRadius = UDim.new(0, 5) }
})
local Tabs = {
 Main = Window:MakeTab({"Main", "Home"}),
 Cheat = Window:MakeTab({"Visual", "Sword"}),
 Settings = Window:MakeTab({"Setting", "User"})
}
Tabs.Main:AddSection({"Farm"})
_G.C1 = -5000
Tabs.Main:AddDropdown({
        Name = "Position X",
	Description = "Position X",
        Options = {"-5000", "-2500", "0", "2500", "5000"},
        MultiSelect = false,
        Default = {"-5000"},
	Callback = function(value)
_G.C1 = value			
end})
_G.C2 = 3500
Tabs.Main:AddDropdown({
        Name = "Position Y",
	Description = "Position Y",
        Options = {"3500", "7000", "10000"},
        MultiSelect = false,
        Default = {"3500"},
	Callback = function(value)
_G.C2 = value			
end})
_G.C3 = -5000
Tabs.Main:AddDropdown({
        Name = "Position Z",
	Description = "Position Z",
        Options = {"-5000", "-2500", "0", "2500", "5000"},
        MultiSelect = false,
        Default = {"-5000"},
	Callback = function(value)
_G.C3 = value			
end})
Tabs.Main:AddToggle({
	Name = "AFK Farm",
	Description = "Teleport Far to AFK",
	Callback=function(value)
_G.AFK = value
while _G.AFK do wait(0.3)
spawn(function()
pcall(function()
game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(_G.C1, _G.C2, _G.C3)
wait(0.25)
game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-50000, _G.C2, -50000)
end)
end)
end
end})
Tabs.Main:AddButton({
        Name = "Teleport Map",
        Description = "Teleport map in play",
        Callback = function()
game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -1500, 0)
end})
Tabs.Main:AddSection({"Players"})
_G.ToggleSpeed = 0
Tabs.Main:AddDropdown({
  Name = "Speed Boost",
  Description = "Select a Boost",
  Options = {"0","5","10","15","20,"25","30","35","40"},
  Default = {"0"},
  MultiSelect = false,
  Callback = function(value)
_G.ToggleSpeed = value
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * _G.ToggleSpeed/100)
end
end)
end)
end})
Tabs.Main:AddToggle({
        Name = "Respawn On Downed",
	Description = "When Downed Auto Respawn",	
	Callback = function(value)
_G.Rep = value
while _G.Rep do wait()
if game.Players.LocalPlayer.Character:GetAttribute("Downed") then
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end
end 
end})
Tabs.Main:AddButton({
        Name = "Respawn",
        Description = "In Main Menu Click To Playing",
        Callback = function()
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end})
Tabs.Main:AddSection({"Auto"})
Tabs.Main:AddToggle({
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
Tabs.Main:AddToggle({
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
Tabs.Main:AddSection({"Camera"})
Tabs.Main:AddToggle({
	Name = "No Shake Camera",
	Description = "No Shake Camera",
	Callback = function(value)
_G.NoC = value			
while _G.NoC do wait()
spawn(function()
pcall(function()
game.Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
end)
end)
end
end})
Tabs.Main:AddSection({"Benefit"})
Tabs.Main:AddToggle({
	Name = "Fast Revive",
	Description = "Revive all Players Fast",
	Callback = function(value)
if value then
workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
else
workspace.Game.Settings:SetAttribute("ReviveTime", 3)				
end
end})
Tabs.Cheat:AddToggle({
	Name = "Disabled Invis Barrier",
	Description = "Disabled Invisible Parts",
	Callback = function(value)
_G.ReIn = value
while _G.ReIn do wait(1)
spawn(function()
pcall(function()
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "InvisParts" then
v:Destroy()
end
end
end)	
end)						
end				
end})
Tabs.Cheat:AddToggle({
	Name = "Disabled Void ROBLOX",
	Description = "Disabled Void ROBLOX",
	Callback = function(value)
_G.ReIn = value
while _G.ReIn do wait(1)
spawn(function()
pcall(function()
workspace.FallenPartsDestroyHeight = 0 / 0
end)	
end)						
end				
end})
Tabs.Cheat:AddToggle({
	Name = "Disabled Glass Wall",
	Description = "Disabled Glass",
	Callback = function(value)
_G.ReIn = value
while _G.ReIn do wait()
spawn(function()
pcall(function()
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "Glass" then
v:Destroy()
end
end
end)	
end)						
end				
end})
Tabs.Main:AddButton({
        Name = "Infjump",
        Description = "Infinity Jump",
        Callback = function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
if InfiniteJumpEnabled then
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
end
end)
end})			
Tabs.Main:AddSection({"Lighting"})
Tabs.Main:AddToggle({
	Name = "Fullbright",
	Description = "Brightness Screen Players",
	Callback=function(value)
if value then
game.Lighting.Brightness = 2
game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = Color3.new(1,1,1)
else				
game.Lighting.Brightness = 2
game.Lighting.GlobalShadows = true
game.Lighting.OutdoorAmbient = Color3.new(0.5,0.5,0.5)
end
end})
Tabs.Main:AddToggle({
	Name = "Fog Remover",
	Description = "Fog Remover",
	Callback=function(value)
if value then
game.Lighting.FogStart = 0
game.Lighting.FogEnd = 9e9				
else
game.Lighting.FogStart = 100			
game.Lighting.FogEnd = 10000
end
end})
Tabs.Cheat:AddSection({"ESP"})
Tabs.Cheat:AddToggle({
	Name = "ESP Bot & Players",
	Description = "ESP Bots & Players",
	Callback = function(value)
if value then
spawn(function()
pcall(function()
while true do
for _,v in pairs(workspace.Game.Players:GetDescendants()) do
if v.Name == "HumanoidRootPart" then
CylinderESP(v, v.Parent.Name, v.Color, "ESP01")
end
end
end										
end)
end)
else
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "ESP01" then
v:Destroy()
end
end
end
end})
Tabs.Cheat:AddToggle({
	Name = "ESP Players On Downed",
	Description = "ESP Players Down",
	Callback = function(value)
if value then
spawn(function()
pcall(function()
while true do
for _,v in pairs(workspace.Game.Players:GetDescendants()) do
if v:GetAttribute('Downed') then
Billboard2(v, "", Color3.fromRGB(125, 249, 255), "ESP02")
end
end
end										
end)										
end)
else
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "ESP02" then
v:Destroy()
end
end
end
end})
