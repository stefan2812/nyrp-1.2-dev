//////////////////////////////////
// File: fn_nanobot_TimeHud.sqf //
//////////////////////////////////

private["_uiDisp","_time","_timer"];
disableSerialization;
7 cutRsc ["life_Nanobottimer","PLAIN"];
_uiDisp = uiNamespace getVariable "life_Nanobottimer";
_timer = _uiDisp displayCtrl 38301;
_time = time + (life_Nanobottimer_Time);

while {true} do {
      if(isNull _uiDisp) then {
            7 cutRsc ["life_Nanobottimer","PLAIN"];
            _uiDisp = uiNamespace getVariable "life_Nanobottimer";
            _timer = _uiDisp displayCtrl 38301;
      };
      if(round(_time - time) < 1) exitWith {};
      if(!life_Nanobottimer_running) exitWith {life_Nanobottimer_running = false;life_Nanobottimer_stop = true;};
    _timer ctrlSetText format["%1",[(_time - time),"HH:MM:SS"] call BIS_fnc_secondsToString]; //MM:SS.MS
      sleep 0.08;
};
life_Nanobottimer_running = false;
life_Nanobottimer_stop = true;
if(life_Nanobottimer_running) exitWith {life_Nanobottimer_running = false;life_Nanobottimer_stop = true;};
7 cutText["","PLAIN"];