local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local v = 1.2
local function billboard(child, name, tracker)
    local billboard_gui = Instance.new("BillboardGui")
    billboard_gui.Active = true
    billboard_gui.AlwaysOnTop = true
    billboard_gui.ClipsDescendants = true
    billboard_gui.LightInfluence = 1
    billboard_gui.Size = UDim2.new(3, 0, 2, 0)
    billboard_gui.ResetOnSpawn = false
    billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    billboard_gui.Parent = child
    billboard_gui.Name = tracker
    local text_label = Instance.new("TextLabel")
    text_label.Font = Enum.Font.ArialBold
    text_label.Text = name
    text_label.TextScaled = true
	text_label.TextSize = 10
	text_label.TextWrapped = true
    text_label.BackgroundColor3 = Color3.new(1, 1, 1)
    text_label.BackgroundTransparency = 1
    text_label.BorderColor3 = Color3.new(0, 0, 0)
    text_label.BorderSizePixel = 0
    text_label.Size = UDim2.new(1, 0, 1, 0)
    text_label.Visible = true
    text_label.Parent = billboard_gui
    local uistroke = Instance.new("UIStroke")
    uistroke.Thickness = 1
    uistroke.Parent = text_label
    spawn(function()
    while task.wait() do
    local hue = tick() % 5 / 5
    local color = Color3.fromHSV(hue, 1, 1)
    text_label.TextColor3 = color
    end
    end)
    end
    local function selection(child, name, tracker)
    billboard(child, name, tracker)
    local hi = Instance.new("Highlight")
    hi.Parent = child
    hi.Adornee = child
    hi.OutlineColor = Color3.fromRGB(161, 0, 0)
    hi.FillColor = Color3.fromRGB(255, 0, 0)
    hi.FillTransparency = 0.75
    hi.Name = tracker
    spawn(function()
    while task.wait() do
    if hi then
    local hue = tick() % 5 / 5
    local color = Color3.fromHSV(hue, 1, 1)
    hi.OutlineColor = color
    hi.FillColor = color
    end
    end
    end)
    end
function ClearESP(espname)
	for _, v in pairs(child:GetChildren()) do
		if v.Name == espname and v:isA("BillboardGui") or v:IsA("Highlight") then
			v:Destroy()
		end
	end
end
local Window = Fluent:CreateWindow({
    Title = "Evade" .. v ,
    SubTitle = "YOUHUB",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
Fluent:Notify({
    Title = "Evade" .. v,
    Content = "[LeftControl] Toggle GUI (Toggle)",
    Duration = 5
})
local Options = Fluent.Options

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Cheat = Window:AddTab({ Title = "Visual", Icon = "anchor" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}
Tabs.Main:AddSection("Players")
Tabs.Main:AddButton({
        Title = "Respawn",
        Description = "In Main Menu Click To Playing",
        Callback = function()
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end})
Tabs.Main:AddToggle("Respawn",{
        Title = "Respawn On Downed",
	Default = false,
	Description = "When Downed Auto Respawn",	
	Callback=function(value)
_G.Rep = value
while _G.Rep do wait()
if game.Players.LocalPlayer.Character:GetAttribute("Downed") then
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end
end 
end})
Tabs.Main:AddToggle("Whistle",{
	Title = "Auto Whistle & Stop Emote",
	Description = "Stop Emote in 5 Second & Auto Whistle",
	Callback=function(value)
_G.Whi = value
while _G.Whi do wait()
game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire("Whistle", true)
game:GetService("ReplicatedStorage").Events.Whistle:FireServer()				
end
  end})
Tabs.Main:AddToggle("NoShakeCam",{
	Title = "Auto No Shake Camera",
	Description = "Auto No Shake Camera",
	Callback=function(value)
_G.NoC = value			
while _G.NoC do wait()			
  game.Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
end				
end})
Tabs.Main:AddToggle("AutoCola",{
	Title = "Auto Drink Cola",
	Description = "Drink Cola (Can Complete Quest)",
	Callback=function(value)
_G.Drink = value
while _G.Drink do wait()
game:GetService("ReplicatedStorage").Events.UseUsable:FireServer("Cola")
end
end})
Tabs.Main:AddSection("Misc")
Tabs.Main:AddToggle("Fullbright",{
	Title = "Fullbright",
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
Tabs.Main:AddToggle("NoFog",{
	Title = "Fog Remover",
	Description = "Fog Remover",
	Callback=function(value)
if value then
game.Lighting.FogStart = 0
game.Lighting.FogEnd = 9e9				
else
game.Lighting.FogStart = 100			
game.Lighting.FogEnd = 200
end
end})
Tabs.Main:AddToggle("FastRevive",{
	Title = "Fast Reviver",
	Description = "Revive all Players Fast",
	Callback=function(value)
if value then
workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
			else
workspace.Game.Settings:SetAttribute("ReviveTime", 3)				
end
end})
Tabs.Main:AddToggle("BarrierDisabled",{
	Title = "Disabled Barrier",
	Description = "Disabled Invisible Parts",
	Callback=function(value)
_G.ReIn = value
while _G.ReIn do wait()			
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "InvisParts" then
v:Destroy()
end
end
end				
end})
Tabs.Cheat:AddToggle("NextbotsPlayersEsp",{
	Title = "NextBots & Players ESP",
	Description = "NextBots & Players ESP",
	Callback = function(besp)
		getgenv().botesp = besp
		getgenv().plresp = besp	
		task.spawn(
                function()
			while task.wait() do
				ClearESP('AI_Tracker')
				if not getgenv().botesp then
					break
				end
			
				ClearESP('Player_ESP')
				if not getgenv().plresp then
					break
				end				
				
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
							selection(v.HumanoidRootPart, v.Name, "Player_ESP")
					end
				end)
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
						if not game.Players:FindFirstChild(v.Name) then
							selection(v ,v.Name, "AI_Tracker")
						end
					end
				end)
				
						
			end
		end
            )
	end
	})
