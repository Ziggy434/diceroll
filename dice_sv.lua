RegisterServerEvent('DiceChatMessage')
AddEventHandler('DiceChatMessage', function(id, number)

end)

RegisterCommand("dice", function(source, args)
    if args[1] == '6' then
        local diceResult = math.random(1, 6)
        notify('^4Dice: ^0Rolling a 6 sided dice')
        Citizen.Wait(3)
        TriggerClientEvent('proxDiceResult', -1, source, diceResult)
    elseif args[1] == '8' then
        local diceResult = math.random(1, 8)
        notify('^4Dice: ^0Rolling a 8 sided dice')
        Citizen.Wait(3)

    elseif args[1] == '12' then
        local diceResult = math.random(1, 12)
        notify('^4Dice: ^0Rolling a 12 sided dice')
        Citizen.Wait(3)

    end
    
end)