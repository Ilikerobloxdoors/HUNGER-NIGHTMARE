local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Hunger NG",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/HUNGER-NIGHTMARE/main/Hunger%20nightmae%20fix.rbxm",

    Speed = 375,
    DelayTime = 5.5,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        3,
    },

    Cycles = {
        Min = 4,
        Max = 8,
        WaitTime = 0.5,
    },

    CamShake = {
        true,
        {10.5, 45, 0.3, 1.6},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11592258941",
            Image2 = "rbxassetid://11592258941",

            Shake = true,

            Sound1 = {
                15798534597,
                {Volume = 0.5},
            },

            Sound2 = {
                15798534597,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(0, 0, 0),
            },

            Tease = {
                true,
                Min = 3,
                Max = 7,
            },
        },
    },

    CustomDialog = {
        "You died to Hunger NG..."
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Hunger NG has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Hunger NG has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Hunger NG has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Hunger NG has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Hunger NG entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Hunger NG")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Hunger NG.")
end

Creator.runEntity(entity)
