local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local v = 1.2	
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
	Text="Auto Whistle & Stop Emote",Callback=function(value)
_G.Whi = value
while _G.Whi do wait()
game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire("Whistle", true)
game:GetService("ReplicatedStorage").Events.Whistle:FireServer()				
end
  end})
