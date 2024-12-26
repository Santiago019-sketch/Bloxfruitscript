-- Blox Fruits Auto-Farming Script
-- Use responsibly and at your own risk!

local player = game.Players.LocalPlayer
local autoFarmEnabled = true

-- Function to farm NPCs
function autoFarm()
    while autoFarmEnabled do
        -- Get player's level
        local level = player.Data.Level.Value
        print("Current Level: " .. level)

        -- Find suitable quest NPC based on level
        local questNPC = findQuestNPC(level)
        if questNPC then
            startQuest(questNPC)
        else
            print("No suitable quest NPC found.")
            break
        end

        -- Farm target NPCs
        local targets = findTargets()
        for _, npc in pairs(targets) do
            attackNPC(npc)
        end

        -- Wait to prevent script spam
        wait(5)
    end
end

-- Function to find a quest NPC
function findQuestNPC(level)
    for _, npc in pairs(game.Workspace.NPCs:GetChildren()) do
        if npc:FindFirstChild("Quest") and npc.Quest:FindFirstChild("MinLevel") then
            if level >= npc.Quest.MinLevel.Value and level <= npc.Quest.MaxLevel.Value then
                return npc
            end
        end
    end
    return nil
end

-- Function to start a quest
function startQuest(npc)
    if npc and npc:FindFirstChild("Head") then
        player.Character.HumanoidRootPart.CFrame = npc.Head.CFrame
        wait(1)
        fireproximityprompt(npc.Head:FindFirstChild("ProximityPrompt"))
    end
end

-- Function to find NPCs to attack
function findTargets()
    local targets = {}
    for _, obj in pairs(game.Workspace.Enemies:GetChildren()) do
        if obj:FindFirstChild("Humanoid") and obj.Humanoid.Health > 0 then
            table.insert(targets, obj)
        end
    end
    return targets
end

-- Function to attack an NPC
function attackNPC(npc)
    if npc and npc:FindFirstChild("Humanoid") then
        player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
        wait(0.5)
        print("Attacking NPC: " .. npc.Name)
        -- Replace with actual attack logic
    end
end

-- Start the auto-farming process
autoFarm()
