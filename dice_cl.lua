RegisterNetEvent('proxDiceResult')
AddEventHandler('proxDiceResult', funciton(id, result)
    
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end