function dodge()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    while true do
        wait()
        if workspace.Enemies:FindFirstChild("Terrorshark") then
            local shark = workspace.Enemies:FindFirstChild("Terrorshark")
            if shark:FindFirstChild("HumanoidRootPart") and (shark.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude < 50 then
                character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 20, 0)
            end
        end
    end
end

coroutine.wrap(dodge)()