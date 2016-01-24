/*
	fn_equipGear.sqf
	Author: Keine Ahnung.. Bohemia Wiki+SQF? o.O
	Edit: Nox, www.ragecore.de / www.native-gamer.net
*/
private["_path","_unit","_type"];
_unit = [_this,0] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;


//COP KLEIDUNG
if(playerSide == west) then {
	switch(_type) do {
		case "U_Rangemaster" : {
			_path = "textures\cop\Rank1.paa";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_B_CombatUniform_mcam" : {
			_path = "textures\cop\Rank2.paa";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_O_OfficerUniform_ocamo" : {
			_path = "textures\cop\Rank3.paa";
			_unit setObjectTextureGlobal [0,_path];
		};
	};

	if((backpack player) == "B_Bergen_mcamo")  then {
		(unitBackpack _unit) setObjectTextureGlobal [0, "textures\cop\polizeibag.jpg"];
		//(unitBackpack player) setObjectTextureGlobal [0, ""]; //Macht Rucksäcke unsichtbar :)
	};
	if((backpack player) == "B_Carryall_cbr")  then {
		//(unitBackpack _unit) setObjectTextureGlobal [0, "textures\cop\polizeibag.jpg"];
		(unitBackpack player) setObjectTextureGlobal [0, ""]; //Macht Rucksäcke unsichtbar :)
	};



};

//MEDIC KLEIDUNG
if(playerSide == independent) then {
	switch(_type) do {
		case "U_I_HeliPilotCoveralls" : {
			_path = "textures\medic\notarzt_kleidung.paa";
			_unit setObjectTextureGlobal [0,_path];
		};
	};
	if((backpack player) == "B_Bergen_mcamo") then {
		(unitBackpack _unit) setObjectTextureGlobal [0, "textures\medic\notarzt_rucksack.paa"];
	};
};

//ZIVILISTEN KLEIDUNG
//if(playerSide == civilian) then {
//	switch(_type) do {
//		case "U_C_WorkerCoveralls" : {
//			_path = "textures\civ\adac_cloth.jpg";
//			_unit setObjectTextureGlobal [0,_path];
//		};
//		case "U_C_Poloshirt_blue" : {
//			_path = "textures\civ\rccloth.jpg";
//			_unit setObjectTextureGlobal [0,_path];
//		};
//	};
//};