/*
file: fn_robShops.sqf
Author: Stevo
Description: Executes the rob shop action!
Thanks: MrKraken (for the barebones tutorial), Ciaran (for assisting with syntax errors and script development) & Erdem Cankiran (for showing how to implement the user of markers)
*/
private["_shop","_robber","_loot","_dist","_rip","_marker","_pos","_ui","_progress","_pgText","_cP","_chance","_temp","_alarm","_shopName","_pause","_reset"];
//The object that has the action attached to it is _this.
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//The player.
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
//Setting a delay to be used later (seconds).
_pause = 300;
_reset = 14400;
//Identifying the associated marker with the shop.
_marker = switch (_shop) do{
	case station_1: {"fuelshop_1"};
	case station_2: {"fuelshop_2"};
	case station_3: {"fuelshop_3"};
	case station_4: {"fuelshop_4"};
	case station_5: {"fuelshop_5"};
	case station_6: {"fuelshop_6"};
	case station_7: {"fuelshop_7"};
	case station_8: {"fuelshop_8"};
	case station_9: {"fuelshop_9"};
	case station_10: {"fuelshop_10"};
	case station_11: {"fuelshop_11"};
	case station_12: {"fuelshop_12"};
	case station_13: {"fuelshop_13"};
	case station_14: {"fuelshop_14"};
	case station_15: {"fuelshop_15"};
	case station_16: {"fuelshop_16"};
	case station_17: {"fuelshop_17"};
	case station_18: {"fuelshop_18"};
	case station_19: {"fuelshop_19"};
	case station_20: {"fuelshop_20"};
	case station_21: {"fuelshop_21"};
	case station_22: {"fuelshop_22"};
	case station_23: {"fuelshop_23"};
};
//Giving the shop a friendly name.
_shopName = switch (_shop) do{
	case station_1: {"Tankstelle Kavala Nord"};
	case station_2: {"Tankstelle Kavala Süd"};
	case station_3: {"Tankstelle Gangversteck #2"};
	case station_4: {"Tankstelle Topolia Stadion"};
	case station_5: {"Tankstelle Topolia"};
	case station_6: {"Tankstelle Agios Dyonisios"};
	case station_7: {"Tankstelle Gangversteck #1"};
	case station_8: {"Tankstelle Neochori"};
	case station_9: {"Tankstelle Zaros"};
	case station_10: {"Tankstelle Syrta"};
	case station_11: {"Tankstelle Kart Store"};
	case station_12: {"Tankstelle Polizei Athira"};
	case station_13: {"Tankstelle Telos"};
	case station_14: {"Tankstelle Athira"};
	case station_15: {"Tankstelle Altis Nord - Oreokastro"};
	case station_16: {"Tankstelle Anthrakia"};
	case station_17: {"Tankstelle Pyrgos Nord"};
	case station_18: {"Tankstelle Pyrgos Mitte"};
	case station_19: {"Tankstelle Selankano"};
	case station_20: {"Tankstelle Paros"};
	case station_21: {"Tankstelle Ioannina"};
	case station_22: {"Tankstelle Sofia Mitte"};
	case station_23: {"Tankstelle Chalkeia"};
};
if (isNil "_marker") exitWith {};
_pos = getMarkerPos _marker;
/* First-Run Checks */
_loot = _shop getVariable "_funds";
_rip = _shop getVariable "_status";
if (isNil "_loot") then {
	_loot = 5000 + round(random 15000);
	_shop setVariable ["_funds",_loot,true];};
if (isNil "_rip") then {
	_rip = false;
	_shop setVariable ["_status",_rip,true];};
_loot = _shop getVariable "_funds";
_rip = _shop getVariable "_status";

/* Initiation Checks */
if (_loot == 0) exitWith {hint "Dieser Laden wurde bereit ausgeraubt. Die Kasse ist leer!"};
if (vehicle player != _robber) exitWith {hint "Du musst dein Fahrzeug verlassen!"};
if !(playerside == civilian) exitWith {hint "Du bist im Dienst und kannst dies nicht tun!"};
if (currentWeapon _robber == "") exitWith {hint "Du benötigst eine Waffe um den Kassierer einzuschüchtern!"};
if ((west countSide playableUnits) < 1) exitWith {hint "Es sind zu wenige Cops online!"};
if (_rip) exitWith {hint "Ein Raub ist bereits in Gang!"};
if !(alive _robber) exitWith {};
/* Robbery Action */
_rip = true;
//Robbery in Progress
_shop setVariable ["_status",_rip,true];
_marker setMarkerColor "ColorRed";
//Sets up the Progress Bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2...  (1%1)","%",(localize "STR_pAct_RobProgress")];
_progress progressSetPosition 0.01;
_cP = 0.01;
_alarm = false;
_rip = _shop getVariable "_status";
if (_rip) then {
	while{true} do {
		if (_cP >= 1) exitWith {};
		sleep 1;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3...  (%2%1)","%",round(_cP * 100),(localize "STR_pAct_RobProgress")];
				_dist = _robber distance _shop;
		if !(_dist < 11) exitWith {};
		if !(alive _robber) exitWith {};
				//Randomises the alarm at any point, to trigger once
		if !(_alarm) then {
			//Randomises the chance with random integer and player distance from shop NPC / register
			_chance = random(9900);
			_chance = _chance + (_dist * 10);
						//Triggering the alarm + adding player to wanted system
			if (_chance > 9800) then {
				hint "Der Kassierer hat den stillen Alarm ausgelöst. Die Cops wissen bescheid!";
				[[1,format["ALARM! - Jemand versucht die %1 auszurauben!", _shopName]], "life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				_alarm = true;
			};
		};
	};
//Exit client script checks
	If !(alive _robber) exitWith {
 		_rip = false;
		_shop setVariable ["_status",_rip,true];
		_marker setMarkerColor "ColorGreen";
	};
If (_robber distance _shop > 10) exitWith {
		_rip = false;
		_shop setVariable ["_status",_rip,true];
		_marker setMarkerColor "ColorGreen";
		hint "You ran too far away!";
		5 cutText ["","PLAIN"];	};
		//Removes progress bar
5 cutText ["","PLAIN"];
//Exit code
titleText[format["Du hast %1 $ aus der Kasse entwendet!",[_loot] call life_fnc_numberText],"PLAIN"];
	[[1,format["Jemand konnte erfolgreich die %1 ausrauben!", _shopName]], "life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	_loot = _shop getVariable "_funds";
	life_cash = life_cash + _loot;
	_loot = 0;
	_marker setMarkerColor "ColorOrange";
	_shop setVariable ["_funds",_loot,true];
	_rip = false;
	_shop setVariable ["_status",_rip,true];
	life_use_atm = false;
	hint "Du musst untertauchen, und kannst für 5 Minuten keine Transaktionen mit deinem Bankkonto durchführen!";
	//Reset script for shops (global)
	[[[_shop,_marker,_reset],"core\functions\fn_robShopReset.sqf"],"BIS_fnc_execVM",false,false] call bis_fnc_MP;
	//Client-side reset
	sleep _pause;
	hint "Du kannst nun wieder auf dein Konto zugreifen.";
	life_use_atm = true;
	_loot = _shop getVariable "_funds";
};