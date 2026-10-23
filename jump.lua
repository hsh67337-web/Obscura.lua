-- LocalScript (تضعه في StarterPlayerScripts أو تشغله عبر Exe/Exploit)

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local InfiniteJumpEnabled = true -- يمكنك تغييرها إلى false لإيقاف السكربت

UserInputService.JumpRequest:Connect(function()
	if InfiniteJumpEnabled then
		local character = LocalPlayer.Character
		if character then
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end
end)
