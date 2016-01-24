#include <macro.h>
/*
File: fn_stealVehicle.sqf
Author: Kevin Webb
Description: Allows the player to put a stolen vehicle in his garage.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_color","_check", "_var"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_price = (_price/50)*85;
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = _nearVehicles select _vehicle;
_nah = false;

        _action = [
            format["Du benötigst %1 $ um diesen Service zu nutzen. Ok?"+(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>%2 $</t>",
                [_price] call life_fnc_numberText,
                [CASH] call life_fnc_numberText
            ],
            "Dienst nutzen?",
            "Ja",
            "Nein"
        ] call BIS_fnc_guiMessage;

        if(_action) then {
if(life_cash < _price) exitWith {hint format["Du benötigst %1 $ um diesen Service zu nutzen!",_price]; };
if(isNull _vehicle) exitWith {};
_check = false;
{if(player distance _x < 200 && side _x == west) then { _check = true; };} forEach playableUnits;
if(_check) exitWith {hint "Die Polizei ist zu nah. Dem Händler ist das Fahrzeug grad zu heiß!";};
_color = 0;
if(typeOf _vehicle == "B_MRAP_01_F") then { _color = floor(random 4); };
while {typeOf _vehicle in["B_MRAP_01_F"] && _color in [0]} do {_color = floor(random 4); };
if(typeOf _vehicle in["C_Offroad_01_F"]) then { _color = floor(random 9); };
while {typeOf _vehicle in["C_Offroad_01_F"] && _color in [6,7,8]} do {_color = floor(random 9); };
if(typeOf _vehicle in["C_Hatchback_01_F"]) then { _color = floor(random 7); };
if(typeOf _vehicle in["C_Hatchback_01_sport_F"]) then { _color = floor(random 6); };
if(typeOf _vehicle in["C_SUV_01_F"]) then { _color = floor(random 5); };
if(typeOf _vehicle in["B_Quadbike_01_F"]) then { _color = floor(random 8); };
life_cash = life_cash - _price;
hint format["Dir wurden %1 $ für die Dienstleistung berechnet. Es wird etwa eine Stunde in Anspruch nehmen!",_price];
[[_vehicle],"TON_fnc_vehicleIsDead",false,false] spawn life_fnc_MP;
sleep 0.05;
[[(getPlayerUID player),playerSide,_vehicle,_color,1],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
_var=floor(random 100);
	if (_var < 55) then {
	[[getPlayerUID player,profileName,"487"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	hint "Der Händler wird dich vermutlich an die Polizei verpfeifen. Du solltest schnell verschwinden";
    };
closeDialog 0;
sleep 0.5;
if(!isNil "_vehicle" && !isNull _vehicle) then { deleteVehicle _vehicle; };
}else {_nah = true;};

if (_nah) exitWith {hint "Anfrage abgebrochen"};