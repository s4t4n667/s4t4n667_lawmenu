lib.locale()
local config = require('config')

CreateThread(function()
    if config.blip.enabled then
        for _, location in pairs(config.blip.coords) do
            local blip = AddBlipForCoord(location.x, location.y, location.z)
            SetBlipSprite(blip, config.blip.sprite)
            SetBlipColour(blip, config.blip.spriteColor)
            SetBlipScale(blip, config.blip.scale)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(config.blip.label)
            EndTextCommandSetBlipName(blip)
        end
    end
end)

function Draw3DText(x, y, z, text, size)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextScale(size, size)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

CreateThread(function()
    for _, loc in pairs(config.locations) do

        local coords = vec3(loc.coords.x, loc.coords.y, loc.coords.z)

        if loc.ped then
            local model = loc.ped
            RequestModel(model)
            while not HasModelLoaded(model) do Wait(0) end
            local ped = CreatePed( 4,  model,  loc.coords.x,  loc.coords.y,  loc.coords.z - 1.0,  loc.coords.w,  false,  true)

            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            TaskStartScenarioInPlace(ped, loc.scenario, 0.0, true)
        end
        if loc.interactionMode == "target" then
            exports.ox_target:addBoxZone({
                coords = coords,
                size = vec3(1.0, 1.0, 1.0),
                debug = config.drawZones,
                options = {
                    {
                        icon = loc.icon,
                        label = loc.label,
                        distance = loc.distance or 2.0,
                        onSelect = function()
                            lib.showContext('law_menu')
                            ExecuteCommand(config.animation)
                        end,
                    }
                }
            })
        end
        if loc.interactionMode == "3dtext" then
            CreateThread(function()
                while true do
                    local sleep = 1000
                    local playerPed = PlayerPedId()
                    local dist = #(GetEntityCoords(playerPed) - coords)

                    if dist < (loc.viewDistance or 3.0) then
                        sleep = 0
                        Draw3DText(coords.x, coords.y, coords.z + 1.0, loc.label, loc.size or 0.4)

                        if dist < 2.0 and IsControlJustPressed(0, 38) then
                            lib.showContext('law_menu')
                            ExecuteCommand(config.animation)
                        end
                    end
                    Wait(sleep)
                end
            end)
        end
    end
end)

local options = {}
local menus = {
    {
        config = config.charges_menu,
        context = "lawbook",
    },
    {
        config = config.lawyer_menu,
        context = "lawyers",
    },
    {
        config = config.police_menu,
        context = "police",
    }
}

for _, menu in ipairs(menus) do
    local cfg = menu.config

    if cfg and cfg.enabled then
        options[#options + 1] = {
            title = cfg.title,
            description = cfg.description,
            icon = cfg.icon,
            iconColor = cfg.iconColor,
            arrow = cfg.arrow,

            onSelect = function()
                lib.showContext(menu.context)
            end
        }
    end
end

lib.registerContext({
    id = 'law_menu',
    title = config.menuTitle or "Law Menu",
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = options
})

lib.registerContext({
    id = 'lawbook',
    title = config.charges_menu.menuTitle,
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
	menu = 'law_menu',
    options = {
		{
            description = config.charges_menu.menuDescription,
        },
		{
            title = config.menu1.title,
            description = config.menu1.description,
            icon = config.menu1.icon,
            iconColor = config.menu1.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu1')
            end,
        },
        {
            title = config.menu2.title,
            description = config.menu2.description,
            icon = config.menu2.icon,
            iconColor = config.menu2.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu2')
            end,
        },
        {
            title = config.menu3.title,
            description = config.menu3.description,
            icon = config.menu3.icon,
            iconColor = config.menu3.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu3')
            end,
        },
        {
            title = config.menu4.title,
            description = config.menu4.description,
            icon = config.menu4.icon,
            iconColor = config.menu4.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu4')
            end,
        },
        {
            title = config.menu5.title,
            description = config.menu5.description,
            icon = config.menu5.icon,
            iconColor = config.menu5.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu5')
            end,
        },
        {
            title = config.menu6.title,
            description = config.menu6.description,
            icon = config.menu6.icon,
            iconColor = config.menu6.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu6')
            end,
        },
        {
            title = config.menu7.title,
            description = config.menu7.description,
            icon = config.menu7.icon,
            iconColor = config.menu7.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu7')
            end,
        },
        {
            title = config.menu8.title,
            description = config.menu8.description,
            icon = config.menu8.icon,
            iconColor = config.menu8.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu8')
            end,
        },
        {
            title = config.menu9.title,
            description = config.menu9.description,
            icon = config.menu9.icon,
			iconColor = config.menu9.iconColor,
            arrow = true,
            onSelect = function()
                lib.showContext('menu9')
            end,
        },
    }
})

---- POLICE MENU
CreateThread(function()
    local policeOptions = {}

    for _, police in ipairs(config.police_menu.info) do
        policeOptions[#policeOptions + 1] = {
            title = police.name,
            description = locale('rank') .. police.rank,
            icon = config.police_menu.menuIcons,
            iconColor = config.police_menu.menuIconColors,
        }
    end

    lib.registerContext({
        id = 'police',
        title = config.police_menu.title,
        menu = 'law_menu',
        onExit = function()
            ExecuteCommand(config.cancelAnim)
        end,
        options = policeOptions
    })
end)

----- LAWYER MENU
CreateThread(function()
    local lawyerOptions = {}

    for _, lawyer in ipairs(config.lawyer_menu.info) do
        lawyerOptions[#lawyerOptions + 1] = {
            title = lawyer.name,
            description = locale('phone') .. " " .. lawyer.phone,
            icon = config.lawyer_menu.menuIcons or "circle",
            iconColor = config.lawyer_menu.menuIconColors or "",

            onSelect = function()
                if not config.lawyer_menu.copyNumbers then ExecuteCommand(config.cancelAnim) return end

                lib.setClipboard(lawyer.phone)
                ExecuteCommand(config.cancelAnim)

                lib.notify({id = 'lawyer_copy',  title = locale('notify'), description = locale('notify_desc'), type = 'success', position = 'top-right'})
            end
        }
    end

    lib.registerContext({
        id = 'lawyers',
        title = config.lawyer_menu.title,
        menu = 'law_menu',
        options = lawyerOptions
    })
end)