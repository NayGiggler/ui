_G.Main = {}

function _G.Main:New(Title)

	local appa = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local main = Instance.new("ImageLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local TextLabel = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")

	appa.Name = "appa"
	appa.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	Frame.Parent = appa
	Frame.BackgroundColor3 = Color3.fromRGB(55, 255, 0)
	Frame.Position = UDim2.new(0.107613467, 0, 0.114732727, 0)
	Frame.Size = UDim2.new(0, 515, 0, 495)

	main.Name = "main"
	main.Parent = Frame
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.Position = UDim2.new(0.0635872558, 0, 0.0450133681, 0)
	main.Size = UDim2.new(0, 450, 0, 449)
	main.Image = "http://www.roblox.com/asset/?id=7216553942"

	UIListLayout.Parent = main
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 20)

	UIAspectRatioConstraint.Parent = main

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(167, 0, 3)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 515, 0, 22)
	TextLabel.Font = Enum.Font.Unknown
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextSize = 14.000

	UICorner.Parent = Frame

	local function BXLBO_fake_script()
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Active = true
		script.Parent.Draggable = true
	end
	coroutine.wrap(BXLBO_fake_script)()

	_G.Frame = {}

	function _G.Frame:Button(Name,Call)

		local TextButton = Instance.new("TextButton")

		TextButton.Parent = main
		TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BackgroundTransparency = 0.650
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 4
		TextButton.Size = UDim2.new(0, 200, 0, 50)
		TextButton.Font = Enum.Font.Unknown
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true
		TextButton.Text = Name

		TextButton.MouseButton1Click:Connect(function()

			pcall(Call)

		end)

	end

	return _G.Frame

end
