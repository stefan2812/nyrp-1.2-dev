#include <macro.h>
/*
	File: loadout.sqf
	Author: Jason_000
	Modified for "nyrp"
	Description:
	Sets loadout to the player
*/
if (playerSide == independent) exitWith {hint "Du musst Polizist sein, um dies tun zu können!"};  //cops only
if (playerSide == civilian) exitWith {hint "Du musst Polizist sein, um dies tun zu können!"};  //cops only

if (life_cash >= 17500) then //17500
{
	//Removes all items the player has (Not Y Menu)
	life_cash = life_cash - 17500;  //30k
	hintSilent "17500$ wurden für die Bereitstellung abgezogen";
	sleep 2;
	hintSilent "Bitte warten Sie, während ihre Ausrüstung bereitgestellt wird. Dies kann einen Moment dauern!";
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;
	sleep 2;
	player addBackpack "B_Bergen_mcamo";
	//Virtual items, who knows might be used... -check config_master
	sleep 2;
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";
	player addItem "waterBottle";
	player assignItem "waterBottle";
	player addItem "waterBottle";
	player assignItem "waterBottle";
	player addItem "waterBottle";
	player assignItem "waterBottle";
	player addItem "spikeStrip";
	player assignItem "spikeStrip";
	player addItem "spikeStrip";
	player assignItem "spikeStrip";
	player addItem "spikeStrip";
	player assignItem "spikeStrip";
	player additem "NVGoggles";
	player assignitem "NVGoggles";
	switch (FETCH_CONST(life_coplevel)) do
 			{
	             case 1: {
				player addUniform "U_Rangemaster";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Cap_police";
			}; // Rank 1
	             case 2: {
				player addUniform "U_Rangemaster";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Cap_police";
			}; // Rank 2
	             case 3: {
				player addUniform "U_B_CombatUniform_mcam";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Beret_blk_POLICE";
			}; // Rank 3
	             case 4: {
				player addUniform "U_B_CombatUniform_mcam";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Beret_blk_POLICE";
				player addItem "SmokeShellRed";
				player assignItem "SmokeShellRed";
				player addItem "HandGrenade_Stone";
				player assignItem "HandGrenade_Stone";
			}; // Rank 4
	             case 5: {
				player addUniform "U_B_CombatUniform_mcam";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Beret_blk_POLICE";
				player addItem "SmokeShellRed";
				player assignItem "SmokeShellRed";
				player addItem "HandGrenade_Stone";
				player assignItem "HandGrenade_Stone";
			}; // Rank 5
 	             case 6: {
				player addUniform "U_B_CombatUniform_mcam";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Beret_blk_POLICE";
				player addItem "SmokeShellRed";
				player assignItem "SmokeShellRed";
				player addItem "HandGrenade_Stone";
				player assignItem "HandGrenade_Stone";
			}; // Rank 6
	             case 7: {
				player addUniform "U_B_CombatUniform_mcam";
				player addVest "V_TacVest_blk_POLICE";
				player addHeadGear "H_Beret_blk_POLICE";
				player addItem "SmokeShellRed";
				player assignItem "SmokeShellRed";
				player addItem "HandGrenade_Stone";
				player assignItem "HandGrenade_Stone";
			}; // Rank 7
		};
	[] call life_fnc_saveGear;
	[player, uniform player] call life_fnc_equipGear;
	hintSilent "Ihre Ausrüstung steht bereit. Viel Glück!";
}
else
{
 hintSilent "Leider hast du keine 17500$ für diese Ausrüstung!";
};