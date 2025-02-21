--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local xsgi21s = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local minus = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

-- Properties

xsgi21s.Name = "xsgi21s"
xsgi21s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
xsgi21s.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = xsgi21s
Frame.BackgroundColor3 = Color3.new(0.388235, 0.388235, 0.388235)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.28137821, 0, 0.220198676, 0)
Frame.Size = UDim2.new(0, 650, 0, 333)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.308333337, 0, 0.0450000018, 0)
TextLabel.Size = UDim2.new(0, 276, 0, 78)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "X-S_Ploit SS Console"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0.5
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.143635258, 0, 0.267589658, 0)
TextBox.Size = UDim2.new(0, 489, 0, 194)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Ubuntu
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.333333, 1, 0)
TextBox.TextSize = 14
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_3.Parent = TextBox

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0, 1, 0)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0189349372, 0, 0.850955606, 0)
TextButton.Size = UDim2.new(0, 85, 0, 47)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "Run"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

UICorner_4.Parent = TextButton

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.BorderColor3 = Color3.new(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.895858049, 0, 0.0431478247, 0)
close.Size = UDim2.new(0, 55, 0, 34)
close.Font = Enum.Font.FredokaOne
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true

UICorner_5.Parent = close

minus.Name = "minus"
minus.Parent = Frame
minus.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
minus.BorderColor3 = Color3.new(0, 0, 0)
minus.BorderSizePixel = 0
minus.Position = UDim2.new(0.795858085, 0, 0.0431478247, 0)
minus.Size = UDim2.new(0, 55, 0, 34)
minus.Font = Enum.Font.FredokaOne
minus.Text = "-"
minus.TextColor3 = Color3.new(1, 1, 1)
minus.TextScaled = true
minus.TextSize = 14
minus.TextWrapped = true

UICorner_6.Parent = minus

-- Scripts

local function GHTKJM_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		game.ReplicatedStorage.RobloxSupportModelCC_S:FireServer(script.Parent.Parent.TextBox.Text)
	end)
end
coroutine.wrap(GHTKJM_fake_script)()
local function YENUAW_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(YENUAW_fake_script)()
local function LMBKM_fake_script() -- minus.LocalScript 
	local script = Instance.new('LocalScript', minus)

	local enabled = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if enabled == false then
			enabled = true
			script.Parent.Parent.TextButton.Visible = false
			script.Parent.Parent.TextBox.Visible = false
			script.Parent.Parent.TextLabel.Visible = false
			script.Parent.Parent.Size = UDim2.new(0, 547, 0, 53)
		else
			enabled = false
			script.Parent.Parent.TextButton.Visible = true
			script.Parent.Parent.TextBox.Visible = true
			script.Parent.Parent.TextLabel.Visible = true
			script.Parent.Parent.Size = UDim2.new(0, 650, 0, 333)
		end
	end)
end
coroutine.wrap(LMBKM_fake_script)()
local function UYTRS_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local dragging = false
	local dragInput, mouseStart, frameStart
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mouseStart = input.Position
			frameStart = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - mouseStart
			frame.Position = UDim2.new(
				frameStart.X.Scale,
				frameStart.X.Offset + delta.X,
				frameStart.Y.Scale,
				frameStart.Y.Offset + delta.Y
			)
		end
	end)
	
end
coroutine.wrap(UYTRS_fake_script)()
