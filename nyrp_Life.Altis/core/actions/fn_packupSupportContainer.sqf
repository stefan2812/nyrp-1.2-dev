/* Orginal File: fn_packupSpikes.sqf
 Author: Bryan "Tonic" Boardwine
 Change to: fn_packupSupportContainer.sqf
*/
private["_Supportcon"];
_Supportcon = nearestObjects[getPos player,["Land_Pod_Heli_Transport_04_medevac_F"],8] select 0;
if(isNil "_Supportcon") exitWith {};
if(([true,"Supportcontainer",1] call life_fnc_handleInv)) then
{
 titleText[localize "STR_NOTF_Supportcontainer","PLAIN"];
 player removeAction life_action_SupportcontainerPickup;
 life_action_SupportcontainerPickup = nil;
 deleteVehicle _Supportcon;
};