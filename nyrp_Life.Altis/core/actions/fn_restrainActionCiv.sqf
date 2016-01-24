/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(player == _unit) exitWith {};
if(!(animationState _unit in ["incapacitated","unconscious","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"])) exitWith { hint "Dein gegenüber muss K.O sein, oder sich ergeben."; };
if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
if(life_inv_ziptie < 1) exitWith {hint "Du benötigst Kabelbinder!"};
if(!isPlayer _unit) exitWith {};
_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
player say3d "Ziptie";
hint "You have ziptied this citizen";
[false,"ziptie",1] call life_fnc_handleInv;
