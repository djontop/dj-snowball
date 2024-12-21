local QBCore = exports['qb-core']:GetCoreObject()

local function LoadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

local function PickSnowBall()
    local playerPed = PlayerPedId()
    if IsNextWeatherType('XMAS') and not IsPedInAnyVehicle(playerPed, true) and not IsPlayerFreeAiming(PlayerId()) and not IsPedSwimming(playerPed) and not IsPedSwimmingUnderWater(playerPed) and not IsPedRagdoll(playerPed) and not IsPedFalling(playerPed) and not IsPedRunning(playerPed) and not IsPedSprinting(playerPed) and GetInteriorFromEntity(playerPed) == 0 and not IsPedShooting(playerPed) and not IsPedUsingAnyScenario(playerPed) and not IsPedInCover(playerPed, 0) then
        LoadAnimDict('anim@mp_snowball')
        TaskPlayAnim(playerPed, 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
        Wait(2000)
        GiveWeaponToPed(playerPed, GetHashKey('WEAPON_SNOWBALL'), Config.Snowballs, false, true)
    end
end

RegisterCommand('snowball', function()
    if IsNextWeatherType('XMAS') then
        PickSnowBall()
    else
        local trollMessages = Messages[Config.Language] or Messages.English
        TriggerEvent('QBCore:Notify', trollMessages[math.random(#trollMessages)], 'error')
    end
end)
