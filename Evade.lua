_wait = task.wait
_spawn = task.spawn
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
v5:AddToggle("",{Text="AFK Farm [ No TP ]",Callback=function(value)
_G.AFK = value
      _G.AFK2 = false
_spawn(function()
while _G.AFK do wait()
localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, 7500, 0)
    end
  end)
 end})
v5:AddToggle("",{Text="AFK Farm [ TP ]",Callback=function(value)
_G.AFK2 = value
      _G.AFK = false
_spawn(function()
while _G.AFK2 do wait(0.3)
localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, 4500, 0)
            wait(0.15)
localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(500, 4500, 500)
    end
  end)
 end})
v6 = v4:AddRightGroupbox("Repawn")
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
v7:AddButton({Text="No Shake Camera",Func=function()
  localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
 end})
v7:AddButton({Text="Infinite yield [ AC ]",Func=function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
 end})

v7:AddButton({Text="Disabled Barrier",Funcfunction()
for _,v in pairs(workspace.Game.Map:GetDescendants()) do
if v.Name == "InvisParts" then
v:Destroy()
end
end
  end})
v7:AddButton({Text="Day",Func=function()
  Light.ClockTime = 12
  end})
v7:AddButton({Text="Night",Func=function()
  Light.ClockTime = 24
end})
v7:AddButton({Text="No Cooldown Jump",Func=function()
  local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
if InfiniteJumpEnabled then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
      end)
  end})

v7:AddToggle({Text="Fullbright [ NoFog ]",Callback=function(value)
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
v7:AddToggle({Text="Auto Drink Cola",Callback=function(value)
_G.Drink = value
while _G.Drink do wait()
game:GetService("ReplicatedStorage").Events.UseUsable:FireServer("Cola")
end
  end})
