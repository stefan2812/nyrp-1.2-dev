/*
Returns whether a vehicle contains x amount of an item
[trunk,item,amount,ret index]
*/
private["_trunk","_item","_amount","_ret","_return","_index","_trunkAmount"];
_trunk = [_this,0,[]] call bis_fnc_param; //items in trunk (vehicle getvariable "trunk" select 0)
_item = [_this,1,""] call bis_fnc_param; //item to search for
_amount = [_this,2,1] call bis_fnc_param; //amount of item which should exist
_ret = [_this,3,false] call bis_fnc_param; //return index of item?
_return = false;

_index = [_item,_trunk] call TON_fnc_index;
if(_index > -1) then {
    _trunkAmount = _trunk select _index select 1;
    if (_trunkAmount >= _amount) then {
        if (_ret) then {
            _return = [true,_index];
        } else {
            _return = [true];
        };
    } else {
        _return = [false];
    };
} else {
    _return = [false];
};
_return;