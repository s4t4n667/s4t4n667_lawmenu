return {
    
    useTarget = true, -- if false, uses a ped and 3dtext

    animation = 'e clipboard', -- animation when looking at the menu
    cancelAnim = 'e c', -- to cancel the animation

    target = {
        label = 'Charges & Legal Assistance', -- only visible if useTarget is true
        icon = 'fa-solid fa-book',
        distance = 1.5, -- distance you can target the ped from
    },

    text = {
        label = '~g~[E] ~w~View Charges & Get Legal Assistance', -- only visible if useTarget is false
        size = 0.4,
        viewDistance = 3.0,
    },

    ped = {
        model = "S_M_Y_Cop_01", -- Example ped model
        coords = vector4(433.35, -985.87, 30.71, 56.85),
        scenario = 'WORLD_HUMAN_CLIPBOARD',
    },

    menuTitle = 'Charges & Legal Assistance',
    
    charges_menu = {
        disabled = false,
        title = 'List of Charges',
        description = 'View the list of charges issued by the Victoria Police.',
        icon = 'fa-list',
        iconColor = '',
    },
    
    lawyers_menu = {
        disabled = false,
        title = 'Approved Lawyers',
        description = 'Obtain contact details for approved Lawyers.',
        icon = 'fa-users',
        iconColor = '',
    },

    police_menu = {
        disabled = false,
        title = 'Current Police Leadership',
        description = 'Current Victoria Police leadership members. Request a meeting via the front desk or 000.',
        icon = 'fa-shield',
        iconColor = '',
    },
   
    lawyersTitle = 'Approved Lawyers',
    lawyersColor = '#76A9D2',
    lawyerIcon = 'fa-user',

    policeTitle = 'Police Leadership',
    policeIcon = 'fa-shield',
    policeColor = '#1B5E94',

    chargesHeading = 'Charges & PINs',
    chargesTitle = 'List of Charges',
    chargesDescription = 'The list of charges and PINs below have been verified by the Victoria Police. Correct as of 21/11/24.',


--------------- TO CHANGE THE CHARGE DETAILS, EDIT THE CHARGES.LUA (not client) ---------------
------- TO REMOVE/ADD A MENU, FOLLOW THE FORMAT IN CLIENT.LUA, FAIRLY SELF-EXPLANATORY --------
    menu1 = {
        title = 'Assault Charges',
        description = 'Last updated - 21/11/24',
        icon = 'fa-person-falling-burst',
        iconColor = '#76A9D2',
    },
    menu2 = {
        title = 'Conduct Charges',
        description = 'Last updated - 05/10/24',
        icon = 'fa-users',
        iconColor = '#76A9D2',
    },
    menu3  = {
        title = 'Custody-related Charges',
        description = 'Last updated - 05/10/24',
        icon = 'fa-person-military-pointing',
        iconColor = '#76A9D2',
    },
    menu4 = {
        title = 'Theft Charges',
        description = 'Last updated - 07/12/23',
        icon = 'fa-mask',
        iconColor = '#76A9D2',
    },
    menu5 = {
        title = 'Traffic Offences',
        description = 'Last updated - 05/10/24',
        icon = 'fa-car-burst',
        iconColor = '#76A9D2',
    },
    menu6 = {
        title = 'Weapons-related Charges',
        description = 'Last updated - 21/11/24',
        icon = 'fa-gun',
        iconColor = '#76A9D2',
    },
    menu7 = {
        title = 'Drug-related Charges',
        description = 'Last updated - 05/10/24',
        icon = 'fa-capsules',
        iconColor = '#76A9D2',
    },
    menu8 = {
        title = 'Fraud Charges',
        description = 'Last updated - 21/11/24',
        icon = 'fa-sack-dollar',
        iconColor = '#76A9D2',
    },
    menu9 = {
        title = 'Miscellaneous Charges',
        description = 'Last updated - 21/11/24',
        icon = 'fa-list',
        iconColor = '#76A9D2',
    },

}
