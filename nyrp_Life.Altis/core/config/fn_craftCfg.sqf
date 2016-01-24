#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return","_craftSites"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
                ["arifle_Katiba_F", ["iron_ingot",10,"copper_ingot",2,"plastic",2]],
                ["srifle_DMR_01_F",  ["iron_ingot",4,"copper_ingot",2,"plastic",2]],
                ["srifle_EBR_F",  ["iron_ingot",11,"copper_ingot",4,"plastic",8]],
                ["LMG_Zafir_F",  ["iron_ingot",16,"copper_ingot",5,"plastic",5]],
                ["LMG_Mk200_F",  ["iron_ingot",14,"copper_ingot",5,"plastic",5]],
                ["arifle_MX_SW_F",  ["iron_ingot",10,"copper_ingot",5,"plastic",5]],
                ["srifle_DMR_06_camo_khs_F",  ["iron_ingot",20,"copper_ingot",5,"plastic",5]],
                ["srifle_DMR_02_camo_F",  ["iron_ingot",25,"plastic",10,"goldBar",3]]
            ];

	};

    	case "uniform":
	{
         _return = [
				//["U_C_Poloshirt_blue",["wool_processed",3]],
            ];
	};

	case "backpack":
	{
        _return = [
				//["B_AssaultPack_cbr",["wool_processed",10,"plastic",2]],
			];
	};

	case "item":
	{
        _return = [
                ["ziptie",["plastic",5]]
            ];
	};

    case "vest":
    {
        _return = [
                //["V_TacVest_khk",["wool_processed",10,"iron_ingot",2]],
            ];
    };

    case "ammo":
    {
        _return = [
                ["20Rnd_762x51_Mag",["sulfur",2,"iron_ingot",2]], //MK 14 / MK 18 (7,62mm)
                ["30Rnd_65x39_caseless_green",["sulfur",2,"iron_ingot",2]], //Katiba (6,5mm)
                ["10Rnd_762x54_Mag",["sulfur",2,"iron_ingot",2]], // Rahim (7,62mm)
                ["150Rnd_762x54_Box",["sulfur",6,"iron_ingot",6]], // Zafir (7,62mm)
                ["100Rnd_65x39_caseless_mag",["sulfur",2,"iron_ingot",2]], // MX-SW (6,5mm)
                ["200Rnd_65x39_cased_Box",["sulfur",2,"iron_ingot",2]], //MK 200 (6,5mm)
                ["10Rnd_338_Mag",["sulfur",5,"iron_ingot",5]]
            ];
    };

    case "attach":
    {
        _return = [
                //Attachments
                ["bipod_01_F_snd",["iron_ingot",1,"plastic",1]],
                ["bipod_02_F_hex",["iron_ingot",1,"plastic",1]],
                ["muzzle_snds_B",["iron_ingot",2,"plastic",1]],
                ["muzzle_snds_H",["iron_ingot",2,"plastic",1]],
                ["muzzle_snds_H_SW",["iron_ingot",3,"plastic",1]],
                ["muzzle_snds_338_green",["iron_ingot",5,"plastic",5]],
                //Scopes
                ["optic_Aco",["iron_ingot",1,"glass",1]],
                ["optic_Aco_grn",["iron_ingot",1,"glass",1]],
                ["optic_Yorris",["iron_ingot",1,"glass",1]],
                ["optic_MRD",["iron_ingot",1,"glass",1]],
                ["optic_LRPS",["iron_ingot",2,"glass",2]],
                ["optic_AMS_khk",["iron_ingot",3,"glass",3]],
                ["optic_SOS",["iron_ingot",2,"glass",2]]
            ];
    };
};
_return;