lib.locale()
local config = require('config')

----- MENU1 -----
lib.registerContext({
    id = 'menu1', -- do not change
    title = 'Assault Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
    title = 'Conduct Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Disturb the Peace',
            description = 'Abusive language in public, arguing verbally in public with someone else including with service staff, aggressive behaviour in public to another person.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$750' },
            },
        },
        {
            title = 'Drunk in a Public Place',
            description = 'Being visibly drunk outside of a home or licensed venue and causing a disturbance.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$400' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Stalking',
            description = 'Repeatedly following or approaching someone, after being advised to leave them alone, without a lawful reason to do so.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Unlawful Assembly',
            description = 'A group of 4 or more people have gathered for the purpose of committing or preparing to commit an offense.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,500' },
            },
        },
        {
            title = 'Violent Disorder',
            description = 'A group of 6 or more people have threatened to or actually injured, attacked or damaged a person or some property using unlawful violence.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$6,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
    }
})

----- MENU3 -----
lib.registerContext({
    id = 'menu3', -- do not change
    title = 'Custody-related Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Resist Arrest',
            description = 'Preventing yourself or someone else from being arrested via non-violent means such as running, jumping or tackling.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})

----- MENU4 -----
lib.registerContext({
    id = 'menu4', -- do not change
    title = 'Theft Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Breaking and Entering',
            description = 'Unlawfully entering a dwelling with tools to break any locking mechanisms and failing to gain consent or prove ownership.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,300' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Burglary',
            description = 'Unlawfully entering a dwelling with tools to break any locking mechanisms and failing to gain consent or prove ownership.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$4,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Robbery',
            description = 'Attempting to steal from someone or a location where the victims are present and aware they are being stolen from. Cannot be charged alongside "burglary or shop steal".',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$5,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Shop Steal',
            description = 'Stealing from a shop where the total value of items taken is equal to or less than $1,000.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Theft of an Emergency Vehicle',
            description = 'Stealing any Ambulance Vehicle, Corrections Vehicle, Police Vehicle, or other government vehicle with a lightbar.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$13,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Theft on Water (Piracy)',
            description = 'Cannot be charged alongside "robbery" or "burglary".',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,550' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})

----- MENU5 -----
lib.registerContext({
    id = 'menu5', -- do not change
    title = 'Traffic Offences',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Driving Never Licensed',
            description = 'Found driving having never possessed a driving license.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Driving Whilst Authorisation Suspended',
            description = 'Found driving after their license has been suspended by Police or Courts.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Engage in a Police Pursuit / Evade Police',
            description = 'Attempting to pull away from Police after being signalled to stop. Pulling away is defined as "deliberately increasing speeds to increase the distance between them and the pursuing vehicle". Cannot be charged alongside "fail to stop for Police".',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$3,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Fail to Stop and Render Assistance (Hit & Run)',
            description = 'Failure to stop after an accident.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$950' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Fail to Stop for Police',
            description = 'Not stopping after being signalled to do so by Police.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,000' },
            },
        },
        {
            title = 'Owner Fail to Provide Details of Driver of their Motor Vehicle',
            description = 'The registered owner of a vehicle is unable or refuses to provide the details of who was driving their car during the commissioning of an offence.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$2,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Negligent Driving',
            description = 'Driving in a careless or inattentive manner without regard for safety.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,500' },
            },
        },
        {
            title = 'Predatory Driving: Aggressive, Tailgating / Roadrage',
            description = 'Found to be tailgating or otherwise acting in an aggressive manner towards another driver.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$800' },
            },
        },
    }
})

----- MENU6 -----
lib.registerContext({
    id = 'menu6',
    title = 'Weapons-related Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Carry a Weapon Openly (Open Carry) Without Legal Authority',
            description = 'Brandishing any weapon publicly without a lawful reason to do so.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$2,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Discharge a Weapon in a Public Place',
            description = 'Discharging any firearm, including flare launchers, tasers, beanbag weaponry etc in a public place without a lawful reason to do so.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$4,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'In Control of Body Armour Without Authorisation',
            description = 'Being in possession of any kind of body armour or imitation body armour without a lawful reason.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,750' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Non Compliance with a Firearm Prohibition Order',
            description = 'Being in possession of any kind of body armour or imitation body armour without a lawful reason.',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$19,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
        {
            title = 'Possession of Ammunition Without Legal Authority',
            description = 'Possession of any ammunition without possessing the relevant license. Also includes ammunition for high-powered/illegal firearms.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,000' },
            },
        },
        {
            title = 'Possess an Imitation Weapon Without Legal Authority',
            description = 'Possession of an object that looks like a real functioning weapon and a reasonable person could assume was real.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Possess a Weapon (Firearm) Without Legal Authority',
            description = 'Possession of any firearm - including flare launchers, tasers, beanbag weaponry etc - in public without a lawful reason.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$7,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Possess a Weapon (Non-Projectile) Without Legal Authority',
            description = 'Possession of bats, knives or other non-projectile weapons without a lawful reason.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$2,500' },
            },
        },
        {
            title = 'Possess An Illegally Modified Weapon *and/or* Accessory Without Legal Authority',
            description = 'Possessing any kind of weapon that has been illegally modified, or possessing the component to perform said modification.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$4,250' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Trafficking/Illegal Sale of 3 or more Weapons',
            description = 'Found in possession of three or more firearms/weapons without lawful authority to do so OR three or more firearms/weapons having been found on other individuals. Apply an FPO with this charge if in relation to firearms.',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$30,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
        {
            title = 'Trafficking/Illegal Sale of a Weapon (Individual/Small Scale)',
            description = 'Caught attempting to sell 2 or less firearms/weapons.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$12,250' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
    }
})

----- MENU7 -----
lib.registerContext({
    id = 'menu7', -- do not change
    title = 'Drugs-related Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Possession of Drug Paraphernalia',
            description = 'Possession of any items used in the manufacture or processing of illegal drugs.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,000' },
            },
        },
        {
            title = 'Possession of a Large Quantity Drug of Dependence',
            description = 'Found in possession of more than 15 units total of any drug or combination of drugs.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$14,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Trafficking a Drug of Dependence',
            description = 'Found in possession of more than 15 units total of any drug or combination of drugs.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$7,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
    }
})

----- MENU8 -----
lib.registerContext({
    id = 'menu8', -- do not change
    title = 'Fraud Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
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
        {
            title = 'Fail to State Name and Address',
            description = 'Failure to provide your name and address upon lawful request of a relevant government agent such as Police.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,000' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'State False Name and Address / Fraudulent Identification',
            description = 'Providing a false name and address or fraudulent identification upon lawful request of a relevant government agent such as Police.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$1,850' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
    }
})

----- MENU9 -----
lib.registerContext({
    id = 'menu9', -- do not change
    title = 'Misc Charges',
    onExit = function()
        ExecuteCommand(config.cancelAnim)
    end,
    menu = 'lawbook', -- do not change
    options = {
        {
            title = '(Insp+ Auth) Operate an Aircraft in an Unsafe or Unauthorised Manner',
            description = 'Any situation wherein an aircraft is used without prior authorisation or where the authorisation terms were violated by the Pilot. Business responsible to also receive a penalty and all involved will be grounded.',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$25,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
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
        {
            title = 'Impersonate Government Employee',
            description = 'Attempting to convince someone that you are an employee of the Government from any agency not given its own unique charge.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$2,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Impersonation of Police Officers',
            description = 'Attempting to convince another person that you are a Police Officer when you are not, including via non-verbal means.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$3,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Indecent Exposure',
            description = 'Failure to wear and maintain appropriate attire in public.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,800' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Kidnapping',
            description = 'Taking someone against their will and preventing them from leaving.',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,500' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Make Threats to Kill',
            description = 'Someone has clearly made a threat or threats that they intend serious bodily harm or death against another person.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$2,500' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Make, Use or Possess False Documents (Includes Money)',
            description = 'Possession of any kind of false documentation no matter who the intended target is. Cannot be charged alongside "Make False Report or False Statements to a Government Agency".',
            icon = 'circle',
            iconColor = '#E2D32F',
            metadata = {
                { label = 'Class', value = 'Summary' },
                { label = 'Fine', value = '$1,550' },
                { label = 'Sentence', value = '7-15 Community Service' },
            },
        },
        {
            title = 'Manslaughter',
            description = 'Killing someone else either in the heat of the moment or via an unplanned action. Cannot be charged alongside any "murder" charges.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$5,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Murder',
            description = 'Killing someone else in a deliberate manner. Cannot be charged alongside any other "murder" charges.',
            icon = 'circle',
            iconColor = '#E38936',
            metadata = {
                { label = 'Class', value = 'Indictable' },
                { label = 'Fine', value = '$8,000' },
                { label = 'Sentence', value = '30 Weeks' },
            },
        },
        {
            title = 'Murder (Police)',
            description = 'The murder of or causing a serious injury to a Police Officer currently acting in their line of duty or as retribution for their activities whilst on duty. A reasonable person must believe the offender should have been aware their victim was a Police Officer.',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$20,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
        {
            title = 'Murder Emergency Service Worker',
            description = 'Murder of an Ambulance or CFA worker. Apply an FPO with this charge.',
            icon = 'circle',
            iconColor = '#D20103',
            metadata = {
                { label = 'Class', value = 'Serious Indictable' },
                { label = 'Fine', value = '$60,000' },
                { label = 'Sentence', value = '50 Weeks' },
            },
        },
        {
            title = 'Trespass',
            description = 'Being in a location without permission to be there.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,500' },
            },
        },
        {
            title = 'Wear or Carry an Article of Disguise with Unlawful Intent',
            description = 'Concealing your visual identity in public without a lawful reason or within the same block of a bank or Government building.',
            icon = 'circle',
            iconColor = '#30A038',
            metadata = {
                { label = 'Class', value = 'Fine' },
                { label = 'Fine', value = '$1,800' },
            },
        },
    }
})
