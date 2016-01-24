#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((FETCH_CONST(life_coplevel) < 1) && (FETCH_CONST(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
};

// Set Paycheck for Police For Each rank
switch (FETCH_CONST(life_coplevel)) do
 			{
	             case 1: {life_paycheck = life_paycheck + 0;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 2500;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 5000;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 7500;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 10000;}; // Rank 5
 	             case 6: {life_paycheck = life_paycheck + 12500;}; // Rank 6
	             case 7: {life_paycheck = life_paycheck + 15000;}; // Rank 7
			};


player setVariable["rank",(FETCH_CONST(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn life_fnc_placeablesInit;
[player, uniform player] call life_fnc_equipGear;