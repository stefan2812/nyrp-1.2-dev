#include <macro.h>
/* Orginal File: fn_spikeStrip.sqf
 Author: Bryan "Tonic" Boardwine
 Change to: fn_SupportContainer.sqf
*/
if((FETCH_CONST(life_mediclevel)) == 0) exitWith {titleText["Du bist dazu nicht berechtigt!","PLAIN"];};
private["_position","_Supportcontainer"];
_Supportcontainer = "Land_Pod_Heli_Transport_04_medevac_F" createVehicle [0,0,0];
_Supportcontainer attachTo[player,[0,5.5,0]];
_Supportcontainer setDir 90;
_Supportcontainer allowDamage false;
_Supportcontainer setVehicleLock "LOCKED";
_Supportcontainer setVariable["item","ContainerUse",true];
_Supportcontainer setVehicleVarName "Support";
removeAllItems _Supportcontainer;
life_Supportcontainer = _Supportcontainer;
life_action_Supportcontainer = player addAction[localize "STR_ISTR_Supportcontainer_Place",{if(!isNull life_Supportcontainer) then {detach life_Supportcontainer; life_Supportcontainer = ObjNull;}; player removeAction life_action_Supportcontainer; life_action_Supportcontainer = nil;},"",999,false,false,"",'!isNull life_Supportcontainer'];
waitUntil {isNull life_Supportcontainer};
/* ## Optional ##
Support = _Supportcontainer;
_marker = createMarker ["Containertext", position player];
_marker setMarkerType "Mil_dot";
_marker setMarkerColor "ColorGreen";
_marker setMarkerText "Sozialstation";
*/
if(!isNil "life_action_Supportcontainer") then {
 player removeAction life_action_Supportcontainer;};
 if(isNull _Supportcontainer) exitWith {life_Supportcontainer = ObjNull;};
_Supportcontainer setPos [(getPos _Supportcontainer select 0),(getPos _Supportcontainer select 1),0];
_Supportcontainer setDamage 0;
//_Supportcontainer setObjectTextureGlobal [0,"textures\Supportcontainer_1.jpg"];
//_Supportcontainer setObjectTextureGlobal [1,"textures\Supportcontainer_2.jpg"];
waitUntil {isNull life_Supportcontainer};
life_action_SupportcontainerPickup = player addAction[localize "STR_ISTR_Supportcontainer_Pack",life_fnc_packupSupportContainer,"",0,false,false,"",' _Supportcon = nearestObjects[getPos player,["Land_Pod_Heli_Transport_04_medevac_F"],8] select 0; !isNil "_Supportcon" && !isNil {(_Supportcon getVariable "item")}'];