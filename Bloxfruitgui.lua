-- Basic GUI Script for Blox Fruits
-- Use responsibly and at your own risk!

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BloxFruitsGUI"
ScreenGui.Parent = game.CoreGui

-- Create Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 200) -- Width: 300px, Height: 200px
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100) -- Center of screen
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark gray
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true

-- Title Label
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 50) -- Full width, 50px height
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- Darker gray
Title.BorderSizePixel = 0
Title.Text = "Blox Fruits GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20

-- Auto-Farm Button
local AutoFarmButton = Instance.new("TextButton")
AutoFarmButton.Parent = MainFrame
AutoFarmButton.Size = UDim2.new(0.9, 0, 0, 40) -- 90% width, 40px height
AutoFarmButton.Position = UDim2.new(0.05, 0, 0.3, 0) -- Slightly below title
AutoFarmButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Gray button
AutoFarmButton.Text = "Enable Auto-Farm"
AutoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
AutoFarmButton.Font = Enum.Font.SourceSans
AutoFarmButton.TextSize = 18

-- Fruit Collection Button
local FruitCollectionButton = Instance.new("TextButton")
FruitCollectionButton.Parent = MainFrame
FruitCollectionButton.Size = UDim2.new(0.9, 0, 0, 40) -- 90% width, 40px height
FruitCollectionButton.Position = UDim2.new(0.05, 0, 0.55, 0) -- Below Auto-Farm button
FruitCollectionButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Gray button
FruitCollectionButton.Text = "Enable Fruit Collection"
FruitCollectionButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
FruitCollectionButton.Font = Enum.Font.SourceSans
FruitCollectionButton.TextSize = 18

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = MainFrame
CloseButton.Size = UDim2.new(0.9, 0, 0, 40) -- 90% width, 40px height
CloseButton.Position = UDim2.new(0.05, 0, 0.8, 0) -- Below Fruit Collection button
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red button
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextSize = 18

-- Features Logic
local autoFarmEnabled = false
local fruitCollectionEnabled = false

-- Toggle Auto-Farm
AutoFarmButton.MouseButton1Click:Connect(function()
    autoFarmEnabled = not autoFarmEnabled
    AutoFarmButton.Text = autoFarmEnabled and "Disable Auto-Farm" or "Enable Auto-Farm"
    print("Auto-Farm:", autoFarmEnabled)
    if autoFarmEnabled then
        -- Auto-Farm logic goes here
        print("Starting Auto-Farm...")
    else
        print("Stopping Auto-Farm...")
    end
end)

-- Toggle Fruit Collection
FruitCollectionButton.MouseButton1Click:Connect(function()
    fruitCollectionEnabled = not fruitCollectionEnabled
    FruitCollectionButton.Text = fruitCollectionEnabled and "Disable Fruit Collection" or "Enable Fruit Collection"
    print("Fruit Collection:", fruitCollectionEnabled)
    if fruitCollectionEnabled then
        -- Fruit Collection logic goes here
        print("Starting Fruit Collection...")
    else
        print("Stopping Fruit Collection...")
    end
end)

-- Close GUI
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    print("GUI Closed.")
end)
