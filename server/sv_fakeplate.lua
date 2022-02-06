ESX = nil

print("")
print("[^5tFakePlate^7] - Made by TrapZed#1725^7")
print("")

TriggerEvent(Config.Events["esx:getSharedObject"], function(obj) ESX = obj end)

ESX.RegisterServerCallback("tFakePlate:changePlate", function(source, cb) 
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local blackMoney = xPlayer.getAccount(Config.ArgentSale)

	local numberLetter = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local newPlate = ""
    for i = 1, 8 do
        local randomIndex = math.random(#numberLetter)
        local plate = numberLetter:sub(randomIndex,randomIndex)
        newPlate = newPlate .. plate
    end

	if blackMoney.money >= Config.PriceChangePlate then

        xPlayer.removeAccountMoney(Config.ArgentSale, Config.PriceChangePlate)
		
        TriggerClientEvent(Config.Events["esx:showNotification"], source, "~r~-" .. Config.PriceChangePlate .."$~w~")
		TriggerClientEvent(Config.Events["esx:showNotification"], source, "Nouvelle plaque : ~r~" .. newPlate)
		cb(newPlate)

    else
         TriggerClientEvent(Config.Events["esx:showNotification"], source, "Vous n'avez assez ~r~d\'argent sale")
    end
end)

ESX.RegisterServerCallback("tFakePlate:deletePlate", function(source, cb) 
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local blackMoney = xPlayer.getAccount(Config.ArgentSale)

	local newPlate = "        "

    if blackMoney.money >= Config.PriceDeletePlate then

        xPlayer.removeAccountMoney(Config.ArgentSale, Config.PriceDeletePlate)

        TriggerClientEvent(Config.Events["esx:showNotification"], source, "~r~-" .. Config.PriceDeletePlate .."$~w~")
		TriggerClientEvent(Config.Events["esx:showNotification"], source, "~r~Votre plaque a été retirée")
		cb(newPlate)

    else
         TriggerClientEvent(Config.Events["esx:showNotification"], source, "Vous n'avez assez ~r~d\'argent sale")
    end

end)