
--██████╗░██╗░░██╗  ██╗░░██╗██╗░░░██╗██████╗░
--██╔══██╗██║░██╔╝  ██║░░██║██║░░░██║██╔══██╗
--██║░░██║█████═╝░  ███████║██║░░░██║██████╦╝
--██║░░██║██╔═██╗░  ██╔══██║██║░░░██║██╔══██╗
--██████╔╝██║░╚██╗  ██║░░██║╚██████╔╝██████╦╝
--╚═════╝░╚═╝░░╚═╝  ╚═╝░░╚═╝░╚═════╝░╚═════╝░



--made by swios, arbysuuf, nick



local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ESP = false -- Set initial state to false

local function toggleESP()
    ESP = not ESP
    if ESP then
        repeat wait()
            for _, Player in next, Players:GetPlayers() do
                if Player ~= LocalPlayer and Player.Character and not Player.Character:FindFirstChild("Highlight") then
                    Instance.new("Highlight", Player.Character)
                end
            end
        until not ESP
    else
        for _, Player in next, Players:GetPlayers() do
            if Player.Character and Player.Character:FindFirstChild("Highlight") then
                Player.Character.Highlight:Destroy()
            end
        end
    end
end

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/arbyusufs/DK-Hub/main/source.lua"))()

local UI = Lib:Create{
    Theme = "Dark",
    Size = UDim2.new(0, 555, 0, 400) -- default
}
--New Tab / DK Universal 
local Main = UI:Tab{
    Name = "Dk Universal"
}
--Lib Button / Options  Preview
local Divider = Main:Divider{
    Name = "Main"
}

local QuitDivider = Main:Divider{
    Name = "Quit"
}
--End of Lib Button / Options Preview
-- All functions have the Name, Description, and Callback arguments so you can use them whenever ig yeah
local KillAll = Divider:Button{
    Name = "Kill all",
    Description = "Kills all the players in the game!",
    Callback = function()
        local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Backpack = LocalPlayer.Backpack:GetChildren()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Gun = nil
local Enabled = true
local KillAll = false

KillAll = true
while wait() and KillAll do
    local Backpack = LocalPlayer.Backpack:GetChildren()
    local Gun = nil
    for _, v in pairs(Backpack) do
        if v:FindFirstChildWhichIsA("Sound") then
            Gun = v
            Gun.Parent = LocalPlayer.Character
        end
    end
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and Players:FindFirstChild(v.Name) and v.Name ~= LocalPlayer.Name and not v:FindFirstChild("Highlight") then
            local leftLowerArm = v:FindFirstChild("LeftLowerArm")
            if leftLowerArm and leftLowerArm:IsA("BasePart") then
                local Args = {
                    Vector3.new(-265.2897033691406, 62.427940368652344, 162.05580139160156),
                    Vector3.new(-219.55774426490265, 54.045166015625, 319.8175563808594),
                    leftLowerArm,
                    Vector3.new(-234.1997833251953, 58.66779088962035, 272.2261657714844)
                }
                ReplicatedStorage.Remotes.Shoot:FireServer(unpack(Args))
            end
        end
    end
end
    end
}

local Infinite Jump = Divider:Button{
    Name = "Infinite Jump",
    Description = "Makes you infinitely jump, each space bar = jump",
    Callback = function()
        game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
            if input.KeyCode == Enum.KeyCode.Space then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
}

local ESPToggle = Divider:Toggle{ -- Renamed to ESPToggle for clarity
    Name = "ESP Toggle",
    Description = "Enables and Disables ESP",
    Callback = function(State)
        toggleESP() -- Call the function to toggle the ESP visibility
        print("ESP state: ", ESP)
    end
}

local WalkSpeedBox = Divider:Box{
    Name = "WalkSpeed",
    ClearText = true,
    Callback = function(Value)
        print("Setting walk speed to: ", Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Value) -- Set the walk speed to the entered value
    end
}

Divider:Box{
    Name = "Jump",
    ClearText = true,
    Callback = function(Value)
        print("Setting jump power to: ", Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value) -- Set the jump power to the entered value
    end
}

local Quit = QuitDivider:Button{
    Name = "Close Script.",
    Callback = function()
        UI:Quit{
            Message = "Closing...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
}
--------------------------------------------------End Tab / DK Universal 
--------------------------------------------------New Tab / MVSD
local MVSD = UI:Tab{
    Name = "MVSD"
}

local Divider = MVSD:Divider{
    Name = "Combat"
}

local KillAll = Divider:Button{
    Name = "Kill all",
    Description = "Kills all the players in the game!",
    Callback = function()
        local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Backpack = LocalPlayer.Backpack:GetChildren()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Gun = nil
local Enabled = true
local KillAll = false

KillAll = true
while wait() and KillAll do
    local Backpack = LocalPlayer.Backpack:GetChildren()
    local Gun = nil
    for _, v in pairs(Backpack) do
        if v:FindFirstChildWhichIsA("Sound") then
            Gun = v
            Gun.Parent = LocalPlayer.Character
        end
    end
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and Players:FindFirstChild(v.Name) and v.Name ~= LocalPlayer.Name and not v:FindFirstChild("Highlight") then
            local leftLowerArm = v:FindFirstChild("LeftLowerArm")
            if leftLowerArm and leftLowerArm:IsA("BasePart") then
                local Args = {
                    Vector3.new(-265.2897033691406, 62.427940368652344, 162.05580139160156),
                    Vector3.new(-219.55774426490265, 54.045166015625, 319.8175563808594),
                    leftLowerArm,
                    Vector3.new(-234.1997833251953, 58.66779088962035, 272.2261657714844)
                }
                ReplicatedStorage.Remotes.Shoot:FireServer(unpack(Args))
            end
        end
    end
end
    end
}

local HeadSize = 7
local IsDisabled = true
local IsTeamCheckEnabled = false 

game:GetService('RunService').RenderStepped:Connect(function()
    if IsDisabled then
        local localPlayer = game:GetService('Players').LocalPlayer
        if not localPlayer then return end
        
        local localPlayerTeam = localPlayer.Team
        
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player ~= localPlayer and (not IsTeamCheckEnabled or player.Team ~= localPlayerTeam) then
                local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                    humanoidRootPart.Transparency = 100
                    humanoidRootPart.BrickColor = BrickColor.new("Really blue")
                    humanoidRootPart.Material = Enum.Material.Neon
                    humanoidRootPart.CanCollide = false
                end
            end
        end
    end
end)

local HitboxExpander = Divider:Box{
    Name = "Hitbox Expander (Closet Cheat)",
    ClearText = true,
    Callback = function(Value)
        print("Setting hitbox size to: ", Value)
        HeadSize = tonumber(Value)
    end
}

-- End of Combat section
local Divider = MVSD:Divider{
    Name = "Player"
}

local WalkSpeedBox = Divider:Box{
    Name = "WalkSpeed",
    ClearText = true,
    Callback = function(Value)
        print("Setting walk speed to: ", Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Value) -- Set the walk speed to the entered value
    end
}

local ESPToggle = Divider:Toggle{ -- Renamed to ESPToggle for clarity
    Name = "ESP Toggle (Disable Currently In Beta)",
    Description = "Enables and Disables ESP",
    Callback = function(State)
        toggleESP() -- Call the function to toggle the ESP visibility
        print("ESP state: ", ESP)
    end
}

local Infinite Jump = Divider:Button{
    Name = "Infinite Jump",
    Description = "Makes you infinitely jump, each space bar = jump",
    Callback = function()
        game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
            if input.KeyCode == Enum.KeyCode.Space then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
}

-- End of Players section

local QuitDivider = MVSD:Divider{
    Name = "Quit"
}

local Quit = QuitDivider:Button{
    Name = "Close Script.",
    Callback = function()
        UI:Quit{
            Message = "Closing...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
}

--------------------------------------------------------------End Tab / MVSD

--New Tab / MM2
local MM2 = UI:Tab{
    Name = "MM2"
}

local Divider = MM2:Divider{
    Name = "Main"
}

local MM2ComminSoon = Divider:Button{
    Name = "Currently In Beta | Releasing Soon ...",
    Description = "Releasing soon ...",
    Callback = function()
        print("Too lazy so ima do later ok")
    end
}

local QuitDivider = MM2:Divider{
    Name = "Quit"
}

local Quit = QuitDivider:Button{
    Name = "Close Script.",
    Callback = function()
        UI:Quit{
            Message = "Closing...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
}
----------------------------------------------------------End Tab / MM2
----------------------------------------------------------New Tab / Blade Ball
local BB = UI:Tab{
    Name = "Blade Ball"
}

local Divider = BB:Divider{
    Name = "Main"
}

local QuitDivider = BB:Divider{
    Name = "Quit"
}

local ESPToggle = Divider:Toggle{ -- Renamed to ESPToggle for clarity
    Name = "ESP Toggle (Disable Currently In Beta)",
    Description = "Enables and Disables ESP",
    Callback = function(State)
        toggleESP() -- Call the function to toggle the ESP visibility
        print("ESP state: ", ESP)
    end
}

local Auto Parry = Divider:Button{
    Name = "Auto Parry (Bugs if another user uses haxs)",
    Description = "W auto parry, no work if another kid uses hax but will last 5 mins with them",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/UPD-Blade-Ball-op-autoparry-with-visualizer-8652"))()
    end
}

local Quit = QuitDivider:Button{
    Name = "Close Script.",
    Callback = function()
        UI:Quit{
            Message = "Closing...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
}
---------------------------------------------------------End Tab / Blade Ball
---------------------------------------------------------start of fe2
local fe2 = UI:Tab{
    Name = "FE2"
}

local Divider = fe2:Divider{
    Name = "Main"
}

local QuitDivider = fe2:Divider{
    Name = "Quit"
}

local ESPToggle = Divider:Toggle{ -- Renamed to ESPToggle for clarity
    Name = "ESP Toggle (Disable Currently In Beta)",
    Description = "Enables and Disables ESP",
    Callback = function(State)
        toggleESP() -- Call the function to toggle the ESP visibility
        print("ESP state: ", ESP)
    end
}

local Infinite Jump = Divider:Button{
    Name = "Infinite Jump",
    Description = "Makes you infinitely jump, each space bar = jump",
    Callback = function()
        game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
            if input.KeyCode == Enum.KeyCode.Space then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
}

local Quit = QuitDivider:Button{
    Name = "Close Script.",
    Callback = function()
        UI:Quit{
            Message = "Closing...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
}
---------------------------------------------------------Arsenal
local ars = UI:Tab{
    Name = "Arsenal"
}

local Divider = ars:Divider{
    Name = "Combat"
}

local Tanqr Aim = Divider:Button{
    Name = "Tanqr Aim ",
    Description = "Yoo shat I got tanqr aim?",
    Callback = function()
        -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Aimlock = Instance.new("Frame")
local TANQRSCRIPT = Instance.new("TextLabel")
local TANQRAIM = Instance.new("TextButton")
local PurpleTeam = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Aimlock.Name = "Aimlock"
Aimlock.Parent = ScreenGui
Aimlock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Aimlock.Position = UDim2.new(0.034251675, 0, 0.0638820603, 0)
Aimlock.Size = UDim2.new(0, 368, 0, 263)

TANQRSCRIPT.Name = "TANQR SCRIPT"
TANQRSCRIPT.Parent = Aimlock
TANQRSCRIPT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TANQRSCRIPT.BorderColor3 = Color3.fromRGB(27, 42, 53)
TANQRSCRIPT.Position = UDim2.new(0, 0, -0.000990283792, 0)
TANQRSCRIPT.Size = UDim2.new(0, 362, 0, 50)
TANQRSCRIPT.Font = Enum.Font.Bangers
TANQRSCRIPT.Text = "Tanqr Script"
TANQRSCRIPT.TextColor3 = Color3.fromRGB(85, 255, 255)
TANQRSCRIPT.TextScaled = true
TANQRSCRIPT.TextSize = 14.000
TANQRSCRIPT.TextWrapped = true

TANQRAIM.Name = "TANQR AIM"
TANQRAIM.Parent = Aimlock
TANQRAIM.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TANQRAIM.Position = UDim2.new(0.0221923646, 0, 0.280032873, 0)
TANQRAIM.Size = UDim2.new(0, 162, 0, 46)
TANQRAIM.Font = Enum.Font.Bangers
TANQRAIM.Text = "Tanqr Aim"
TANQRAIM.TextColor3 = Color3.fromRGB(85, 255, 255)
TANQRAIM.TextScaled = true
TANQRAIM.TextSize = 14.000
TANQRAIM.TextWrapped = true
TANQRAIM.MouseButton1Down:connect(function()
	function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == "Players" then
				return v.Name
			end
		end
	end
	local players = getplrsname()
	local plr = game[players].LocalPlayer
	coroutine.resume(coroutine.create(function()
		while  wait(1) do
			coroutine.resume(coroutine.create(function()
				for _,v in pairs(game[players]:GetPlayers()) do
					if v.Name ~= plr.Name and v.Character then
						v.Character.RightUpperLeg.CanCollide = false
						v.Character.RightUpperLeg.Transparency = 10
						v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.LeftUpperLeg.CanCollide = false
						v.Character.LeftUpperLeg.Transparency = 10
						v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.HeadHB.CanCollide = false
						v.Character.HeadHB.Transparency = 10
						v.Character.HeadHB.Size = Vector3.new(13,13,13)

						v.Character.HumanoidRootPart.CanCollide = false
						v.Character.HumanoidRootPart.Transparency = 10
						v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

					end
				end
			end))
		end
	end))
end)
PurpleTeam.Name = "Purple Team"
PurpleTeam.Parent = Aimlock
PurpleTeam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PurpleTeam.Position = UDim2.new(0.550503433, 0, 0.280032873, 0)
PurpleTeam.Size = UDim2.new(0, 165, 0, 46)
PurpleTeam.Font = Enum.Font.Bangers
PurpleTeam.Text = "Purple Team"
PurpleTeam.TextColor3 = Color3.fromRGB(85, 255, 255)
PurpleTeam.TextScaled = true
PurpleTeam.TextSize = 14.000
PurpleTeam.TextWrapped = true
PurpleTeam.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/pyzjWNhk'),true))()

end)
ImageLabel.Parent = Aimlock
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.399142921, 0, 0.524728835, 0)
ImageLabel.Size = UDim2.new(0, 74, 0, 60)
ImageLabel.Image = "http://www.roblox.com/asset/?id=4761224815"

TextLabel.Parent = Aimlock
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-0.00107441097, 0, 0.808442593, 0)
TextLabel.Size = UDim2.new(0, 368, 0, 50)
TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = "Erm what the sigma"
TextLabel.TextColor3 = Color3.fromRGB(85, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function IRPAKL_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	frame = script.Parent.Aimlock -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(IRPAKL_fake_script)()
    end
}

-----------------new section 

local Divider = ars:Divider{
    Name = "Gun Mods"
}

local AutoArs = Divider:Button{
    Name = "Auto ",
    Description = "Gun soots automatically like trigger",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/EUC5PYN6"))()
    end
}

local NoRecoilArs = Divider:Button{
    Name = "No Recoil",
    Description = "Your gun has no recoil yay",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/jDVi9dkv"))()
    end
}

local MaxspreadArs = Divider:Button{
    Name = "Maxspread ",
    Description = "This allows bullets to spread / go everyone op wit norecoil",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/2ADbWBhQ"))()
    end
}

local NoReloadArs = Divider:Button{
    Name = "No Reload ",
    Description = "Reload Time is shorten, when it reloads, shoot quickly to fix",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/4b8fW9pL"))()
    end
}

local FireRateArs = Divider:Button{
    Name = "Firerate ",
    Description = "Firerate Broken, bypass yay",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/WxLTYu2t"))()
    end
}

local Critars = Divider:Button{
    Name = "Criticals Only ",
    Description = "Headshots and crits the player your shooting only",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/CkBEEMWG"))()
    end
}

------------------new section
local Divider = ars:Divider{
    Name = "Player"
}

local ESPToggle = Divider:Toggle{ -- Renamed to ESPToggle for clarity
    Name = "ESP Toggle (Disable Currently In Beta)",
    Description = "Enables and Disables ESP",
    Callback = function(State)
        toggleESP() -- Call the function to toggle the ESP visibility
        print("ESP state: ", ESP)
    end
}

local Infinite Jump = Divider:Button{
    Name = "Infinite Jump",
    Description = "Makes you infinitely jump, each space bar = jump",
    Callback = function()
        game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
            if input.KeyCode == Enum.KeyCode.Space then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
}

local Fly = Divider:Button{
    Name = "Fly ",
    Description = "OMG I CAN FLY?!?!?",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/mZnzKYXt"))()
    end
}

local QuitDivider = ars:Divider{
    Name = "Quit"
}

local Quit = QuitDivider:Button{
    Name = "Close Script.",
    Callback = function()
        UI:Quit{
            Message = "Closing...", -- closing message
            Length = 1 -- seconds the closing message shows for
        }
    end
}
---------------------------------------------------------Credits
local CD = UI:Tab{
    Name = "Credits"
}

local Divider = CD:Divider{
    Name = " ArbYusuf"
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "Swois"
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "n_i_c_k213"
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "‎ "
}

local Divider = CD:Divider{
    Name = "Discord.gg/TUyvu3EHAJ"
}
---------------------------------------------------------End Tab / Credits
