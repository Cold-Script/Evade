local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()
local v = 1.5
local Window = redzlib:MakeWindow({"YOUHUB : Evade v".. v, "by white7777", "testando-redzLibv5.json"})
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://5522032314", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 5) }
})
function ESP(base, name, trackername, studs)
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
	frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	local txtlbl = Instance.new("TextLabel", bb)
	txtlbl.ZIndex = 10
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0, 0, 0, -48)
	txtlbl.Size = UDim2.new(1, 0, 10, 0)
	txtlbl.Font = "ArialBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)
end

function ESP2(base, name, trackername, studs)
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
	txtlbl.Font = "ArialBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(15, 255, 80)
end
function ESP3(base, name, trackername, studs)
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
	txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)
end
function ESP4(base, name, trackername, studs)
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
local Tabs = {
 Main = Window:MakeTab({"Main", "Jerry"}),
 Cheat = Window:MakeTab({"Visual", "Sword"}),
 Settings = Window:MakeTab({"Setting", "User"})
}
Tabs.Main:AddSection({"Farm"})
Tabs.Main:AddToggle({
	Name = "AFK Farm < Settings >",
	Description = "Teleport Far to AFK < Settings >",
	Callback=function(value)
_G.AFK = value
while _G.AFK do wait()
game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(_G.C1, _G.C2, _G.C3)
end	
end})
Tabs.Main:AddDropdown({
        Name = "Position X",
	Description = "Position X",
        Options = {"-5000", "-2500", "0", "2500", "5000"},
        MultiSelect = false,
        Default = {"-5000"},
	Callback = function(value)
_G.C1 = value			
end})
Tabs.Main:AddDropdown({
        Name = "Position Y",
	Description = "Position Y",
        Options = {"7500", "15000", "30000"},
        MultiSelect = false,
        Default = {"7500"},
	Callback = function(value)
_G.C2 = value			
end})
Tabs.Main:AddDropdown({
        Name = "Position Z",
	Description = "Position Z",
        Options = {"-5000", "-2500", "0", "2500", "5000"},
        MultiSelect = false,
        Default = {"-5000"},
	Callback = function(value)
_G.C3 = value			
end})
Tabs.Main:AddSection({"Main"})
Tabs.Main:AddDropdown({
  Name = "Speed Boost",
  Description = "Select a Boost",
  Options = {"1", "2", "3", "4", "5"},
  Default = {"1"},
  MultiSelect = false,
  Callback = function(value)
_G.Speed = value
if _G.Speed = "1" then
_G.ToggleSpeed = 100
elseif _G.Speed = "2" then
_G.ToggleSpeed = 200
elseif _G.Speed = "3" then
_G.ToggleSpeed = 300
elseif _G.Speed = "4" then
_G.ToggleSpeed = 400
elseif _G.Speed = "5" then
_G.ToggleSpeed = 500
end
end
})
Tabs.Main:AddToggle({
        Name = "Speed",
        Description = "Boost Speed",	
      	Callback = function(value)
game:GetService("RunService").RenderStepped:Connect(function()
			pcall(function()
				if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
					game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * _G.ToggleSpeed/100)
				end
			end)
		end)
	end})			
Tabs.Main:AddToggle({
	Name = "Auto Whistle & Stop Emote",
	Description = "Stop Emote & Auto Whistle",
	Callback=function(value)
_G.Whi = value
while _G.Whi do wait()
game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire("Whistle", true)
game:GetService("ReplicatedStorage").Events.Whistle:FireServer()			
end
end})
Tabs.Main:AddToggle({
	Name = "Auto No Shake Camera",
	Description = "Auto No Shake Camera",
	Callback=function(value)
_G.NoC = value			
while _G.NoC do wait()			
game.Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
end				
end})
Tabs.Main:AddToggle({
	Name = "Auto Drink Cola",
	Description = "Drink Cola (Can Complete Quest)",
	Callback=function(value)
_G.Drink = value
while _G.Drink do wait()
game:GetService("ReplicatedStorage").Events.UseUsable:FireServer("Cola")
end
end})
Tabs.Main:AddToggle({
	Name = "Fast Reviver",
	Description = "Revive all Players Fast",
	Callback=function(value)
if value then
workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
			else
workspace.Game.Settings:SetAttribute("ReviveTime", 3)				
end
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
game.Lighting.FogEnd = 200
end
end})
Tabs.Cheat:AddSection({"Anti"})		
Tabs.Cheat:AddToggle({
	Name = "Anti Void ROBLOX",
	Description = "Void of ROBLOX Cant Kill you",
	Callback=function(value)
_G.Vo = value			
while _G.Vo do wait()			
      workspace.FallenPartsDestroyHeight = 0 / 0 -- otherwise known as nan! (a number below -math.huge)
	end				
    end})
Tabs.Cheat:AddToggle({
	Title = "Anti AFK", 
	Description = "Anti AFK", 
	Callback=function(Value)
	Settings.AntiAFK = Value
      if Settings.AntiAFK then
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
			end
end})
Tabs.Cheat:AddSection({"Disabled"})	
Tabs.Cheat:AddToggle({
	Name = "Disabled Barrier",
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


Tabs.Cheat:AddToggle({
	Name = "Disabled Lava",
	Description = "Lava has remover",
	Callback=function(value)
_G.Killbrick = value			
while _G.Killbrick do wait()			
      for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "Lava" then
v:Destroy()
	  end					
	end				
    end})
Tabs.Cheat:AddToggle({
	Name = "Disabled Killbrick",
	Description = "Killbrick has remover",
	Callback=function(value)
_G.Killbrick = value			
while _G.Killbrick do wait()			
      for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "Killbrick" then
v:Destroy()
	  end					
	end				
    end})
Tabs.Cheat:AddSection({"ESP"})
		
Tabs.Cheat:AddToggle({
	Name = "NextBots & Players ESP",
	Description = "ESP Bots & Players",
	Callback = function(besp)
		getgenv().botesp = besp
		getgenv().iaesp = besp
		getgenv().plresp = besp	
		_spawn(function()
			while _wait() do
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
						if not game.Players:FindFirstChild(v.Name) then
							ESP(v.HumanoidRootPart,v.Name, "AI_Tracker")
						end
					end
				end)
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
							ESP2(v.HumanoidRootPart, v.Name, "Player_ESP")
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
       	   end)
end})		
Tabs.Cheat:AddToggle({
	Name = "Downed ESP",
	Description = "ESP Players Downed",
	Callback = function(desp)
		getgenv().downesp = desp
		_spawn(function()
			while _wait() do
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
            end)
end})
Tabs.Cheat:AddSection({"Highlight"})			

Tabs.Cheat:AddToggle({
	Name = "Character Highlight",
	Callback = function(value)
getgenv().enabled = value
getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.fromRGB(15, 255, 80) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.5 --Change fill transparency
getgenv().outlinetrans = 0.5 --Change outline transparency

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)

Tabs.Main:AddDropdown({
  Name = "Theme",
  Description = "Select Theme",
  Options = {"Dark", "Darker", "Dark Purple"},
  Default = {"Darker"},
  MultiSelect = false,
  Callback = function(value)
_env.Theme = value
if _env.Theme = "Dark" then
redzlib:SetTheme("Dark")
elseif _env.Theme = "Darker" then
redzlib:SetTheme("Darker")
elseif _env.Theme = "Dark Purple" then
redzlib:SetTheme("Purple")
end							
end})
