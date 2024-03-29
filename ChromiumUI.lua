local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "ChromiumUI executed!",
        Content = "ChromiumUI executed!",
	Content = "1483345998",
	Time = 5
})


local Window = OrionLib:MakeWindow({Name = "ChromiumUI, HidePremium = false, SaveConfig = true, ConfigFolder = "CHRMIUMUI"})

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
PlayerSection:AddSlider({
	Name = "JumpPower",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
PlayerSection:AddButton({
	Name = "ESP",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebin.com/raw/7MMeJgTD')))()
              end
  	end    

local ServerTab = Window:MakeTab({
	Name = "Server",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ServerSection = ServerTab:AddSection({
	Name = "Server"
})
ServerSection:AddButton({
	Name = "Autofarm Credit",
	Callback = function()
      		for i,v in pairs(game:GetDescendants()) do
                 if v.Name == 'Credit' then
                 v.CFrame = game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame
                 wait(0.3)
              end
  	end    
})
OrionLib:Init()