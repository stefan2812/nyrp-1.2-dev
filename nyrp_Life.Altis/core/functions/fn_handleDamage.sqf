#include <macro.h>
/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep","_distance"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);
_distance = 50;
if (!alive player) exitWith {};

if(!isNull _source) then {
	if((_source != _unit) && (_source isKindOf "Man") && (vehicle _source == _source)) then {
		_curWep = currentWeapon _source;
		if((side _source == west || side _source == east ) && !(_source isKindOf "Air" OR _source isKindOf "Car" OR _source isKindOf "Ship")) then {
			//Taser
			if(_curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
				private["_isVehicle","_isQuad"];
				_isQuad = if((vehicle player != player) && {typeOf (vehicle player) == "B_Quadbike_01_F"}) then {true} else {false};
				_damage = damage player;
				if((_unit distance _source) < _distance) then {
					if(!life_istazed && !(_unit GVAR ["restrained",false])) then {
						if(_isQuad) then {
							player action ["Eject",vehicle player];
						};
						[_unit,_source] spawn life_fnc_tazed;
					};
				};
			} else {
				//Rubberbullets
				if(_curWep in ["arifle_MXC_Black_F","arifle_MXC_F"]) then {
					if(vehicle player == player) then {
						_damage = damage player;
						if(!life_istazed && !(_unit GVAR ["restrained",false])) then {
							if(_isQuad) then {
								player action ["Eject",vehicle player];
							};
							[_unit,_source] spawn life_fnc_handleDowned;
						};
					};
				};
			};
		};
	};
};

//anti vdm
if (vehicle _unit == _unit) then {

	if ((_source isKindOf "Air" OR _source isKindOf "Car" OR _source isKindOf "Ship") && (_projectile == "")) then {
		_damage = damage player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	} else {
		_isVehicle = vehicle _source;
		if ((_isVehicle isKindOf "Air" OR _isVehicle isKindOf "Car" OR _isVehicle isKindOf "Ship") && (_projectile == "")) then {
			_damage = damage player;
			[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;