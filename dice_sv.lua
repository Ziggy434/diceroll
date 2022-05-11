

RegisterCommand("dice", function(source, args)
    -- 6 sided dice
    if args[1] == '6' then
        local diceResult = math.random(1, 6)
        notify('^4Dice: ^0Rolling a 6 sided dice')
        Citizen.Wait(3)
        TriggerClientEvent('proxDiceResult', -1, source, diceResult)
    -- 8 sided dice
    elseif args[1] == '8' then
        local diceResult = math.random(1, 8)
        notify('^4Dice: ^0Rolling a 8 sided dice')
        Citizen.Wait(3)
        TriggerClientEvent('proxDiceResult', -1, source, diceResult)
    -- 12 sided dice
    elseif args[1] == '12' then
        local diceResult = math.random(1, 12)
        notify('^4Dice: ^0Rolling a 12 sided dice')
        Citizen.Wait(3)
        TriggerClientEvent('proxDiceResult', -1, source, diceResult)
    -- makes a 6 sided dice the default
    elseif args[1] == nil then
            local diceResult = math.random(1, 6)
            notify('^4Dice: ^0Rolling a 6 sided dice')
            Citizen.Wait(3)
            TriggerClientEvent('proxDiceResult', -1, source, diceResult)
    end
    
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end
