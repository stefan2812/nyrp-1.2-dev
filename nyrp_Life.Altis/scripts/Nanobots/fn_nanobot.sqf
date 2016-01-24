////////////////////////////////
////   Author: SBUserhy     ////
////   native-gamer.net     ////
////   Altis Life 4.0       ////
////////////////////////////////

if(life_Nanobottimer_running) exitWith {};

// ####### Setup ##########################################################
_Nanoanzahl     = 30; // wie oft (Durchlaeufe)  60 = 30,02 Minuten  120 = 1h
_Nanopause      = 30; // Pause in Sekunden zwischen den Durchlaeufen
_Laufzeitsumme  = 0;
_Nanotime       = (_Nanoanzahl * _Nanopause) /60; //Dauer der Funktion in Minuten
_Nanoschalter   = 0;
_Nanodebug      = false; //Debug Messages
// ########################################################################

titleText[format["Du wirst die nächsten %1 Minuten automatisch versorgt!", _Nanotime],"PLAIN"];

//Nanobot Beginn HUD
if(!life_Nanobottimer_running) then
    {
    life_Nanobottimer_stop = false;
    life_Nanobottimer_running = true;
    _Nanoschalter = 1;
    waitUntil {life_Nanobottimer_running};
    if(_Nanodebug) then {_DebugMsg = format["Nanobot: Aktiv = %1",life_Nanobottimer_running];systemChat _DebugMsg;};//Debug
    };

//  ##### Schleife starten #####
//Hud einbinden Start
_Laufzeitsumme = (_Laufzeitsumme + _Nanopause) * _Nanoanzahl;
life_Nanobottimer_Time = _Laufzeitsumme;//Zeit aus Configuration.sqf
if (_Nanoanzahl > 0)  then {[] spawn life_fnc_nanobot_timehud;} else {life_Nanobottimer_Time = "-1000";life_Nanobottimer_running = false;};
//Hud einbinden Ende
switch (_Nanoschalter) do
{
    case 0 : {};
    case 1 : {

if(_Nanodebug) then {_DebugMsg = format["Nanobot: Laufzeit = %1 Sekunden",_Laufzeitsumme];systemChat _DebugMsg;};//Debug
if(_Nanodebug) then {_DebugMsg = format["Nanobot: Nanozeit = %1 Sekunden",life_Nanobottimer_Time];systemChat _DebugMsg;};//Debug
if(_Nanodebug) then {_DebugMsg = format["Nanobot: Schleifen = %1x",_Nanoanzahl];systemChat _DebugMsg;};//Debug
for "_i" from 1 to _Nanoanzahl do
    {
if(!alive player) exitWith {life_Nanobottimer_running = false;};
//  ##### Nanobot Essen #####
if (life_hunger < 100 && life_Nanobottimer_running) then
    {
    _sum_hunger = life_hunger + 1;
    life_hunger = _sum_hunger;
    [] call life_fnc_hudUpdate;
    if(_Nanodebug) then {_DebugMsg = format["Nanobot: Hunger +1 (%1)",life_hunger];systemChat _DebugMsg;};//Debug
    };
//  ##### Nanobot Trinken ######
if (life_thirst < 100 && life_Nanobottimer_running) then
    {
    _sum_thirst = life_thirst + 1;
    life_thirst = _sum_thirst;
    [] call life_fnc_hudUpdate;
    if(_Nanodebug) then {_DebugMsg = format["Nanobot: Trinken +1 (%1)",life_thirst];systemChat _DebugMsg;};//Debug
    };
//  ##### Nanobot Heilung ######
_pdamage        = getDammage player;
if (_pdamage > 0.01 && life_Nanobottimer_running) then
    {
    player setDamage ((damage player) - 0.01);
    if(_Nanodebug) then {_DebugMsg = format["Nanobot: Heilung +1 (%1)",_pdamage];systemChat _DebugMsg;};//Debug
    [] call life_fnc_hudUpdate;
    };
    if (_i == _Nanoanzahl) then
       {
        life_Nanobottimer_running = false;
        life_Nanobottimer_stop = true;
        titleText["Der Nanobot-Support ist ausgelaufen!","PLAIN"];
        if(_Nanodebug) then {_DebugMsg = format["Nanobot: Ende nach %1 Sekunden",_Laufzeitsumme];systemChat _DebugMsg;};//Debug
       };
    sleep _Nanopause;
};//for Ende
             };//Ende case 1
    default  {};
};