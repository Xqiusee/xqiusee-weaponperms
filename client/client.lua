local lastWeapon = nil

CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local currentWeapon = GetSelectedPedWeapon(ped)

        if currentWeapon ~= lastWeapon then
            lastWeapon = currentWeapon
            TriggerServerEvent("WeaponPerms:checkPermission", currentWeapon)
        end
    end
end)

RegisterNetEvent("WeaponPerms:permissionResult", function(isAllowed, weapon, message)
    local ped = PlayerPedId()
    if not isAllowed then
        RemoveWeaponFromPed(ped, weapon)
        lib.notify({
            title = "Cyber Weaponperms",
            description = message,
            type = "error",
            position = 'center-right',
        })
    end
end)
