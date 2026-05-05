return {

    animation = 'e clipboard', -- animation when looking at the menu
    cancelAnim = 'e c', -- to cancel the animation
    menuTitle = 'Charges & Legal Assistance',

    blip = {
        enabled = true,
        label = 'Laws & Charges',
        sprite = 133,
        spriteColor = 3,
        scale = 0.8,
        coords = {
            vector3(434.8902, -974.0511, 30.7131),
            vector3(-544.0374, -203.6433, 38.2151)
        },
    },

    locations = {
        {
            interactionMode = "target",
            ped = false,
            label = "Charges & Legal Assistance",
            icon = "fa-solid fa-book",
            distance = 1.5,
            coords = vector4(435.5480, -976.9981, 30.7173, 178.2915),
        },
        {
            interactionMode = "target",
            ped = "s_m_y_cop_01",
            scenario = "WORLD_HUMAN_CLIPBOARD",
            label = "Charges & Legal Assistance",
            icon = "fa-solid fa-book",
            distance = 1.5,
            coords = vector4(435.8683, -974.1058, 30.7159, 103.2693),
        },
        {
            interactionMode = "3dtext",
            ped = "s_m_y_cop_01",
            scenario = "WORLD_HUMAN_CLIPBOARD",
            label = "~g~[E] ~w~View Charges & Get Legal Assistance",
            size = 0.4,
            viewDistance = 3.0,
            coords = vector4(-544.0374, -203.6433, 38.2151, 164.6456),
        },
    },

    charges_menu = {
        enabled = true,
        title = 'List of Charges',
        description = 'View the list of charges issued by the Police.',
        icon = 'fa-list',
        iconColor = '',
        arrow = true,

        menuTitle = 'Charges & PINs',
        menuDescription = 'The list of charges and PINs below have been verified by the Police.',
    },
    
    lawyer_menu = {
        enabled = true,
        title = 'Approved Lawyers',
        description = 'Obtain contact details for approved Lawyers.',
        icon = 'fa-users',
        iconColor = '',
        arrow = true,

        menuIcons = 'fa-user',
        menuIconColors = '',
        
        copyNumbers = true, -- whether people can select and copy down the phone number to their clipboard
        info = {
            {
                name = 'Jim Bobby',
                phone = '04532532523'
            },
            {
                name = 'Robert Jimmy',
                phone = '07979797'
            },
        },
    },

    police_menu = {
        enabled = true,
        title = 'Police Leadership',
        description = 'Current Police leadership members. Request a meeting via the front desk or 000.',
        icon = 'fa-shield',
        iconColor = '',
        arrow = true,

        menuIcons = 'fa-shield',
        menuIconColors = '',

        info = {
            {
                name = 'Steve Stevenson',
                rank = 'Commander'
            },
            {
                name = 'Bob Bobson',
                rank = 'Superintendent'
            },
        },
    },

--------------------- TO CHANGE THE CHARGE DETAILS, EDIT THE CHARGES.LUA  ---------------------
------- TO REMOVE/ADD A MENU, FOLLOW THE FORMAT IN CLIENT.LUA, FAIRLY SELF-EXPLANATORY --------
    menu1 = {
        title = 'Assault Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-person-falling-burst',
        iconColor = '',
    },
    menu2 = {
        title = 'Conduct Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-users',
        iconColor = '',
    },
    menu3  = {
        title = 'Custody-related Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-person-military-pointing',
        iconColor = '',
    },
    menu4 = {
        title = 'Theft Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-mask',
        iconColor = '',
    },
    menu5 = {
        title = 'Traffic Offences',
        description = 'Last updated - 05/05/26',
        icon = 'fa-car-burst',
        iconColor = '',
    },
    menu6 = {
        title = 'Weapons-related Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-gun',
        iconColor = '',
    },
    menu7 = {
        title = 'Drug-related Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-capsules',
        iconColor = '',
    },
    menu8 = {
        title = 'Fraud Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-sack-dollar',
        iconColor = '',
    },
    menu9 = {
        title = 'Miscellaneous Charges',
        description = 'Last updated - 05/05/26',
        icon = 'fa-list',
        iconColor = '',
    },
}