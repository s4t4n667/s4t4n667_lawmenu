lib.locale()
local config = require('config')

local leadership = {
    {
        name = 'Fenrir Lothbrok',
        rank = 'Commander'
    },
    {
        name = 'David Tennant',
        rank = 'Superintendent'
    },
    {
        name = 'Bob Bobson',
        rank = 'Inspector'
    },
    {
        name = 'Josef Josephson',
        rank = 'Senior Sergeant'
    },
    {
        name = 'Steve Stevenson',
        rank = 'Sergeant'
    },
    {
        name = 'Micheal Wright',
        rank = 'Sergeant'
    },
}


---- DO NOT TOUCH ----
CreateThread(function()
    local policeOptions = {}

    for i, police in pairs(leadership) do 
        table.insert(policeOptions, {
            title = police.name,
            description = locale('rank')..police.rank,
            icon = config.policeIcon,
            iconColor = config.policeColor,
        })
    end

    lib.registerContext({
        id = 'police',
        title = config.policeTitle,
        onExit = function()
            ExecuteCommand(config.cancelAnim)
        end,
        menu = 'law_menu',
        options = policeOptions
    })
end)