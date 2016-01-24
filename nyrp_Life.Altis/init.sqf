StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v4.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";


[] execVM "scripts\fn_robShopInitServer.sqf"; // Rob a Shop (Server)
[] execVM "scripts\effectcolorcorrection.sqf";

if(isDedicated && isNil("life_ATMhacked")) then
{
 life_ATMhacked = 0;
 publicVariable "life_ATMhacked";
 diag_log format["life_ATMhacked: %1",life_ATMhacked];
};
StartProgress = true;
