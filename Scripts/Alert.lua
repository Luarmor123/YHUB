function Alertcreate(desc, duration)
    duration = duration or 2  -- إذا لم يتم تحديد وقت، سيكون 2 ثانية بشكل افتراضي.

    if game.CoreGui:FindFirstChild("AlertFrame") then
        local alertFrame = game.CoreGui.AlertFrame
        if alertFrame:FindFirstChild("OutlineFrame") then
            alertFrame.OutlineFrame:Destroy()
        end
    end

    local Frame = Instance.new("Frame")
    local Image = Instance.new("ImageLabel")
    local Title = Instance.new("TextLabel")
    local Desc = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local UICorner2 = Instance.new("UICorner")
    local OutlineFrame = Instance.new("Frame")

    OutlineFrame.Name = "OutlineFrame"
    OutlineFrame.Parent = game.CoreGui.AlertFrame
    OutlineFrame.ClipsDescendants = true
    OutlineFrame.BackgroundColor3 = _G.Dark
    OutlineFrame.BackgroundTransparency = 0.4
    OutlineFrame.Position = UDim2.new(1, 0, 0, 0)
    OutlineFrame.Size = UDim2.new(0, 212, 0, 72)

    Frame.Name = "Frame"
    Frame.Parent = OutlineFrame
    Frame.ClipsDescendants = true
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = _G.Dark
    Frame.BackgroundTransparency = 0.1
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0, 200, 0, 60)

    Image.Name = "Icon"
    Image.Parent = Frame
    Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Image.BackgroundTransparency = 1
    Image.Position = UDim2.new(0, 8, 0, 8)
    Image.Size = UDim2.new(0, 45, 0, 45)
    Image.Image = "rbxassetid://93017852606884"

    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 55, 0, 14)
    Title.Size = UDim2.new(0, 10, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "AstroXHub"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Desc.Parent = Frame
    Desc.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    Desc.BackgroundTransparency = 1
    Desc.Position = UDim2.new(0, 55, 0, 33)
    Desc.Size = UDim2.new(0, 10, 0, 10)
    Desc.Font = Enum.Font.GothamSemibold
    Desc.TextTransparency = 0.3
    Desc.Text = desc
    Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
    Desc.TextSize = 12
    Desc.TextXAlignment = Enum.TextXAlignment.Left

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame
    UICorner2.CornerRadius = UDim.new(0, 12)
    UICorner2.Parent = OutlineFrame

    OutlineFrame:TweenPosition(UDim2.new(1, -200, 0, 0), "Out", "Quad", 0.4, true)

    wait(duration) -- الانتظار حسب المدة التي تم تمريرها

    OutlineFrame:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.5, true)
    wait(0.6)
    OutlineFrame:Destroy()
end
