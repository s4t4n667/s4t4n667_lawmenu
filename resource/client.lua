lib.locale()
local config = require('config')


CreateThread(function()
    local pedModel = GetHashKey(config.ped.model)
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(0)
    end

    local ped = CreatePed(4, pedModel, config.ped.coords.x, config.ped.coords.y, config.ped.coords.z - 1.0, config.ped.coords.w, false, true)
    SetEntityInvincible(ped, true)
    TaskStartScenarioInPlace(ped, config.ped.scenario, 0.0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    if config.useTarget then
        exports.ox_target:addBoxZone({
            coords = vec3(config.ped.coords.x, config.ped.coords.y, config.ped.coords.z),
            size = vec3(1, 1, 1),
            debug = drawZones,
            options = {
                {
                    icon = config.target.icon,
                    label = config.target.label,
					distance = config.target.distance,
                    onSelect = function()
                        lib.showContext('law_menu')
                        ExecuteCommand(config.animation)
                    end,
                    onExit = function()
                        ExecuteCommand('e c')
                    end,
                },
            },
        })
    else
        while true do
            Wait(0)
            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - vec3(config.ped.coords.x, config.ped.coords.y, config.ped.coords.z))

            if distance < config.text.viewDistance then
                Draw3DText(config.ped.coords.x, config.ped.coords.y, config.ped.coords.z + 1.0, config.text.label, config.text.size or 0.5)

                if IsControlJustPressed(0, 38) and distance < 2.0 then
                    lib.showContext('law_menu')
                    ExecuteCommand(config.animation)
                end
            end
        end
    end
end)


lib.registerContext({
    id = 'law_menu', -- do not change
    title = config.menuTitle,
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = config.menuChargeTitle,
            description = config.menuChargeDescription,
            icon = config.menuChargeIcon,
            iconColor = config.menuChargeIconColor,
			arrow = true,
			onSelect = function()
                lib.showContext('lawbook') -- do not change
            end,
        },
		{
            title = config.menuLawyersTitle,
            description = config.menuLawyersDescription,
            icon = config.menuLawyersIcon,
            iconColor = config.menuLawyersIconColor,
			arrow = true,
			onSelect = function()
                lib.showContext('lawyers') -- do not change
            end,
        },
		{
            title = config.menuPoliceTitle,
            description = config.menuPoliceDescription,
            icon = config.menuPoliceIcon,
            iconColor = config.menuPoliceIconColor,
			arrow = true,
			onSelect = function()
                lib.showContext('police') -- do not change
            end,
        },
    }
})

		
lib.registerContext({
    id = 'lawbook', -- do not change
    title = config.chargesHeading,
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
	menu = 'law_menu',
    options = {
		{
            description = config.chargesDescription,
        },
		{
            title = config.menu1.title,
            description = config.menu1.description,
            icon = config.menu1.icon,
            iconColor = config.menu1.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu1') -- do not change
            end,
        },
        {
            title = config.menu2.title,
            description = config.menu2.description,
            icon = config.menu2.icon,
            iconColor = config.menu2.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu2') -- do not change
            end,
        },
        {
            title = config.menu3.title,
            description = config.menu3.description,
            icon = config.menu3.icon,
            iconColor = config.menu3.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu3') -- do not change
            end,
        },
        {
            title = config.menu4.title,
            description = config.menu4.description,
            icon = config.menu4.icon,
            iconColor = config.menu4.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu4') -- do not change
            end,
        },
        {
            title = config.menu5.title,
            description = config.menu5.description,
            icon = config.menu5.icon,
            iconColor = config.menu5.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu5') -- do not change
            end,
        },
        {
            title = config.menu6.title,
            description = config.menu6.description,
            icon = config.menu6.icon,
            iconColor = config.menu6.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu6') -- do not change
            end,
        },
        {
            title = config.menu7.title,
            description = config.menu7.description,
            icon = config.menu7.icon,
            iconColor = config.menu7.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu7') -- do not change
            end,
        },
        {
            title = config.menu8.title,
            description = config.menu8.description,
            icon = config.menu8.icon,
            iconColor = config.menu8.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu8') -- do not change
            end,
        },
        {
            title = config.menu9.title,
            description = config.menu9.description,
            icon = config.menu9.icon,
			iconColor = config.menu9.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu9') -- do not change
            end,
        },
    }
})


function Draw3DText(x, y, z, text)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextScale(config.text.size, config.text.size)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end