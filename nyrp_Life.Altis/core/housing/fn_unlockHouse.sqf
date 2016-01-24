/*
	Author: Bryan "Tonic" Boardwine

	Description:
	UnLocks the entire house and opens all doors.
*/
private["_house"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _house OR !(_house isKindOf "House_F")) exitWith {};

_numberOfDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
if(_numberOfDoors == -1 OR _numberOfDoors == 0) exitWith {}; //MEH

titleText [localize "STR_House_Unlocking","PLAIN"];
sleep 3;

for "_i" from 1 to _numberOfDoors do {
	_house setVariable[format["bis_disabled_Door_%1",_i],0,true];
};

_house setVariable["locked",false,true];
titleText[localize "STR_House_Unlock","PLAIN"];