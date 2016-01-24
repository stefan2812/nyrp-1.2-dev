/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_projectile"];
_weap = currentWeapon _player;
_ammo = _player ammo _weap;
_ammoType = _this select 4;
_projectile = _this select 6;


if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private "_position";
		while {!isNull _this} do {
			_position = ASLtoATL (visiblePositionASL _this);
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] call life_fnc_MP;
	};
};

//Reducing Tazer ammo to 5 shots
if (_weap == "hgun_P07_snds_F" && playerSide == west ) then {
   	if (_ammo >= 5) then {
		_player setAmmo ["hgun_P07_snds_F",4];
	};
};

//Gasgrenades
if(_ammoType in ["SmokeShellRed"]) then {
	[[_projectile],"life_fnc_teargas",true,false] call life_fnc_MP;
};