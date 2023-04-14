local self = {
    ["queueType"] = "skywars_to2";
}

local Character = game.Players.LocalPlayer.Character
local Player = game.Players.LocalPlayer

local event = game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue

local Humanoid = Character:WaitForChild("Humanoid")

task.wait(50)
Humanoid:MoveTo(Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(15, 0, 0))
task.wait(0.5)
Humanoid.Health = 0
event:FireServer(self)
