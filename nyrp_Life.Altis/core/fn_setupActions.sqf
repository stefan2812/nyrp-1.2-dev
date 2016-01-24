#include <macro.h>
/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/

		//earplugs
		life_actions pushBack [player addAction["Ohrenstöpsel einstecken",{if (soundVolume == 1) then {1 fadeSound 0.1;}},"",-6,false,false,"",'soundVolume == 1']];
		life_actions pushBack [player addAction["Ohrenstöpsel herausnehmen",{if (soundVolume != 1) then {1 fadeSound 1;} },"",-6,false,false,"",'soundVolume != 1']];

		//Altis Care Essen
		life_actions pushBack [player addAction["<t color='#FF0000'>Essen</t>",life_fnc_Essen,"",1,false,true,"",' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Pod_Heli_Transport_04_medevac_F" && (player distance cursorTarget) < 5 ']];
		//Altis Care Trinken
		life_actions pushBack[player addAction["<t color='#FF0000'>Trinken</t>",life_fnc_Trinken,"",1,false,true,"",' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Pod_Heli_Transport_04_medevac_F" && (player distance cursorTarget) < 5 ']];
		//Altis Care Heilung
		life_actions pushBack [player addAction["<t color='#FF0000'>Heilen</t>",life_fnc_Heilung,"",1,false,true,"",' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Pod_Heli_Transport_04_medevac_F" && (player distance cursorTarget) < 5 ']];
		//Altis Care Kleiderkammer
		life_actions pushBack [player addAction["<t color='#FF0000'>Kleiderkammer</t>",life_fnc_Kleiderkammer,"",1,false,true,"",' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Pod_Heli_Transport_04_medevac_F" && (player distance cursorTarget) < 5 ']];

switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions pushBack [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions pushBack  [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && ((animationState cursorTarget == "Incapacitated") OR (animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon")) && !(cursorTarget GVAR["robbed",FALSE]) ']];
		//Ausweis
 		life_actions pushBack [player addAction["Ausweis zeigen",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget &&  (isPlayer cursorTarget) && cursorTarget isKindOf "Man"']];
	};

	case west: {
		//CopEnter - Driver Seat
		life_actions pushBack [player addAction["Auf den Fahrersitz",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Passenger Seat
		life_actions pushBack [player addAction["Auf den Passagiersitz",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Exit
		life_actions pushBack [player addAction["Aussteigen",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Ausweis
		life_actions pushBack [player addAction["Ausweis zeigen",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && (isPlayer cursorTarget) && cursorTarget isKindOf "Man"']];
		//Waffe Beschlagnahmen
		life_actions pushBack [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable ["restrained", true])']];
		//Gegenstände entfernen
		life_actions pushBack [player addAction["Gegenstände entfernen",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
	};
	case east: {
	};
	case independent: {
		//CopEnter - Driver Seat
		life_actions pushBack [player addAction["Auf den Fahrersitz",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Passenger Seat
		life_actions pushBack [player addAction["Auf den Passagiersitz",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Exit
		life_actions pushBack [player addAction["Aussteigen",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Ausweis
		life_actions pushBack [player addAction["Ausweis zeigen",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && (isPlayer cursorTarget) && cursorTarget isKindOf "Man"']];
		life_actions pushBack  [player addAction["Nanobots spritzen",life_fnc_nanobot_Remotecheck,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5']];
	};
};
