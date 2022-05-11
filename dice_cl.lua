RegisterNetEvent('proxDiceResult')
AddEventHandler('proxDiceResult', function(id, result)
    local playerId = PlayerId()
    local senderId = GetPlayerFromServerId(id)
    local senderName = GetPlayerName(id)

    if senderId == playerId then
        TriggerEvent('chatMessage', '^4' .. senderName .. ' rolled a ' .. result)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(playerId)), GetEntityCoords(GetPlayerPed(senderId)), true) < 19.999 then
        TriggerEvent('chatMessage', '^4' .. senderName .. ' rolled a ' .. result)
    end
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

