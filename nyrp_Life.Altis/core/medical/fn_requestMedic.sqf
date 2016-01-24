#include <macro.h>
/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	N/A
*/
private["_medicsOnline"];
_medicsOnline = {_x != player && {side _x == independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.
player setVariable["Requested",true,true];

if(_medicsOnline) then {
	//There is medics let's send them the request.
	[[player,profileName],"life_fnc_medicRequest",independent,FALSE] call life_fnc_MP;
} else {
	if(EQUAL(LIFE_SETTINGS(getNumber,"revive_cops"),1)) then {
		//No medics were online, send it to the police.
		[[player,profileName],"life_fnc_copMedicRequest",west,FALSE] call life_fnc_MP;
	};
};

//Create a thread to monitor duration since last request (prevent spammage).
[] spawn
{
	((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
	life_request_cooldown = time + (5*60);
	sleep (3 * 60);
	((findDisplay 7300) displayCtrl 7303) ctrlEnable true;
};