local function countRestrictedWeapons()
    local count = 0
    for _, _ in pairs(Config.RestrictedWeapons) do
        count = count + 1
    end
    return count
end

local weaponCount = countRestrictedWeapons()
print(("^5[Cyber WeaponPerms]^0 ^2Script has started successfully.^0 Restricted Weapons Loaded: ^3%d^0."):format(weaponCount))
print(("^5[Cyber WeaponPerms]^0 ^2Join Our Discord:^0 https://discord.gg/KTwVA8AEMK"))

RegisterNetEvent("WeaponPerms:checkPermission", function(weapon)
    local src = source
    local data = Config.RestrictedWeapons[weapon]

    if not data then
        TriggerClientEvent("WeaponPerms:permissionResult", src, true)
        return
    end

    if IsPlayerAceAllowed(src, data.ace) then
        TriggerClientEvent("WeaponPerms:permissionResult", src, true)
    else
        TriggerClientEvent("WeaponPerms:permissionResult", src, false, weapon, data.denyMessage)
    end
end)
