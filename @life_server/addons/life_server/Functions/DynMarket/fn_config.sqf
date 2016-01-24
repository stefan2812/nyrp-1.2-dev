/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 04;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 05;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 05;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = false; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text =
[
	"Marktpreise wurden aufgrund von Angebot und Nachfrage angepasst!",
	"Neue Marktpreise werden kalkuliert..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████
//1. The Tag: "Legal" = This is used to identify the group, it can be nonsense if you want it to be, but it must be unique!
//2. The Itemarray = This is the array which contains all the items that should be assigned to the group:
//3. The Item = This is the format that should be used for new items ["itemname",-1,MinPrice,MaxPrice],
//4. The Groupfactor = This factor decides how much sold items of a group should influence the price of other items in their group.
DYNMARKET_Items_Groups =
[
	["Legal",
		[
			["diamond_cut",-1,20625,41250],
			["oil_processed",-1,6375,12750],
			["copper_ingot",-1,1125,2250],
			["iron_ingot",-1,1875,3750],
			["apple",-1,12,20],
			["peach",-1,19,31],
			["glass",-1,1350,2700],
			["salt_refined",-1,1688,3375],
			["cement",-1,2100,4200]
		],
		0.5
	],
	["Illegal",
		[

			["goldBar",-1,90000,125000],
			["cocaine_processed",-1,9000,18000],
			["heroin_processed",-1,6000,12000],
			["marijuana",-1,3150,6300]

		],
		0.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        =
[
	["apple",16],
	["peach",25],
	["oil_processed",8500],
	["copper_ingot",1500],
	["iron_ingot",2500],
	["salt_refined",2250],
	["glass",1800],
	["diamond_cut",12000],
	["cement",2800],
	["heroin_processed",8000],
	["marijuana",4200],
	["goldBar",110000],
	["cocaine_processed",12000]
];

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
