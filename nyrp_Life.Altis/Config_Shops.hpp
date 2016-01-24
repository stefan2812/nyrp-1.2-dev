class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 9000 },
            { "hgun_Pistol_heavy_02_F", "", 14500 },
            { "hgun_ACPC2_F", "", 16500 },
            { "hgun_PDW2000_F", "", 21500 },
            { "optic_ACO_grn_smg", "", 1250 },
            { "V_Rangemaster_belt", "", 2100 },
            { "16Rnd_9x21_Mag", "", 300 },
            { "9Rnd_45ACP_Mag", "", 500 },
            { "6Rnd_45ACP_Cylinder", "", 600 },
            { "30Rnd_9x21_Mag", "", 950 }
        };
    };
    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 8500 },
            { "hgun_Pistol_heavy_02_F", "", 12500 },
            { "hgun_ACPC2_F", "", 14500 },
            { "hgun_PDW2000_F", "", 19500 },
            { "optic_ACO_grn_smg", "", 950 },
            { "V_Rangemaster_belt", "", 1900 },
            { "16Rnd_9x21_Mag", "", 250 },
            { "9Rnd_45ACP_Mag", "", 450 },
            { "6Rnd_45ACP_Cylinder", "", 500 },
            { "30Rnd_9x21_Mag", "", 750 }
        };
    };
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 8500 },
            { "hgun_Pistol_heavy_02_F", "", 12500 },
            { "hgun_ACPC2_F", "", 14500 },
            { "hgun_PDW2000_F", "", 19500 },
            { "optic_ACO_grn_smg", "", 950 },
            { "V_Rangemaster_belt", "", 1900 },
            { "16Rnd_9x21_Mag", "", 250 },
            { "9Rnd_45ACP_Mag", "", 450 },
            { "6Rnd_45ACP_Cylinder", "", 500 },
            { "30Rnd_9x21_Mag", "", 750 }
        };
    };
    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 2500 },
			{ "FirstAidKit", "", 2500 },
			{ "NVGoggles", "", 2000 },
			{ "Chemlight_red", "", 300 },
			{ "Chemlight_yellow", "", 300 },
			{ "Chemlight_green", "", 300 },
            { "Chemlight_blue", "", 300 }
        };
    };
       //Cop Shops
    class cop_general {
        name = "Altis Polizeihändler";
        side = "cop";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "Binocular", "", 500 },
            { "ItemGPS", "", 500 },
            { "ToolKit", "", 1000 },
            { "Medikit", "", 1500 },
            { "NVGoggles", "", 2000 },
            { "NVGoggles_OPFOR", "", 2000},
            { "Rangefinder", "", 1000 },
            { "ItemRadio", "Smartphone", 1500 },
            { "ItemWatch", "", 250 },
            { "ItemCompass", "", 250 },
            { "ItemMap", "", 100 }
        };
    };
    class cop_anwaerter {
        name = "Anwärter Shop";
        side = "cop";
        license = "";
        level = 1;
        msg = "Du musst Anwärter sein!";
        items[] = {
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250}
        };
    };
    class cop_wachtmeister {
        name = "Wachtmeister Shop";
        side = "cop";
        license = "";
        level = 2;
        msg = "Du musst Wachtmeister sein!";
        items[] = {
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250},
            {"arifle_sdar_F","Taser Gewehr",5000},
            {"20Rnd_556x45_UW_mag","Taser Gewehr Magazin",300},
            {"arifle_MXC_F","Gummi MX",7000},
            {"30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",500},
            {"SMG_02_F","",2500},
            {"30Rnd_9x21_Mag","",75},
            {"muzzle_snds_L","",1000},
            {"muzzle_snds_H","",1000},
            {"optic_Aco_smg","",500},
            {"optic_MRCO","",550},
            {"acc_flashlight","",0},
            {"acc_pointer_IR","",0}
        };
    };
    class cop_kommisar {
        name = "Kommisar Shop";
        side = "cop";
        license = "";
        level = 3;
        msg = "Du musst Kommisar sein!";
        items[] = {
            {"SmokeShellRed","Traenengas",7500},
            {"HandGrenade_Stone","Blendgranate",7500},
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250},
            {"arifle_sdar_F","Taser Gewehr",5000},
            {"20Rnd_556x45_UW_mag","Taser Gewehr Magazin",300},
            {"arifle_MXC_F","Gummi MX",7000},
            {"30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",500},
            {"SMG_02_F","",2500},
            {"30Rnd_9x21_Mag","",75},
            {"arifle_MX_Black_F","",8000},
            {"30Rnd_65x39_caseless_mag","",700},
            {"arifle_MX_SW_Black_F","",8500},
            {"100Rnd_65x39_caseless_mag","",1000},
            {"muzzle_snds_L","",1000},
            {"muzzle_snds_H","",1000},
            {"muzzle_snds_B","",1000},
            {"optic_Aco_smg","",500},
            {"optic_MRCO","",550},
            {"optic_DMS","",650},
            {"optic_Hamr","",650},
            {"optic_NVS","",4000},
            {"optic_Arco","",700},
            {"optic_SOS","",1000},
            {"optic_LRPS","",1200},
            {"optic_KHS_blk","",1200},
            {"optic_AMS","",1500},
            {"optic_AMS_snd","",0},
            {"bipod_01_F_blk","",2500},
            {"acc_flashlight","",0},
            {"acc_pointer_IR","",0}
        };
    };
    class cop_oberkommisar {
        name = "Oberkommisar Shop";
        side = "cop";
        license = "";
        level = 4;
        msg = "Du musst Oberkommisar sein!";
        items[] = {
            {"SmokeShellRed","Traenengas",7500},
            {"HandGrenade_Stone","Blendgranate",7500},
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250},
            {"arifle_sdar_F","Taser Gewehr",5000},
            {"20Rnd_556x45_UW_mag","Taser Gewehr Magazin",300},
            {"arifle_MXC_F","Gummi MX",7000},
            {"30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",500},
            {"SMG_02_F","",2500},
            {"30Rnd_9x21_Mag","",75},
            {"arifle_MX_Black_F","",8000},
            {"30Rnd_65x39_caseless_mag","",700},
            {"arifle_MX_SW_Black_F","",8500},
            {"100Rnd_65x39_caseless_mag","",1000},
            {"srifle_DMR_03_DMS_F","",11500},
            {"20Rnd_762x51_Mag","",750},
            {"muzzle_snds_L","",1000},
            {"muzzle_snds_H","",1000},
            {"muzzle_snds_B","",1000},
            {"optic_Aco_smg","",500},
            {"optic_MRCO","",550},
            {"optic_DMS","",650},
            {"optic_Hamr","",650},
            {"optic_NVS","",4000},
            {"optic_Arco","",700},
            {"optic_SOS","",1000},
            {"optic_LRPS","",1200},
            {"optic_KHS_blk","",1200},
            {"optic_AMS","",1500},
            {"optic_AMS_snd","",0},
            {"bipod_01_F_blk","",2500},
            {"acc_flashlight","",0},
            {"acc_pointer_IR","",0}
        };
    };
    class cop_hauptkommisar {
        name = "Hauptkommisar Shop";
        side = "cop";
        license = "";
        level = 5;
        msg = "Du musst Hauptkommisar sein!";
        items[] = {
            {"SmokeShellRed","Traenengas",7500},
            {"HandGrenade_Stone","Blendgranate",7500},
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250},
            {"arifle_sdar_F","Taser Gewehr",5000},
            {"20Rnd_556x45_UW_mag","Taser Gewehr Magazin",300},
            {"arifle_MXC_F","Gummi MX",7000},
            {"arifle_MXC_Black_F","Gummi MX Schwarz",0},
            {"30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",500},
            {"SMG_02_F","",2500},
            {"30Rnd_9x21_Mag","",75},
            {"arifle_MX_Black_F","",8000},
            {"30Rnd_65x39_caseless_mag","",700},
            {"arifle_MXM_Black_F	","",0},
            {"arifle_MX_SW_Black_F","",8500},
            {"100Rnd_65x39_caseless_mag","",1000},
            {"srifle_DMR_03_DMS_F","",11500},
            {"20Rnd_762x51_Mag","",750},
            {"muzzle_snds_L","",1000},
            {"muzzle_snds_H","",1000},
            {"muzzle_snds_B","",1000},
            {"optic_Aco_smg","",500},
            {"optic_MRCO","",550},
            {"optic_DMS","",650},
            {"optic_Hamr","",650},
            {"optic_NVS","",4000},
            {"optic_Arco","",700},
            {"optic_SOS","",1000},
            {"optic_LRPS","",1200},
            {"optic_KHS_blk","",1200},
            {"optic_AMS","",1500},
            {"optic_AMS_snd","",0},
            {"bipod_01_F_blk","",2500},
            {"acc_flashlight","",0},
            {"acc_pointer_IR","",0}
        };
    };
    class cop_bundespolizist {
        name = "Bundespolizei Shop";
        side = "cop";
        license = "";
        level = 6;
        msg = "Du musst Bundespolizist sein!";
        items[] = {
            {"SmokeShellRed","Traenengas",7500},
            {"HandGrenade_Stone","Blendgranate",7500},
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250},
            {"arifle_sdar_F","Taser Gewehr",5000},
            {"20Rnd_556x45_UW_mag","Taser Gewehr Magazin",300},
            {"arifle_MXC_F","Gummi MX",7000},
            {"arifle_MXC_Black_F","Gummi MX Schwarz",0},
            {"30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",500},
            {"SMG_02_F","",2500},
            {"30Rnd_9x21_Mag","",75},
            {"arifle_MX_Black_F","",8000},
            {"30Rnd_65x39_caseless_mag","",700},
            {"arifle_MXM_Black_F","",0},
            {"arifle_MX_SW_Black_F","",8500},
            {"100Rnd_65x39_caseless_mag","",1000},
            {"srifle_EBR_F","",10000},
            {"srifle_DMR_03_DMS_F","",11500},
            {"20Rnd_762x51_Mag","",750},
            {"muzzle_snds_L","",1000},
            {"muzzle_snds_H","",1000},
            {"muzzle_snds_B","",1000},
            {"optic_Aco_smg","",500},
            {"optic_MRCO","",550},
            {"optic_DMS","",650},
            {"optic_Hamr","",650},
            {"optic_NVS","",4000},
            {"optic_Arco","",700},
            {"optic_SOS","",1000},
            {"optic_LRPS","",1200},
            {"optic_KHS_blk","",1200},
            {"optic_AMS","",1500},
            {"optic_AMS_snd","",0},
            {"bipod_01_F_blk","",2500},
            {"acc_flashlight","",0},
            {"acc_pointer_IR","",0}
        };
    };
    class cop_polizeichef {
        name = "Polizeichef Shop";
        side = "cop";
        license = "";
        level = 7;
        msg = "Du musst Polizeichef sein!";
        items[] = {
            {"SmokeShellRed","Traenengas",7500},
            {"HandGrenade_Stone","Blendgranate",7500},
            {"hgun_P07_snds_F","Taser Pistole",2000},
            {"30Rnd_9x21_Mag","Taser Pistolen Magazin",250},
            {"arifle_sdar_F","Taser Gewehr",5000},
            {"20Rnd_556x45_UW_mag","Taser Gewehr Magazin",300},
            {"arifle_MXC_F","Gummi MX",7000},
            {"30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",500},
            {"SMG_02_F","",2500},
            {"30Rnd_9x21_Mag","",75},
            {"arifle_MX_Black_F","",8000},
            {"30Rnd_65x39_caseless_mag","",700},
            {"arifle_MXM_Black_F","",9500},
            {"arifle_MX_SW_Black_F","",8500},
            {"100Rnd_65x39_caseless_mag","",1000},
            {"srifle_EBR_F","",10000},
            {"srifle_DMR_03_DMS_F","",11500},
            {"20Rnd_762x51_Mag","",750},
            {"muzzle_snds_L","",1000},
            {"muzzle_snds_H","",1000},
            {"muzzle_snds_B","",1000},
            {"optic_Aco_smg","",500},
            {"optic_MRCO","",550},
            {"optic_DMS","",650},
            {"optic_Hamr","",650},
            {"optic_NVS","",4000},
            {"optic_Arco","",700},
            {"optic_SOS","",1000},
            {"optic_LRPS","",1200},
            {"optic_KHS_blk","",1200},
            {"optic_AMS","",1500},
            {"bipod_01_F_blk","",2500},
            {"acc_flashlight","",0},
            {"acc_pointer_IR","",0}
        };
    };


    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level = -1;
        items[] = {
            { "ItemGPS", "", 100 },
			{ "Binocular", "", 150 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 500 },
			{ "NVGoggles", "", 1200 },
			{ "B_Bergen_mcamo", "", 3000 },
            { "U_I_HeliPilotCoveralls","",2000}
        };
    };
};
