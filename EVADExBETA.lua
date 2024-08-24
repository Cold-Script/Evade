local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local v = v1.2

function ESP(base, name, trackername)
	local bb = Instance.new("BillboardGui", game.CoreGui)
	bb.Adornee = base
	bb.ExtentsOffset = Vector3.new(0, 1, 0)
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0, 6, 0, 6)
	bb.StudsOffset = Vector3.new(0, 1, 0)
	bb.Name = trackername
	local frame = Instance.new("Frame", bb)
	frame.ZIndex = 10
	frame.BackgroundTransparency = 0.3
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundColor3 = Color3.fromRGB(15, 255, 80)
	local txtlbl = Instance.new("TextLabel", bb)
	txtlbl.ZIndex = 10
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0, 0, 0, -60)
	txtlbl.Size = UDim2.new(1, 0, 10, 0)
	txtlbl.Font = "GothamBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(125, 249, 255)
end
function ESP2(base, name, trackername)
	local bb = Instance.new("BillboardGui", game.CoreGui)
	bb.Adornee = base
	bb.ExtentsOffset = Vector3.new(0, 1, 0)
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0, 6, 0, 6)
	bb.StudsOffset = Vector3.new(0, 1, 0)
	bb.Name = trackername
	local frame = Instance.new("Frame", bb)
	frame.ZIndex = 10
	frame.BackgroundTransparency = 0.3
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundColor3 = Color3.fromRGB(15, 255, 80)
	local txtlbl = Instance.new("TextLabel", bb)
	txtlbl.ZIndex = 10
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0, 0, 0, -48)
	txtlbl.Size = UDim2.new(1, 0, 10, 0)
	txtlbl.Font = "GothamBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(15, 255, 80)
end
function ESP3(base, name, trackername)
	local bb = Instance.new("BillboardGui", game.CoreGui)
	bb.Adornee = base
	bb.ExtentsOffset = Vector3.new(0, 1, 0)
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0, 6, 0, 6)
	bb.StudsOffset = Vector3.new(0, 1, 0)
	bb.Name = trackername
	local txtlbl = Instance.new("TextLabel", bb)
	txtlbl.ZIndex = 10
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0, 0, 0, -60)
	txtlbl.Size = UDim2.new(1, 0, 10, 0)
	txtlbl.Font = "GothamBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)
end
function ESP4(base, name, trackername)
	local bb = Instance.new("BillboardGui", game.CoreGui)
	bb.Adornee = base
	bb.ExtentsOffset = Vector3.new(0, 1, 0)
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0, 6, 0, 6)
	bb.StudsOffset = Vector3.new(0, 1, 0)
	bb.Name = trackername
	local txtlbl = Instance.new("TextLabel", bb)
	txtlbl.ZIndex = 10
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0, 0, 0, -60)
	txtlbl.Size = UDim2.new(1, 0, 10, 0)
	txtlbl.Font = "ArialBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(125, 249, 255)
end
function ClearESP(espname)
	for _, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == espname and v:isA("BillboardGui") then
			v:Destroy()
		end
	end
end
local Window = Fluent:CreateWindow({
    Title = "YOUHUB | Evade " .. v ,
    SubTitle = "by white7777",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
Fluent:Notify({
    Title = "Evade " .. v,
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
Tabs.Main:AddToggle("TimerRound",{
Title = "Round Notify Timer",
Description = "Warning Round Timer",
Callback = function(value)
_G.Ti = value
while _G.Ti do wait(1)			
Fluent:Notify({
	Title = "Round Time is : ",
	Content = game.Players.LocalPlayer.PlayerGui:WaitForChild("HUD").Center.Vote.Info.Read.Timer.Text),
	Duration = 1
})					
			end				
		end})

Tabs.Cheat:AddSection("ESP")
Tabs.Cheat:AddToggle("NxPESP",{
	Title = "Bots & Players ESP",
	Description = "Bots & Players ESP",
	Callback = function(besp)
		getgenv().botesp = besp
		getgenv().iaesp = besp
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
				ClearESP('AI_Text')
				if not getgenv().iaesp then
					break
				end		
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
							ESP(v.HumanoidRootPart, v.Name, "Player_ESP")
					end
				end)
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
						if not game.Players:FindFirstChild(v.Name) then
							ESP2(v.HumanoidRootPart,v.Name, "AI_Tracker")
						end
					end
				end)
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
						if not game.Players:FindFirstChild(v.Name) then
							ESP3(v.HumanoidRootPart, "[ Artificial ]", "AI_Text")
						end
					end
				end)		
						
			end
		end
            )
	end
	})
Tabs.Cheat:AddToggle("DownedESP",{
	Title = "Downed ESP",
	Description = "Downed ESP",
	Callback = function(desp)
		getgenv().downesp = desp
		task.spawn(
                function()
			while task.wait() do
				ClearESP('Downed_ESP')
				if not getgenv().downesp then
					break
				end
				pcall(function()
					local GamePlayers = workspace:WaitForChild("Game", 1337).Players
					for i, v in pairs(GamePlayers:GetChildren()) do
						if v:GetAttribute('Downed') then
							ESP4(v.HumanoidRootPart, '[ Downed ]', "Downed_ESP")
						end
					end
				end)
			end
		end
            )
	end
	})
Tabs.Cheat:AddSection("Anti")
Tabs.Cheat:AddToggle("AntiVoid",{
	Title = "Anti Void ROBLOX",
	Description = "Void of ROBLOC Cant Kill you",
	Callback=function(value)
_G.Vo = value			
while _G.Vo do wait()			
      workspace.FallenPartsDestroyHeight = 0 / 0 -- otherwise known as nan! (a number below -math.huge)
	end				
    end})
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)
SaveManager:LoadAutoloadConfig()
