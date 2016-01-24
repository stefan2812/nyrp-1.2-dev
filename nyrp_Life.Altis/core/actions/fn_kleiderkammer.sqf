////////////////////////////////
//// Author: SBUserhy ////
//// native-gamer.net ////
//// Altis Life 4.0 ////
////////////////////////////////
if !(playerside == civilian) exitWith {titleText["Du bist dazu nicht berechtigt!","PLAIN"];};
//Kleiderkammer
removeUniform player;
removeHeadGear player;
removeGoggles player;
//ADD PART
sleep 1;
_Uniformen = [
 "U_C_Poloshirt_blue",
 "U_C_Poloshirt_burgundy",
 "U_C_Poloshirt_redwhite",
 "U_C_Poloshirt_salmon",
 "U_C_Poloshirt_stripped",
 "U_C_Poloshirt_tricolour",
 "U_C_Poor_2",
 "U_IG_Guerilla2_2",
 "U_IG_Guerilla3_1",
 "U_IG_Guerilla2_3",
 "U_C_HunterBody_grn",
 "U_C_WorkerCoveralls",
 "U_OrestesBody",
 "U_NikosAgedBody",
 "U_IG_Guerilla1_1",//Rebellenshop
 "U_I_G_Story_Protagonist_F",//Rebellenshop
 "U_I_G_resistanceLeader_F",//Rebellenshop
 "U_O_SpecopsUniform_ocamo",//Rebellenshop
 "U_O_PilotCoveralls",//Rebellenshop
 "U_IG_leader",//Rebellenshop
 "U_O_GhillieSuit"//Rebellenshop
 ];
_headgear = [
 "H_Bandanna_camo",
 "H_Bandanna_surfer",
 "H_Bandanna_gry",
 "H_Bandanna_cbr",
 "H_Bandanna_khk",
 "H_Bandanna_sgg",
 "H_StrawHat",
 "H_TurbanO_blk",
 "H_BandMask_blk",
 "H_Booniehat_tan",
 "H_Hat_blue",
 "H_Hat_brown",
 "H_Hat_checker",
 "H_Hat_grey",
 "H_Hat_tan",
 "H_Cap_blu",
 "H_Cap_grn",
 "H_Cap_grn_BI",
 "H_Cap_oli",
 "H_Cap_grn",
 "H_Cap_red",
 "H_Cap_tan",
 "H_Cap_press",
 "H_Cap_blk_ION",
 "H_Cap_surfer",
 "H_Cap_marshal",
 "H_Beret_grn"
 ];
_goggles = [
 "G_Shades_Black",
 "G_Shades_Blue",
 "G_Sport_Blackred",
 "G_Sport_Checkered",
 "G_Sport_Blackyellow",
 "G_Sport_BlackWhite",
 "G_Squares",
 "G_Aviator",
 "G_Lady_Mirror",
 "G_Lady_Dark",
 "G_Lady_Blue",
 "G_Lowprofile",
 "G_Combat",
 "G_Diving",
 "G_Tatical_Clear"
 ];
player addUniform (_Uniformen call BIS_fnc_SelectRandom);
player addHeadgear (_headgear call BIS_fnc_SelectRandom);
player addGoggles (_goggles call BIS_fnc_SelectRandom);
sleep 1;
[] call life_fnc_saveGear;