---
layout: page
permalink: /MyCodesFromRoblox
---

hmmmm system not working?:

<p style="color: red;"><strong>ONLY WORK IN ROBLOX SERVER SCRIPT! [lua]</strong></p>

```lua

local InsertService = game:GetService("InsertService")
local Debundance = false
local DebundanceOfSound = false
local DebundanceOfHit = false
local errorfatal = false

local HitAnimations = {} -- animations: 7620781422, 7621448729 AUTO PROGRAMABLE NOT CHANGE!!!


local __CreateTool__ = function(LocalPlayer) -- bruhhh
	local Tool = Instance.new("Tool")
	local Model = nil
	local Success = pcall(function() Model = InsertService:LoadAsset(7607773292) end) -- 7607773292
	if not Success then
		errorfatal = true
		warn("Imposible to load the Pan Model. Pls try again later.")
		return
	end
	Model.Main_of_pan.Name = "Handle"
	Model.Handle.Parent = Tool
	Tool.Parent = LocalPlayer.Character
	return Tool
end

local __CreateModelUsingPerfectPositionByTool__ = function(ToolProcess) -- neh
	if ToolProcess == nil then errorfatal = true warn("Error in try to get Tool. Returning: 'Nil'") return end
	if errorfatal then return end
	if ToolProcess.ClassName ~= "Tool" then errorfatal = true warn("Sorry the ".. ToolProcess.Name ..", not a Tool END") return end
	local WeldC = Instance.new("WeldConstraint")
	local Model = nil
	local Success = pcall(function() Model = InsertService:LoadAsset(7607773292) end)
	if not Success then
		errorfatal = true
		warn("Imposible to load the Pan Model. Pls try again later.")
		return
	end

	WeldC.Parent = ToolProcess.Parent
	WeldC.Part0 = ToolProcess.Parent:FindFirstChild("Right Arm")
	WeldC.Part1 = Model.Main_of_pan

	Model.Parent = ToolProcess.Parent

	Model.Main_of_pan.Position = ToolProcess.Handle.Position
	Model.Main_of_pan.Orientation = ToolProcess.Handle.Orientation
	Model.Main_of_pan.Pan.Position = ToolProcess.Handle.Pan.Position
	Model.Main_of_pan.Pan.Orientation = ToolProcess.Handle.Pan.Orientation
	Model.Main_of_pan.HitBox.Position = ToolProcess.Handle.HitBox.Position
	Model.Main_of_pan.HitBox.Orientation = ToolProcess.Handle.HitBox.Orientation

	ToolProcess:Destroy()
end

local __StartAnimations__ = function(LocalPlayer)
	if errorfatal then return end
	if not game:GetService("ReplicatedStorage"):FindFirstChild("Pan_Animations") then
		local Folder = Instance.new("Folder")
		Folder.Parent = game:GetService("ReplicatedStorage")
		Folder.Name = "Pan_Animations"
	end

	if not game:GetService("ReplicatedStorage").Pan_Animations:FindFirstChild("ButtonMouse1Down") then
		local Animation = Instance.new("RemoteEvent")
		Animation.Parent = game:GetService("ReplicatedStorage"):FindFirstChild("Pan_Animations")
		Animation.Name = "ButtonMouse1Down"
	end

	if not game:GetService("ReplicatedStorage").Pan_Animations:FindFirstChild("Pan_Hit1") then
		local Animation = Instance.new("Animation")
		Animation.Parent = game:GetService("ReplicatedStorage"):FindFirstChild("Pan_Animations")
		Animation.Name = "Pan_Hit1"
		table.insert(HitAnimations, 1, game:GetService("ReplicatedStorage").Pan_Animations:FindFirstChild("Pan_Hit1"))
		Animation.AnimationId = "rbxassetid://7620781422"
	end

	if not game:GetService("ReplicatedStorage").Pan_Animations:FindFirstChild("Pan_Hit2") then
		local Animation = Instance.new("Animation")
		Animation.Parent = game:GetService("ReplicatedStorage"):FindFirstChild("Pan_Animations")
		Animation.Name = "Pan_Hit2"
		table.insert(HitAnimations, 2, game:GetService("ReplicatedStorage").Pan_Animations:FindFirstChild("Pan_Hit2"))
		Animation.AnimationId = "rbxassetid://7621448729"
	end

	if LocalPlayer.Character.Animate.idle:FindFirstChild("Animation2") then LocalPlayer.Character.Animate.idle.Animation2:Remove() end
	LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://7607147846"
	LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://7612277377"
	LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://7612277377"

	LocalPlayer.Character.Humanoid.Jump = true
end

local __LoadHitItens__ = function(LocalPlayer)
	wait(1.5)
	if errorfatal then return end
	local HitBox = LocalPlayer.Character.Model.Main_of_pan.HitBox
	local LocalScript = nil
	local Success = pcall(function() LocalScript = InsertService:LoadAsset(7616032388).GetMouse end)
	if not Success then
		errorfatal = true
		warn("Imposible to load the Get Mouse Script. Pls try again later.")
		return
	end
	LocalScript.Parent = LocalPlayer.Character

	game:GetService("ReplicatedStorage").Pan_Animations:FindFirstChild("ButtonMouse1Down").OnServerEvent:Connect(function()
		if not Debundance then
			local RandomNumber = math.random(1, 2)
			local Animation = LocalPlayer.Character.Humanoid:LoadAnimation(HitAnimations[RandomNumber])
			local WaitValue = nil
			Debundance = true
			if RandomNumber == 1 then
				WaitValue = 1.2
			elseif RandomNumber == 2 then
				WaitValue = 0.7
			end
			local Sound = Instance.new("Sound")
			Sound.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			Sound.SoundId = "rbxassetid://3431749479"
			Sound.Volume = 3
			print(WaitValue)
			Animation:Play()
			wait(WaitValue)
			HitBox.Touched:Connect(function(Part)
				if Part.Parent:FindFirstChild("Humanoid") then
					wait(WaitValue)
					if not DebundanceOfHit then
						DebundanceOfHit = true
						DebundanceOfSound = true
						Part.Parent.Humanoid.Health = 0

						wait(0.5)
						DebundanceOfHit = false
					end
				end
			end)
			if DebundanceOfSound then
				Sound:Play()
				DebundanceOfSound = false
			end
			wait(1)
			Debundance = false
			wait(1)
			Sound:Destroy()
		end
	end)
end

script.Parent.ProximityPrompt.Triggered:Connect(function(LocalPlayer)

	__CreateModelUsingPerfectPositionByTool__(__CreateTool__(LocalPlayer))

	__StartAnimations__(LocalPlayer)

	__LoadHitItens__(LocalPlayer)
end)

```
