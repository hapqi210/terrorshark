local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hack Menu", "Ocean")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Hacks")

Section:NewToggle("Auto Farm", "Tự động farm", function(state)
    if state then
        print("Auto Farm On")
    else
        print("Auto Farm Off")
    end
end)

Section:NewSlider("WalkSpeed", "Thay đổi tốc độ di chuyển", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Teleport to Safe Zone", "Di chuyển đến khu an toàn", function()
    print("Teleported!")
end)