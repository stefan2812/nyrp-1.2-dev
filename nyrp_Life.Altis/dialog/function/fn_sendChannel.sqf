#include <macro.h>
/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Erm?glicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (CASH < 10000 && playerSide == civilian) exitWith { systemChat "Du brauchst 10.000€ um eine Nachricht zu schicken!"; };
if (!(playerSide in [civilian, east]) ) exitWith { systemChat "Du musst Zivilist sein!"; };
if (life_channel_send) exitWith { systemChat "Warte 10 Minuten bevor du einen neue Nachricht sendest!"; };

if (playerSide == civilian) then {
	SUB(CASH, 10000);
};

_message = ctrlText 9001;

[[3,format ["News %1",_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = true;

[] spawn
{
	sleep 600;
	life_channel_send = false;
};
[] call life_fnc_hudUpdate;