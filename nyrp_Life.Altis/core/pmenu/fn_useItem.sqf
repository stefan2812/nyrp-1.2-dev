#include <macro.h>
/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main function for item effects and functionality through the player menu.
*/
private "_item";
disableSerialization;
if(EQUAL(lbCurSel 2005,-1)) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = CONTROL_DATA(2005);

switch (true) do {
	case (_item in ["waterBottle","coffee","redgull"]): {
		if(([false,_item,1] call life_fnc_handleInv)) then {
			life_thirst = 100;
			if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 0;};
			if(EQUAL(_item,"redgull") && {EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)}) then {
				[] spawn {
					life_redgull_effect = time;
					titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
					player enableFatigue false;
					waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
					player enableFatigue true;
				};
			};
		};
	};

	case (EQUAL(_item,"boltcutter")): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};

	case (EQUAL(_item,"blastingcharge")): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};

	case (EQUAL(_item,"defusekit")): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};

	case (EQUAL(_item,"spikeStrip")): {
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then {
			[] spawn life_fnc_spikeStrip;
		};
	};

	case (EQUAL(_item,"fuelFull")): {
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	case (EQUAL(_item,"tracker")): {
        [] spawn life_fnc_tracker;
    	};

	case (EQUAL(_item,"lappi")):
	 {
		_wlanZone = "";
		_wlanZones = ["wlan_1","wlan_2","wlan_3"];
		{if(player distance (getMarkerPos _x) < 30) exitWith {_WlanZone = _x;};} foreach _wlanZones;
	 	if(_wlanZone == "") exitWith {hint "Du kannst hier keinen Laptop aufbauen, da du hier kein Wlan hast!";};
		_table = nearestObject[player, "Land_TablePlastic_01_F"];
		_tablePos = getPos _table;
		if(player distance _tablePos > 5) exitWith {hint "Du musst den Laptop an einem Tisch aufbauen!";};
		if(!isNull life_theLappi) exitWith {hint "Du kannst nur einen Laptop aufbauen!";};
		if(([false,_item,1] call life_fnc_handleInv)) then{
			[] spawn life_fnc_lappi;
		};
	 };
	case (EQUAL(_item,"Supportcontainer")): {
		 if(!isNull life_Supportcontainer) exitWith {hint localize "STR_ISTR_SupportcontainerDeployment"};
		 if(([false,_item,1] call life_fnc_handleInv)) then {
		 [] spawn life_fnc_Supportcontainer;
	 	};
	 };
	case (EQUAL(_item,"Nanobots")): {
		 if(([false,_item,1] call life_fnc_handleInv)) then {
		 [] spawn life_fnc_nanobot;
		 closeDialog 0;
	 	};
	 };
	case (EQUAL(_item,"Zeitung")): {
		 if(([false,_item,1] call life_fnc_handleInv)) then {
		 	closeDialog 0;
			createDialog "life_dynmarket_prices";
	 	};
	 };

	case (EQUAL(_item,"lockpick")): {
		[] spawn life_fnc_lockpick;
	};

	case (_item in ["apple","rabbit_grilled","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]): {
		if(!(EQUAL(M_CONFIG(getNumber,"VirtualItems",_item,"edible"),-1))) then {
			if([false,_item,1] call life_fnc_handleInv) then {
				_val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
				_sum = life_hunger + _val;
				switch (true) do {
					case (_val < 0 && _sum < 1): {life_hunger = 5;}; //This adds the ability to set the entry edible to a negative value and decrease the hunger without death
					case (_sum > 100): {life_hunger = 100;};
					default {life_hunger = _sum;};
				};
			};
		};
	};

	case (EQUAL(_item,"pickaxe")): {
		[] spawn life_fnc_pickAxeUse;
	};
	//Droge

	case (_item in ["heroin_processed"]):
	{
	if(playerSide in [west,independent]) exitWith {hint "Hallo Sie sind im Dienst!!";};
	if((player getVariable ["Druged",FALSE])) exitWith {hint "Du nimmst bereits geiles Zeug";};
	if(([false,_item,1] call life_fnc_handleInv)) then
	{
	if(isNil "life_drug") then {life_drug = 0;};
	//Wenn er Drogen nimmt
	life_drug = life_drug + 0.08;
	if (life_drug < 0.00) exitWith {};
	[] spawn life_fnc_Heroinnimm;
	};
	};

	case (_item in ["cocaine_processed"]):
	{
	if(playerSide in [west,independent]) exitWith {hint "Hallo Sie sind im Dienst!!";};
	if((player getVariable ["Druged",FALSE])) exitWith {hint "Du nimmst bereits geiles Zeug";};
	if(([false,_item,1] call life_fnc_handleInv)) then
	{
	if(isNil "life_drug") then {life_drug = 0;};
	//Wenn er Drogen nimmt
	life_drug = life_drug + 0.08;
	if (life_drug < 0.00) exitWith {};
	[] spawn life_fnc_Cocainenimm;
	};
	};

	case (_item in ["marijuana"]):
	{
	if(playerSide in [west,independent]) exitWith {hint "Hallo Sie sind im Dienst!!";};
	if((player getVariable ["Druged",FALSE])) exitWith {hint "Du nimmst bereits geiles Zeug";};
	if(([false,_item,1] call life_fnc_handleInv)) then
	{
	if(isNil "life_drug") then {life_drug = 0;};
	//Wenn er Drogen nimmt
	life_drug = life_drug + 0.08;
	if (life_drug < 0.00) exitWith {};
	[] spawn life_fnc_Weednimm;
	};
	};

	default {
		hint localize "STR_ISTR_NotUsable";
	};
};

[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
