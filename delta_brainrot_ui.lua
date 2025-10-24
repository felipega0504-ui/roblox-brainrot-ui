-- Delta Brainrot Spawner UI para Steal a Brainrot

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Crear la UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeltaBrainrotUI"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 220, 0, 110)
Frame.Position = UDim2.new(0.5, -110, 0.5, -55)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Delta Brainrot Spawner"
Title.TextColor3 = Color3.fromRGB(255, 255, 50)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(1, -30, 0, 40)
Button.Position = UDim2.new(0, 15, 0, 40)
Button.Text = "Spawnear Delta Brainrot"
Button.BackgroundColor3 = Color3.fromRGB(60, 200, 60)
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 16
Button.Parent = Frame

Button.MouseButton1Click:Connect(function()
    -- Cambia el nombre del RemoteEvent si es necesario
    local remote = ReplicatedStorage:FindFirstChild("SpawnBrainrot")
    if remote then
        remote:FireServer("Delta", LocalPlayer)
    else
        warn("RemoteEvent 'SpawnBrainrot' no encontrado en ReplicatedStorage.")
    end
end)
