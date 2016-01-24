#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((FETCH_CONST(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};
// Set Paycheck for Police For Each rank
switch (FETCH_CONST(life_medicLevel)) do
 			{
	             case 1: {life_paycheck = life_paycheck + 0;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 3500;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 6000;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 9500;}; // Rank 4
			};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn life_fnc_placeablesInit;