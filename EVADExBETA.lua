if not game:IsLoaded() then
    game.Loaded:Wait()
end

game:GetService("GuiService"):ClearError()

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local Window = OrionLib:MakeWindow({IntroText = "Evade v1.0", IntroIcon = "rbxassetid://7733955740",Name = "YOUHUB | Client : ".. identifyexecutor()), HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "evade (Vietnam)"})
local Tab1 = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
