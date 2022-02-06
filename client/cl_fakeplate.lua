ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent(Config.Events["esx:getSharedObject"], function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

function tFakePlate()
    local tFakePlate = RageUI.CreateMenu(Config.PedName, "tFakePlate")

    RageUI.Visible(tFakePlate, not RageUI.Visible(tFakePlate))

    while tFakePlate do
        
        Citizen.Wait(0)

        RageUI.IsVisible(tFakePlate, true, true, true, function()
    
            RageUI.Separator("→ ~r~ Plaque d'immatriculation ~s~ ←")
            RageUI.Button("Changer ma plaque", nil, {RightLabel = "~g~" .. Config.PriceChangePlate .. "$"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                ChangePlate()
                end
            end)
            RageUI.Button("Supprimer ma plaque", nil, {RightLabel = "~g~" .. Config.PriceDeletePlate .. "$"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                DeletePlate()
                end
            end)

        end)

        if not RageUI.Visible(tFakePlate) then
            tFakePlate = RMenu:DeleteType("tFakePlate", true)
        end
    end
end

Citizen.CreateThread(function()
    while true do
        local interval = 750
        
        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.Position)

        if dist <= 3 then
            interval = 1
            draw2dText(("Appuyez sur [~r~E~s~] pour intéragir avec votre plaque"), { 0.39, 0.95 } )
            --ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour ~b~intéragir")
            if IsControlJustPressed(1,51) then
                tFakePlate()
            end
     
        end

        Citizen.Wait(interval)
    
    end

end)

function ChangePlate()
    local PlayerPed = PlayerPedId()
    local coords = GetEntityCoords(PlayerPed)
    local vehicle = ESX.Game.GetClosestVehicle(coords)
    local vehiclepos = GetEntityCoords(vehicle)

    ESX.TriggerServerCallback("tFakePlate:changePlate", function(newPlate)
        SetVehicleNumberPlateText(vehicle, newPlate)
    end)

end

function DeletePlate()
    local PlayerPed = PlayerPedId()
    local coords = GetEntityCoords(PlayerPed)
    local vehicle = ESX.Game.GetClosestVehicle(coords)
    local vehiclepos = GetEntityCoords(vehicle)

    ESX.TriggerServerCallback("tFakePlate:deletePlate", function(newPlate)
        SetVehicleNumberPlateText(vehicle, newPlate)
    end)

end

function draw2dText(text, pos)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextScale(0.55, 0.55)
	SetTextColour(255, 255, 255, 255)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()

	BeginTextCommandDisplayText('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(table.unpack(pos))
end