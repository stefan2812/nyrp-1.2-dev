#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do {
	case west: {
		ctrlShow[2011,false]; // Gang Menu
		ctrlShow[2025,false];
		ctrlShow[3016,false];
	};
	case independent: {
		ctrlShow[2011,false]; // Gang Menu
		ctrlShow[2012,false]; // Wanted Liste
		ctrlShow[2025,false];
		ctrlShow[3018,false];
	};

	case civilian: {
		ctrlShow[2012,false]; //Wanted Liste
		ctrlShow[20003,false]; // Placeables
		ctrlShow[3018,false];
	};
};

if(FETCH_CONST(life_adminlevel) < 1) then {
	ctrlShow[2020,false]; // Admin
	ctrlShow[2021,false]; // Admin
	ctrlShow[6847,false]; // Purge
	ctrlShow[6848,false]; // Purge
};

[] call life_fnc_p_updateMenu;

if(FETCH_CONST(life_adminlevel) < 1) then {
	ctrlShow[2020,false]; // Admin
	ctrlShow[2021,false]; // Admin
	ctrlShow[6848,false]; // Purge
};