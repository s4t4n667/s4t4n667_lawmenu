lib.locale()
local config = require('config')

----- MENU1 -----
lib.registerContext({
    id = 'menu1',
    title = config.menu1.title,
    menu = 'lawbook',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Assault Government Service Worker',
            description = 'Attacking, kidnapping or otherwise causing harm to a member of AV, The Courts or Corrections.',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$21,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
        {
            title = 'Assault Police',
            description = 'Attacking a Police Officer with an unarmed strike without downing them.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$5,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Common Assault',
            description = 'Attacking any other individual without prior consent with an unarmed strike only without downing them.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Public Violent Acts',
            description = 'Where two or more people are consensually fighting in public.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$900' },
            },
        },
    }
})

----- MENU2 -----
lib.registerContext({
    id = 'menu2', -- do not change
    title = config.menu2.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Breach of Enforced Outlaw Order',
            description = 'Found to be associating with 3 or more members of an outlawed association or to be promoting/assisting or otherwise in support of an outlawed association including through the use of "codephrases".',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$30,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
        {
            title = 'Conduct Endangering Life',
            description = 'Pushing or otherwise moving someone onto the road, causing someone to fall or potentially fall off a high place, brandishing a weapon that might hit a person if discharged/used/detonated.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Criminal Damage',
            description = 'An individual has deliberately damaged or destroyed public or private property. Cannot be charged alongside "violent disorder".',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Disorderly Conduct',
            description = 'Walking down the middle of roads, blocking access to public locations (Magistrates only: conduct that can be considered "annoying to others present but still serious").',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$500' },
            },
        },
    }
})

----- MENU3 -----
lib.registerContext({
    id = 'menu3', -- do not change
    title = config.menu3.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Escape Lawful Custody',
            description = 'Removing yourself or someone else out of prison or police custody after they have been arrested, without authority to do so.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$8,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
    }
})

----- MENU4 -----
lib.registerContext({
    id = 'menu4', -- do not change
    title = config.menu4.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Armed Robbery',
            description = 'Any kind of robbery where the person was carrying a weapon regardless of if it was used. Cannot be charged alongside "armed robbery, burglary, or shop steal".',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$13,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Being in Possession of a Stolen Motor Vehicle',
            description = 'Found to be in possession of a stolen motor vehicle including a failed attempt to gain possession of a motor vehicle not owned by the offender.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,300' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})

----- MENU5 -----
lib.registerContext({
    id = 'menu5', -- do not change
    title = config.menu5.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Dangerous / Negligent Driving',
            description = 'Driving into oncoming traffic or off-road without lawful reason. Swerving across lanes, not checking corners, or otherwise acting in a manner that might cause an accident.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$2,000' },
            },
        },
        {
            title = 'Dangerous Driving causing Death or Serious Injury',
            description = 'Dangerous driving which has caused another individual to be downed. Can stack with manslaughter or murder charges. Can be issued at max once per incident.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$5,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Dangerous Driving causing Injury',
            description = 'Dangerous driving which has caused another individual to be hit by the vehicle or another vehicle trying to get out of the way of the dangerous driver. Can be issued at max once per incident.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})

----- MENU6 -----
lib.registerContext({
    id = 'menu6',
    title = config.menu6.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Assault with a Deadly Weapon',
            description = 'Attacking another person with a vehicle, gun, bladed or blunt melee weapon.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Carry a Weapon Concealed Without Legal Authority',
            description = 'Being in possession of a weapon or firearm without a lawful reason to do so.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$5,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
    }
})

----- MENU7 -----
lib.registerContext({
    id = 'menu7', -- do not change
    title = config.menu7.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Cultivation of Narcotic Plants',
            description = 'Found to be allowing or deliberately causing the growth of a narcotic plant.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$5,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Manufacturing a Drug of Dependence',
            description = 'Being found to be processing any narcotic or drug into a refined form.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$3,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
    }
})

----- MENU8 -----
lib.registerContext({
    id = 'menu8', -- do not change
    title = config.menu8.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Bribery',
            description = 'Attempting to purchase any kind of political favour or offering to pay any government employee any kind of fee outside of their salary or any fines/fees set out in legislation.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Dealing with Proceeds of Crime',
            description = 'Possession of marked money of any value or the possession of rolled, clipped, banded or paperbagged money alongside drugs.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})

----- MENU9 -----
lib.registerContext({
    id = 'menu9', -- do not change
    title = config.menu9.title,
    menu = 'lawbook', -- do not change
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    options = {
        {
            title = 'Failure to Comply with a Noise Abatement Notice',
            description = 'Failure to comply with a council or Police notice to keep the noise down in an area.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$600' },
            },
        },
        {
            title = 'Hinder and Obstruct Police',
            description = 'Preventing lawful Police access to a location or person including via non-violent means. Misdirecting Police in order to permit the escape of another person.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})
