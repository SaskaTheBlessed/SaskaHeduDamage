Citizen.CreateThread(function()
    while true do
        Citizen.Wait(200)                                                                                                                                                                                                                                                                                                                                                          --Made By SaskaTheBlessed
        if HasEntityBeenDamagedByWeapon(GetPlayerPed(-1), 0, 2) then
            local testi, hitbox = GetPedLastDamageBone(GetPlayerPed(-1))
            if hitbox == 31086 then
                if HasEntityBeenDamagedByWeapon(GetPlayerPed(-1), "WEAPON_UNARMED", 0) then
                elseif HasEntityBeenDamagedByWeapon(GetPlayerPed(-1), "WEAPON_STUNGUN", 0) then
                else
                  SetEntityHealth(GetPlayerPed(-1), 0)
                end
            end
        end
    end
end)