lib.locale()
local config = require('config')

local lawyers = {
    {
        name = 'Lucifer Lothbrok',
        phone = '0420729339'
    },
    {
        name = 'Jim Bobby',
        phone = '04532532523'
    },
    {
        name = 'Robert Jimmy',
        phone = '07979797'
    }
}


CreateThread(function()
    local lawyerOptions = {}

    for i, lawyer in pairs(lawyers) do 
        table.insert(lawyerOptions, {
            title = lawyer.name,
            description = locale('phone') ..lawyer.phone,
            icon = config.lawyerIcon,
            iconColor = config.lawyersColor,
            onSelect = function()
                lib.setClipboard(lawyer.phone)
                ExecuteCommand(config.cancelAnim)
                lib.notify({
                    id = 'lawyer_copy',
                    title = locale('notify'),
                    description = locale('notify_desc'),
                    showDuration = true,
                    position = 'top-right',
                    type = 'success',
                    iconColor = '#76A9D2'
                })
            end
        })
    end

    lib.registerContext({
        id = 'lawyers', -- do not change
        title = config.lawyersTitle,
        onExit = function()
            ExecuteCommand(config.cancelAnim)
        end,
        menu = 'law_menu',
        options = lawyerOptions
    })
end)
