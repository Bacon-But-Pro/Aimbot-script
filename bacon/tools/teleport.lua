local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"

tool.Activated:connect(function()
    local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
    local character = game.Players.LocalPlayer.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Lưu trữ hướng hiện tại của người chơi
    local currentOrientation = humanoidRootPart.CFrame - humanoidRootPart.Position
    
    -- Tạo một CFrame mới với vị trí mới và hướng cũ
    local newPos = CFrame.new(pos.X, pos.Y, pos.Z) * currentOrientation
    
    -- Thiết lập vị trí mới cho HumanoidRootPart
    humanoidRootPart.CFrame = newPos
end)

tool.Parent = game.Players.LocalPlayer.Backpack
