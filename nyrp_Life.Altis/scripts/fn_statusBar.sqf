waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
    File: fn_statusBar.sqf
    Author: Some French Guy named Osef I presume, given the variable on the status bar
    Edited by: [midgetgrimm]
    Description: Puts a small bar in the bottom right of screen to display in-game information
*/
4 cutRsc ["osefStatusBar","PLAIN"];

[] spawn {
    sleep 5;
    _counter = 180;
    _timeSinceLastUpdate = 0;
    while {true} do
    {
        sleep 1;
        _uptime = [time,"HH:MM:SS"] call BIS_fnc_secondsToString;
        _counter = _counter - 1;
        ((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText parseText format["||<t color='#888888'> Uptime: %1</t> | <t color='#0044CC'>Cops: %2</t> | <t color='#A12b84'>Civs: %3</t> | <t color='#FF0000'>Medics: %4</t> | <t color='#00DD00'>Cash: %5</t> | <t color='#00DD00'>Bank: %6</t> | <t color='#999999'>FPS: %7</t> ||", _uptime, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText,round diag_fps];
    };
};