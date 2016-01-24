#include <macro.h>
/*	Author: Demigod
Description:
Purge Server Event setup. Sends a faction announcement, plays a sound file from an object
and toggles a variable.*/

private["_message"];
if(FETCH_CONST(life_adminlevel) < 2) exitWith {closeDialog 0; hint "Du musst Admin sein, um diese zu tun..";};
if(life_event) exitWith {closeDialog 0;hint "Es läuft bereits ein Event auf diesem Server.";};
life_event = true;
purge_active = true;
publicVariable "purge_active";
_message = "Hier spricht das Notfall-Übertragungssystem. Wir verkünden den Beginn der diesjährigen Purge – der Säuberung, die offiziell von der US-Regierung zugelassen wurde.Waffen der Klasse 4 und niedriger sind für den Einsatz während der Säuberung erlaubt. Alle anderen Waffen sind nur begrenzt genehmigt.Regierungsbeamten vom Rang 10 wurde für die Säuberung Immunität gewährt und sie dürfen nicht verletzt werden.Sobald die Sirene ertönt, sind sämtliche Verbrechen, einschließlich Mord, für zwölf Stunden erlaubt.
	Polizei, Feuerwehr und medizinische Notfalldienste sind bis morgen früh, wenn die Säuberung endet, nicht verfügbar.
	Gesegnet seien unsere neuen Gründerväter und Amerika,eine wiedergeborene Nation. Möge Gott mit Ihnen sein.";

[[_message,name player,6],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
[[Tower1, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower2, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower3, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower4, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower5, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower6, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower7, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower8, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower9, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower10, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower11, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[Tower12, "purge",5000],"life_fnc_playSound",true,false] spawn life_fnc_MP;
sleep 70;
_message = "The Purge - Die Säuberung BEGINNT! Es werden regelmäßig Nachrichten verbreitet, die über die verbleibende Dauer Informieren. Kämpfe oder verstecke dich, die Wahl liegt bei dir!<br/><br/>Let the killing...<br/><br/><t size='2.5'><t color='#FF1500'>BEGIN!!</t></t>";
[[_message,name player,6],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
sleep 180;
sleep 180;
sleep 180;
_message = "The Purge - Die Reinigung ist zur Hälfte erledigt! Es sind nur noch 15 Minuten verbleibend!";
[[_message,name player,6],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
sleep 180;
sleep 180;
sleep 180;
sleep 180;
sleep 180;
_message = "The Purge - Die Reinigung wird nur noch weitere 5 Minuten andauern!";[[_message,name player,6],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
sleep 150;
sleep 150;
_message = "The Purge - Die Reinigung ist offiziel Beendet.Danke für Ihre Teilnahme. Wir hoffen die Reinigung war ein Erfolg. Alle Notfall Services sind wieder aktiv, und jegliche Form von Kriminalität ist absofort wieder Illegal!<br/><br/><t size='2.5'><t color='#FF1500'>Alle Serverregeln sind absofort wieder GÜLTIG!</t></t>";
[[_message,name player,6],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
[[3,"STR_ISTR_Item_Alert",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
life_event = false;
purge_active = false;
publicVariable "purge_active";