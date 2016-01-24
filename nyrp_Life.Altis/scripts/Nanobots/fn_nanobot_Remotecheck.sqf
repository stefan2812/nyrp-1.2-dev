//////////////////////////////////////
// File: fn_nanobot_Remotecheck.sqf //
//////////////////////////////////////

private["_ziel","_Aktion"];

_ziel = cursorTarget;
if(isNull _ziel) then {_ziel = player;};    
if(!(_ziel isKindOf "Man")) then {_ziel = player;};  
if(!(alive _ziel)) then {_ziel = player;};

[[player],"life_fnc_Nanobot",_ziel,false] spawn life_fnc_MP;