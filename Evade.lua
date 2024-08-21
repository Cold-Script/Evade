_wait = task.wait
_spawn = task.spawn
local Players = game:GetService('Players')
        local localplayer = Players.LocalPlayer
        local GuiService = game:GetService("GuiService")
        local Light = game:GetService("Lighting")
function Simple_Create(base, name, trackername, studs)
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

function ClearESP(espname)
	for _, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == espname and v:isA("BillboardGui") then
			v:Destroy()
		end
	end
end
function Simple(base, name, trackername, studs)
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
	frame.BackgroundColor3 = Color3.fromRGB(125, 249, 255)
	local txtlbl = Instance.new("TextLabel", bb)
	txtlbl.ZIndex = 10
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0, 0, 0, -48)
	txtlbl.Size = UDim2.new(1, 0, 10, 0)
	txtlbl.Font = "ArialBold"
	txtlbl.FontSize = "Size14"
	txtlbl.Text = name
	txtlbl.TextStrokeTransparency = 0.5
	txtlbl.TextColor3 = Color3.fromRGB(125, 249, 255)
end

function ClearESP(clonesp)
	for _, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == clonesp and v:isA("BillboardGui") then
			v:Destroy()
		end
	end
end
function Simple2(base, name, trackername, studs)
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

function ClearESP(espname)
	for _, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == espname and v:isA("BillboardGui") then
			v:Destroy()
		end
	end
end
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/Cold-Script/Gui/main/Gui%20Lib%20%5BLibrary%5D"))()
local v1=loadstring(game:HttpGet("https://raw.githubusercontent.com/Cold-Script/Gui/main/Gui%20Lib%20%5BThemeManager%5D"))()
local v2=loadstring(game:HttpGet("https://raw.githubusercontent.com/Cold-Script/Gui/main/Gui%20Lib%20%5BSaveManager%5D"))()
local v3 = v0:CreateWindow({
    Title="YOU HUB | EVADE",
    Center=true,
    AutoShow=true,
    TabPadding=5,
    MenuFadeTime=0.2
  })
v4 = v3:AddTab("Explosion")
v5 = v4:AddLeftGroupbox("Farm")

v5:AddToggle("",{Text="AFK Farm",Callback=function(value)
_G.AFK2 = value
      _G.AFK = false
_spawn(function()
while _G.AFK2 do wait(0.3)
localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-500, 4500, -500)
            wait(0.15)
localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(500, 4500, 500)
    end
  end)
 end})
v6 = v4:AddLeftGroupbox("Repawn")
v6:AddButton({Text="Respawn [ Downed Only ]",Func=function()
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end})
v6:AddToggle("",{Text="Respawn On Downed",Callback=function(value)
_G.Rep = value
while _G.Rep do wait()
if localplayer.Character:GetAttribute("Downed") then
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end
end 
end})
v7 = v4:AddRightGroupbox("Misc")
v7:AddToggle("",{Text="Disable Void ROBLOX",Callback=function(value)
_G.Vo = value			
while _G.Vo do wait()			
      workspace.FallenPartsDestroyHeight = 0 / 0 -- otherwise known as nan! (a number below -math.huge)
	end				
    end})
v7:AddButton({Text="Infinite yield [ AC ]",Func=function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
 end})


v7:AddButton({Text="Infinity Jumper",Func=function(value)
  local InfiniteJumpEnabled = trye
game:GetService("UserInputService").JumpRequest:connect(function()
if InfiniteJumpEnabled then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
      end)
  end})
v7:AddButton({
Text = "Return Too Main Menu",
DoubleClick = true,
Func = function()
game:GetService("ReplicatedStorage").Events.ReturnToMenu:FireServer()
	end    
})
v8 = v4:AddLeftGroupbox("Helper")
v8:AddToggle("",{Text="Fullbright [ NoFog ]",Callback=function(value)
if value then
Light.Brightness = 3
Light.GlobalShadows = false
Light.OutdoorAmbient = Color3.new(1,1,1)
Light.FogEnd = 9e9
else
Light.Brightness = 2
Light.GlobalShadows = true
Light.OutdoorAmbient = Color3.new(0.5,0.5,0.5)
Light.FogEnd = 200
end
  end})
v8:AddToggle("",{Text="Auto Drink Cola",Callback=function(value)
_G.Drink = value
while _G.Drink do wait()
game:GetService("ReplicatedStorage").Events.UseUsable:FireServer("Cola")
end
  end})
v8:AddToggle("",{Text="Auto Whistle",Callback=function(value)
_G.Whi = value
while _G.Whi do wait()
game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire("Whistle", true)
game:GetService("ReplicatedStorage").Events.Whistle:FireServer()				
end
  end})
v8:AddToggle("",{Text="Auto Revive [ Near ]",Callback=function(value)
_G.Re = value
while _G.Re do wait()
game:GetService("ReplicatedStorage").Events.Revive:FireServer()
end
  end})
v8:AddToggle("",{Text="Fast Revive",Callback=function(value)
if value then
workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
			else
workspace.Game.Settings:SetAttribute("ReviveTime", 3)				
end
  end})
v8:AddToggle("",{Text="No Shake Camera",Callback=function(value)
_G.NoC = value			
while _G.NoC do wait()			
  localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
end				
 end})
v8:AddToggle("",{Text="Disabled Barrier",Callback=function(value)
_G.ReIn = value
while _G.ReIn do wait()			
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "InvisParts" then
v:Destroy()
end
end
end				
  end})
v8:AddToggle("",{Text="Auto Day",Callback=function(value)
_G.Day = value			
while _G.Day do wait()			
  Light.ClockTime = 9
	end				
  end})
v9 = v4:AddRightGroupbox("Visual")
v9:AddToggle("",{
	Text = "Bot ESP",
	Callback = function(besp)
		getgenv().botesp = besp
		task.spawn(
                function()
			while task.wait() do
				ClearESP('AI_Tracker')
				if not getgenv().botesp then
					break
				end
				pcall(function()
					local GamePlayers = workspace.Game.Players
					for i, v in pairs(GamePlayers:GetChildren()) do
						if not game.Players:FindFirstChild(v.Name) then
							Simple_Create(v.HumanoidRootPart, v.Name, "AI_Tracker")
						end
					end
				end)
			end
		end
            )
	end
	})
v9:AddToggle("",{
	Text = "Downed ESP",
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
							Simple(v.HumanoidRootPart, '[ Downed ] : ' .. v.Name, "Downed_ESP")
						end
					end
				end)
			end
		end
            )
	end
}
)
v9:AddToggle("",{
	Text = "Players ESP",
	Callback = function(desp)
		getgenv().playersesp = desp
		task.spawn(
                function()
			while task.wait() do
				ClearESP('Player_ESP')
				if not getgenv().playersesp then
					break
				end
				pcall(function()
					local GamePlayers = workspace:WaitForChild("Game", 1337)
					for i, v in pairs(GamePlayers:GetChildren()) do
						if v.Name == "Players" then			
							Simple2(v.HumanoidRootPart, .. v.Name, "Player_ESP")
							end				
					end
				end)
			end
		end
            )
	end
}
)
v10 = v4:AddRightGroupbox("Timer")
v10:AddToggle("",{
Text = "Notify Timer",
Callback = function(value)
_G.Ti = value
while _G.Ti do wait(0.95)			
v0:Notify("[ YOU HUB ] : Time is : " .. game.Players.LocalPlayer.PlayerGui:WaitForChild("HUD").Center.Vote.Info.Read.Timer.Text)
			end				
		end})
