/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine"
	Database Persistence By: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm

	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["187V",70000]};
	case "187": {_type = ["187",100000]};
	case "901": {_type = ["901",5000]};
	case "215": {_type = ["215",50000]};
	case "213": {_type = ["213",150000]};
	case "211": {_type = ["211",50000]};
	case "207": {_type = ["207",60000]};
	case "207A": {_type = ["207A",60000]};
	case "390": {_type = ["390",2000]};
	case "487": {_type = ["487",50000]};
	case "488": {_type = ["488",40000]};
	case "480": {_type = ["480",20000]};
	case "481": {_type = ["481",20000]};
	case "482": {_type = ["482",30000]};
	case "483": {_type = ["483",30000]};
	case "459": {_type = ["459",60000]};
	case "666": {_type = ["666",40000]};
	case "667": {_type = ["667",200000]};
	case "668": {_type = ["668",20000]};
	case "669": {_type = ["669",60000]};
	case "670": {_type = ["670",60000]};

	case "1": {_type = ["1",3000]};
    	case "2": {_type = ["2",10000]};
    	case "3": {_type = ["3",5000]};
    	case "4": {_type = ["4",20000]};
    	case "5": {_type = ["5",1000]};
    	case "6": {_type = ["6",30000]};
	case "7": {_type = ["7",100000]};
	case "8": {_type = ["8",10000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_result = format["wantedGetCrimes:%1",_uid];
waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;
diag_log "---WantedAdd---";
diag_log _result;
diag_log _queryResult;
diag_log "---END---";
_val = [(_type select 1)] call DB_fnc_numberSafe;

if(count _queryResult != 0) then
{
	_pastCrimes = _queryResult select 1;
	_pastCrimes pushBack (_type select 0);
	_query = format["wantedUpdateCrimes:%1:%2:%3",_pastCrimes,_val,_uid];
} else {
	_crimes = [(_type select 0)];
	_query = format["wantedInsertCrimes:%1:%2:%3:%4:1",_uid,_name,_crimes,_val];
};

if(!isNil "_query") then {
	waitUntil{!DB_Async_Active};
	[_query,2] call DB_fnc_asyncCall;
};