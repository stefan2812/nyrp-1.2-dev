#include <macro.h>
/*
BY OPTIX aka www.steamcommunity.com/id/ryanthett
THIS HEADER HAS TO BE LEFT UNCHANGED UNDER ALL CIRCUMSTANCES!CHANGING ANYTHING OF THE SCRIPT DOESN'T MAKE IT YOURS!
*/
private ["_currentPos","_itemsBenoetigtArray","_necessaryLicence","_lizenzKaufkosten","_produkt","_licenceRequired","_weiter","_itemHatAnzahlArray","_itemMussAnzahlArray","_indexAktuell","_itemMaximal","_minWert","_indexAktuellEnde","_anzahlMaxVerarbeiten"];

// SONDERFÄLLE PRÜFEN
if (isServer) exitWith {};
if (vehicle player != player) then {hint "Du kannst nicht aus dem Fahrzeug verarbeiten!"};
if (life_is_processing) exitWith {hint "Du verarbeitest bereits etwas!"};
if(vehicle player != player) exitwith {hint format["Du befindest dich in einem Fahrzeug und kannst deshalb nichts verarbeiten!"]};

// AB JETZT VERARBEITET DER SPIELER
life_is_processing = true;

// DEKLARIEREN DER BENÖTIGEN VARIABELN UND AUFRUFEN DER ÜBERGEBENEN PARAMETER
_currentPos = position player;
_itemsBenoetigtArray = [_this,0,[],[[]]] call BIS_fnc_param;
_necessaryLicence = [_this,1,"",[""]] call BIS_fnc_param;
_produkt = [_this,3,[],[[]]] call BIS_fnc_param;
_lizenzBoolean = false;
_licensePrice = [_this,2,0,[0]] call BIS_fnc_param;
_licenceRequired = false;
_nah = false;

if (_necessaryLicence != "") then {
    // LIZENZ PRÜFEN, WENN NICHT VORHANDEN KAUF ANBIETEN
    _nah = false;

    if (!(LICENSE_VALUE(_necessaryLicence,"civ"))) then {
        _licenseDisplayName = M_CONFIG(getText,"Licenses",_necessaryLicence,"displayName");

        _action = [
            format["Dir fehlt die notwendige Lizenz für das Verarbeiten.<br/><br/>Die Lizenz %1 kostet <t color='#8cff9b'>%2€</t>.<br/>"+(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>%3€</t>",
                localize(_licenseDisplayName),
                [_licensePrice] call life_fnc_numberText,
                [CASH] call life_fnc_numberText
            ],
            "Notwendige Lizenz erwerben",
            "Ja",
            "Nein"
        ] call BIS_fnc_guiMessage;

        if(_action) then {
            [NIL,NIL,NIL,_necessaryLicence] call life_fnc_buyLicense;
            if (!(LICENSE_VALUE(_necessaryLicence,"civ"))) exitWith {life_is_processing = false;5 cutText ["","PLAIN"];_nah=true};
        } else {
            _nah = true;
        };
    };
    if (_nah) exitWith {life_is_processing = false;5 cutText ["","PLAIN"]};
};
if (_nah) exitWith {life_is_processing = false;5 cutText ["","PLAIN"]};
// PRÜFEN, OB ITEMS VORHANDEN SIND
_nah = false;
{
_itemsBenoetigtAktuell = _x;
_itemName = _itemsBenoetigtAktuell select 0;
_itemAnzahlBenoetigt = _itemsBenoetigtAktuell select 1;
call compile format ["itemAnzahlHat = life_inv_%1",_itemName];
if (_itemAnzahlBenoetigt>itemAnzahlHat) then {_nah = true};} forEach _itemsBenoetigtArray;
if (_nah) exitWith {life_is_processing = false;5 cutText ["","PLAIN"];
hint "Du hast nicht genuegend Items dabei!"};

// PROGRESSBAR SCHALTEN
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%","Verarbeite..."];
_progress progressSetPosition 0.01;
_cP = 0.01;
_nah=false;
while{true} do{
  sleep 0.3;
  _cP = _cP + 0.01;
  if (_cp<=1) then { _progress progressSetPosition _cP; };
  _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%","Verarbeite..."];
  if(_cP >= 1) exitWith {};
  if(player distance _currentPos > 10) exitWith {hint "Du hast dich zu weit entfernt!";
  life_is_processing = false;
  5 cutText ["","PLAIN"];
  _nah=true};
};

if (_nah) exitWith {life_is_processing = false;5 cutText ["","PLAIN"]};

// VERARBEITUNGSANZAHL BERECHNEN -> MATHE FTW
_itemHatAnzahlArray = [];
{  _itemsBenoetigtAktuell = _x;
   _itemName = _itemsBenoetigtAktuell select 0;
   call compile format ["_itemHatAnzahlArray = _itemHatAnzahlArray + [life_inv_%1]",_itemName];} forEach _itemsBenoetigtArray;_itemMussAnzahlArray = [];
{  _itemsBenoetigtAktuell = _x;
   _itemAnzahlBenoetigt = _itemsBenoetigtAktuell select 1;
   call compile format ["_itemMussAnzahlArray = _itemMussAnzahlArray + [%1]",_itemAnzahlBenoetigt];} forEach _itemsBenoetigtArray;_indexAktuell = -1;
   _itemMaximal = [];
{   _indexAktuell = _indexAktuell + 1;
_itemMaximal= _itemMaximal + [(floor ((_itemHatAnzahlArray select _indexAktuell)/(_itemMussAnzahlArray select _indexAktuell)))];} forEach _itemHatAnzahlArray;
_minWert = _itemMaximal select 0;
_indexAktuellEnde = 0;
{ _indexAktuellEnde = _indexAktuellEnde + 1;
  if (_x<_minWert) then {_minWert=_x};} forEach _itemMaximal;
_anzahlMaxVerarbeiten = _minWert;

// ITEMS ENTZIEHEN
{ _itemsBenoetigtAktuell = _x;
    [false,_itemsBenoetigtAktuell select 0,((_itemsBenoetigtAktuell select 1)*_anzahlMaxVerarbeiten)] call life_fnc_handleInv;} forEach _itemsBenoetigtArray;

// ITEMS ADDEN
{
    [true,_x select 0,((_x select 1)*_anzahlMaxVerarbeiten)] call life_fnc_handleInv;} forEach _produkt;

life_is_processing = false;
5 cutText ["","PLAIN"];