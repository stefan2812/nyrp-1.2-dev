/*
	filename: fn_atmBlocker.sqf
	Author: Stevo

	Description:
	Stops the cash machine access for a certain duration, or extends it.

	Mode:
	0 - 5 minutes
	1 - 10 minutes
	2 - 15 minutes

	Usage: [_mode] spawn life_fnc_atmBlocker;
*/
private["_mode"];
_mode = [_this,0,0,[0]] call bis_fnc_param;

switch (_mode) do {
	case 0: {atm_block = atm_block + 300}; // + 5minutes
	case 1: {atm_block = atm_block + 600}; // + 10minutes
	case 2: {atm_block = atm_block + 900}; // + 15minutes
};

if (atm_block_status == 0) then {
	if (life_use_atm) then {life_use_atm = false;};
	atm_block_status = 1;
	while {atm_block != 0} do {
	sleep 1;
	atm_block = atm_block -1;
	};
	hint "Du kannst nun wieder auf dein Bankkonto zugreifen.";
	life_use_atm = true;
	atm_block_status = 0;
};