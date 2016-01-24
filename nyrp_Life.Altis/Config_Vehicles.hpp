class CarShops {
	/*
		Format:
		{ Classname, rental price, license required, { varname, >= value } }

		{ varname, >= value} this is a "level" requirement mainly used by cops and rebels, do not fill this in if you are not utilizing it.
	*/
	class civ_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", 8000, "" },  //QUAD
			{ "C_Offroad_01_F", 35000, "driver" }, //Offroad
			{ "C_SUV_01_F", 30000, "driver" },	//SUV
			{ "C_Hatchback_01_sport_F", 150000, "driver" },  // Sportlimosine
			{ "C_Van_01_transport_F", 60000, "driver" }	// Truck
		};
	};

	class kart_shop {
		side = "civ";
		vehicles[] = {
			{ "C_Kart_01_Blu_F", 15000 , "driver" },
			{ "C_Kart_01_Fuel_F", 15000, "driver" },
			{ "C_Kart_01_Red_F", 15000, "driver" },
			{ "C_Kart_01_Vrana_F", 15000, "driver" }
		};
	};

	class med_shop {
		side = "med";
		vehicles[] = {
			{ "C_Offroad_01_F", 10000, "", { "life_mediclevel", 1 }},
			{ "C_SUV_01_F", 25000, "", { "life_mediclevel", 2 }},
			{ "O_Truck_03_medical_F", 45000, "", { "life_mediclevel", 4 }},
			{ "O_MRAP_02_F", 60000, "", { "life_mediclevel", 4 }}
		};
	};

	class med_air_hs {
		side = "med";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 50000, "" },
			{ "O_Heli_Light_02_unarmed_F", 75000, "", { "life_mediclevel", 2 }}
		};
	};

	class civ_truck {
		side = "civ";
		vehicles[] = {
			{ "C_Van_01_box_F", 60000, "truck" },	// Truck Boxed
			{ "I_Truck_02_transport_F", 300000, "truck" },	//Zamak Transport
			{ "I_Truck_02_covered_F", 300000, "truck" },	//Zamak Transport Abgedeckt
			//{ "B_Truck_01_covered_F", 100000, "truck"},		//HemTT Transport Abgedeckt
			//{ "B_Truck_01_transport_F", 275000, "truck" },	//HemTT Transport
			{ "O_Truck_03_transport_F", 750000, "truck" },	//Tempest Transport
			{ "O_Truck_03_covered_F", 750000, "truck" },	//Tempest Transport Abgedeckt
			{ "B_Truck_01_box_F", 1400000, "truck" },		//HemTT Boxed
			{ "O_Truck_03_device_F", 1250000, "truck" }		//Tempest Gerät
		};
	};

	class reb_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", 2500, "" },		//Quad
			{ "B_G_Offroad_01_F", 15000, "" },		//Rebellen Offroad
			{ "B_MRAP_01_F", 1000000,"rebel"},		//Hunter
			{ "O_MRAP_02_F", 1000000, "rebel" },		//Ifrit
			{ "B_Heli_Light_01_F", 100000, "" },		//Humming
			{ "B_G_Offroad_01_armed_F", 1750000, "rebel" } //Offroad HMG
		};
	};

	class cop_car {
		side = "cop";
		vehicles[] = {
			{ "C_Offroad_01_F", 15000, "", { "life_coplevel", 2 } },		//Offroad
			{ "C_SUV_01_F", 35000, "", { "life_coplevel", 3 } },			//SUV
			{ "B_MRAP_01_F", 45000, "", { "life_coplevel", 4 } },			//Hunter
			{ "C_Hatchback_01_sport_F", 50000, "", { "life_coplevel", 4 } },		//SportLimo
			{ "B_MRAP_01_hmg_F", 250000, "", { "life_coplevel", 5 } },		//Hunter HMG
			{ "I_MRAP_03_F", 75000, "", { "life_coplevel", 6 } }			//Strider
		};
	};

	class civ_air {
		side = "civ";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 125000, "pilot" },	//MH-9 Hummingbird
			{ "I_Heli_Transport_02_F", 300000, "pilot" },	//CH-49 Mohawk
			{ "O_Heli_Transport_04_box_F", 2500000, "pilot" },	//Mi-290 Taru (Cargo)
			{ "O_Heli_Transport_04_F", 1000000, "pilot" },	//Mi-290 Taru Transport
			{ "B_Heli_Transport_03_unarmed_F", 5000000, "pilot" }	//CH-67 Huron
		};
	};
		class reb_air {
		side = "civ";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 100000, "pilot" },	//MH-9 Hummingbird
			{ "I_Heli_Transport_02_F", 280000, "pilot" },	//CH-49 Mohawk
			{ "O_Heli_Transport_04_box_F", 2200000, "pilot" },	//Mi-290 Taru (Cargo)
			{ "O_Heli_Transport_04_F", 900000, "pilot" },	//Mi-290 Taru Transport
			{ "B_Heli_Transport_01_F", 2200000, "rebel" },	 //Ghosthawk
			{ "B_Heli_Transport_03_unarmed_F", 4000000, "pilot" }	//CH-67 Huron
		};
	};
	class cop_air {
		side = "cop";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 25000, "", { "life_coplevel", 2 } },		//Humming
			{ "I_Heli_light_03_unarmed_F", 50000, "", { "life_coplevel", 3 } }, //Orca
			{ "O_Heli_Light_02_unarmed_F", 75000, "", { "life_coplevel", 4 } },	//HellCat
			{ "O_Heli_Transport_04_F", 80000, "", { "life_coplevel", 4 } },		//Taru Transport
			{ "B_Heli_Transport_01_F", 100000, "", { "life_coplevel", 6 } }		//Ghost Hawk
		};
	};

	class cop_ship {
		side = "cop";
		vehicles[] = {
			{ "B_Boat_Transport_01_F", 5000, "" },
			{ "C_Boat_Civil_01_police_F", 10000, "", { "life_coplevel", 2 } },
			{ "B_Boat_Armed_01_minigun_F", 25000, "", { "life_coplevel", 3 } },
			{ "B_SDV_01_F", 15000, "", { "life_coplevel", 3 } }
		};
	};

	class civ_ship {
		side = "civ";
		vehicles[] = {
			{ "C_Rubberboat", 5000, "boat" },
			{ "C_Boat_Civil_01_F", 22000, "boat" },
			{ "B_SDV_01_F", 150000, "boat" }
		};
	};
};

/*
	Vehicle Configs (Contains textures and other stuff)

	storageFee (Getting vehicles out of garage) format:
		INDEX 0: Civilian Price
		INDEX 1: Cop Price
		INDEX 3: EMS Price
		INDEX 4: OPFOR Price (Not implemented in vanilla but still leaving support

	Textures config follows { Texture Name, side, {texture(s)path}}
	Texture(s)path follows this format:
		INDEX 0: Texture Layer 0
		INDEX 1: Texture Layer 1
		INDEX 2: Texture Layer 2
		etc etc etc
*/
class CfgVehicles {
	class Default {
		vItemSpace = -1;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 0, 0, 0, 0 };
		insurance = 2500;
		chopShop = 1200;
		textures[] = {};
	};

	class I_Truck_02_medical_F : Default {
		vItemSpace = 150;
		storageFee[] = { 0, 0, 1500, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		chopShop = 3000;
	};

	class O_Truck_03_medical_F : Default {
		vItemSpace = 200;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 0, 0 };
		chopShop = 7500;
	};

	class B_Truck_01_medical_F : Default {
		vItemSpace = 250;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 0, 0 };
		chopShop = 12500;
	};

	class C_Rubberboat {
        vItemSpace = 45;
        storageFee[] = { 400, 0, 0, 0 };
		garageSell[] = { 950, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Heli_Transport_01_F {
		vItemSpace = 200;
		storageFee[] = { 50000, 0, 0, 0 };
		garageSell[] = { 1250000, 0, 0, 0 };
		insurance = 16000;
		chopShop = 45000;
		textures[] = {
		{ "Polizei", "cop", {
                "textures\cop\Cop_GH_0.jpg",
				"textures\cop\Cop_GH_1.jpg"
           } },
        { "Rebellen", "reb", {
                "textures\civ\Civ_Gh_0.jpg",
				"textures\civ\Civ_Gh_1.jpg"
           } },
		};
	};
	class B_Heli_Transport_03_unarmed_F {	//Huron
		vItemSpace = 1000;
		storageFee[] = { 125000, 0, 0, 0 };
		garageSell[] = { 2500000, 0, 0, 0 };
		insurance = 16000;
		chopShop = 45000;
		textures[] = {};
	};
		class B_Truck_01_covered_F : Default {
		vItemSpace = 250;
		storageFee[] = { 0, 0, 6500, 0 };
		garageSell[] = { 0, 0, 25000, 0 };
		chopShop = 12500;
	};

	class B_MRAP_01_hmg_F : Default {
		vItemSpace = 100;
	};

	class O_Boat_Armed_01_hmg_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 21000, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 0, 16500, 0, 0 };
		garageSell[] = { 0, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
		{ "Polizei", "cop", {
                "textures\cop\Cop_Gunboot.jpg"
           } }
        };
    };

	class I_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_G_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 0, 450, 0, 0 };
		garageSell[] = { 0, 850, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class O_Truck_03_transport_F { //Tempest Transport
        vItemSpace = 1500;
        storageFee[] = { 125000, 0, 0, 0 };
        garageSell[] = { 0, 350000, 0, 0 };
        insurance = 2500;
        chopShop = 350000;
        textures[] = { };
    };

	class O_Truck_03_device_F {   //tempest device
        vItemSpace = 1250;
        storageFee[] = { 95000, 0, 0, 0 };
		garageSell[] = { 600000, 0, 0, 0 };
        insurance = 25000;
        chopShop = 600000;
        textures[] = { };
    };

	class Land_CargoBox_V1_F : Default {
        vItemSpace = 5000;
    };

	class Box_IND_Grenades_F : Default {
        vItemSpace = 350;
    };

	class B_supplyCrate_F {
        vItemSpace = 700;
    };

	class B_G_Offroad_01_F {
        vItemSpace = 65;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 3500, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_G_Offroad_01_armed_F : B_G_Offroad_01_F {};

	class I_G_Van_01_transport_F {  //Truck
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_F {
        vItemSpace = 85;
        storageFee[] = { 4500, 2500, 0, 0 };
		garageSell[] = { 6800, 3500, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        storageFee[] = { 0, 3500, 0, 0 };
		garageSell[] = { 0, 4950, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Truck_01_box_F {  //HEMTT Box
        vItemSpace = 1750;
        storageFee[] = { 150000, 0, 0, 0 };
		garageSell[] = { 700000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 700000;
        textures[] = { };
    };

	class B_Truck_01_transport_F {   //HEMTT Transport
        vItemSpace = 325;
        storageFee[] = { 25650, 0, 0, 0 };
		garageSell[] = { 135000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class O_MRAP_02_F {
        vItemSpace = 60;
        storageFee[] = { 45000, 0, 0, 0 };
		garageSell[] = { 750000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 750000;
        textures[] = {
        	{ "Rebellen", "civ", {
                "textures\civ\civ_ifrit_0.jpg",
                "textures\civ\civ_ifrit_1.jpg"
            } },
        	{ "Notarzt", "med", {
                "textures\medic\notarzt_ifrit_teil1.paa",
                "textures\medic\notarzt_ifrit_teil2.paa"
            } }
        };
    };

	class I_MRAP_03_F {
        vItemSpace = 58;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 2500;
        chopShop = 250000;
        textures[] = { };
    };

	class C_Offroad_01_F {
        vItemSpace = 100;
        storageFee[] = { 2000, 0, 0, 0 };
		garageSell[] = { 22000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 22000;
        textures[] = {
        	{ "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
			{ "Yellow", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
			{ "White", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
			{ "Blue", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
			{ "Dark Red", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
			{ "Blue / White", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
           	{ "Polizei", "cop", {
	                "textures\cop\cop_offroad.jpg"
            } },
            { "Taxi", "civ", {
	                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
            { "Notarzt", "med", {
	                "textures\medic\medic_offroad.jpg"
            } },
           	{ "Rockstar", "civ", {
                "textures\civ\offroad_rockstar.jpg"
           } }
	    };
    };
	class O_Heli_Transport_04_F : Default {	//TARU Transport
        vItemSpace = 50;
        storageFee[] = { 51000, 0, 0, 0 };
		garageSell[] = { 500000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 0;
        textures[] = {
			{ "Polizei", "cop", {
                "textures\cop\cop_taru_0.jpg",
                "textures\cop\cop_taru_1.jpg"
            } }
		};
    };
    	class O_Heli_Transport_04_box_F : Default { //TARU Cargo
        vItemSpace = 750;
        storageFee[] = { 51000, 0, 0, 0 };
		garageSell[] = { 1200000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 0;
        textures[] = {};
    };

	class C_Kart_01_Blu_F {
		vItemSpace = 20;
		storageFee[] = { 1500, 0, 0, 0 };
		garageSell[] = { 3500, 0, 0, 0 };
		inusrance = 1650;
		chopShop = 3500;
		textures[] = {};
	};

	class C_Kart_01_Fuel_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Red_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Vrana_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class

	class C_Hatchback_01_sport_F {
        vItemSpace = 60;
        storageFee[] = { 2500, 0, 0, 0 };
		garageSell[] = { 60000, 0, 0, 0 };
        insurance = 5500;
        chopShop = 60000;
        textures[] = {
        	{ "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
			{ "Dark Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
			{ "Black / White", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
			{ "Monster", "civ", {
	                "textures\civ\sport_monster.paa"
            } },
			{ "Rockstar", "civ", {
	                "textures\civ\sport_rockstar.paa"
            } },
            { "Polizei UnderCover", "cop", {
					"textures\cop\s.paa"
            } },
            { "Polizei Streife", "cop", {
					"textures\cop\Cop_Sport.jpg"
            } }
        };
    };

	class B_Quadbike_01_F {
        vItemSpace = 30;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 5000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
			{ "Digi Desert", "reb", {
	                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
	        } },
			{ "Black", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
	        } },
			{ "Blue", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
	        } },
			{ "Red", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
	        } },
			{ "White", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
	        } },
			{ "Digi Green", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
	        } },
			{ "Hunter Camo", "civ", {
	                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
	        } },
	        { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } }
        };
    };

	class I_Truck_02_covered_F {   // Zamak abgedeckt
        vItemSpace = 750;
        storageFee[] = { 14500, 0, 0, 0 };
		garageSell[] = { 150000, 0, 0, 0 };
        insurance = 6500;
        chopShop = 150000;
        textures[] = {
        	{ "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "fed", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class I_Truck_02_transport_F : I_Truck_02_covered_F { // Zamak Transport
        vItemSpace = 750;
        storageFee[] = { 12000, 0, 0, 0 };
		garageSell[] = { 150000, 0, 0, 0 };
		chopShop = 150000;
		textures[] = {};
    };

	class O_Truck_03_covered_F { //Tempest Abgedeckt
		vItemSpace = 1500;
		storageFee[] = { 125000, 0, 0, 0 };
		garageSell[] = { 375000, 0, 0, 0 };
		insurance = 2500;
		chopShop = 375000;
		textures[] = {};
	};

	class C_Hatchback_01_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 4500, 3500, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
			{ "Green", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
			{ "Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
			{ "Dark Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
			{ "Yellow", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
			{ "White", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
			{ "Grey", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Monster", "civ", {
	                "textures\civ\sport_monster.paa"
            } },
			{ "Rockstar", "civ", {
	                "textures\civ\sport_rockstar.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };

	class C_SUV_01_F {
        vItemSpace = 75;
        storageFee[] = { 1900, 0, 0, 0 };
		garageSell[] = { 26000, 7500, 0, 0 };
        insurance = 2500;
        chopShop = 26000;
        textures[] = {
        	{ "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
			{ "Silver", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
			{ "Jaguar", "civ", {
	                "textures\civ\suv_jaguar.paa"
            } },
            { "Tribal - Grün", "civ", {
	                "textures\civ\suv_green_tribal.jpg"
            } },
            { "Tribal - Rot", "civ", {
	                "textures\civ\suv_red_tribal.jpg"
            } },
            { "Notarzt", "med", {
	                "textures\medic\medic_suv.jpg"
            } },
            { "Polizei", "cop", {
                	"textures\cop\Cop_SUV.jpg"
            } }
	        };
    };

	class C_Van_01_transport_F {
        vItemSpace = 250;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 30000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 30000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

	class C_Van_01_box_F {
        vItemSpace = 350;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 35000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };
	class B_MRAP_01_F {
        vItemSpace = 65;
        storageFee[] = { 0, 7500, 0, 0 };
		garageSell[] = { 0, 750000, 0, 0 };
        insurance = 2500;
        chopShop = 750000;
        textures[] = {
        	{ "Polizei", "cop", {
                "textures\cop\Cop_Hunter_0.jpg",
                "textures\cop\Cop_Hunter_1.jpg"
            } },
            { "Cop Wrecker", "reb", {
                "textures\civ\Hunter_0.jpg",
                "textures\civ\Hunter_1.jpg"
            } },
            { "Altis Söldner", "reb", {
                "textures\civ\Hunter1.paa",
                "textures\civ\Hunter2.paa"
            } },
            { "Suicide Squad", "reb", {
                "textures\civ\Hunter_0.paa",
                "textures\civ\Hunter_1.paa"
            } },
            { "GrayWolf", "reb", {
                "textures\civ\graywolfhunter_1.jpg",
                "textures\civ\graywolfhunter_2.jpg"
            } }
        };
    };

	class B_Heli_Light_01_F {
        vItemSpace = 50;
        storageFee[] = { 45000, 0, 0, 0 };
		garageSell[] = { 57000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Polizei", "cop", {
                "textures\cop\Cop_Humming.jpg"
            } },
			{ "Civ Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
			{ "Civ Red", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
			{ "Digi Green", "donate", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
			{ "Blueline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
			{ "Elliptical", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
			{ "Furious", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
			{ "Jeans Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
			{ "Speedy Redline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
			{ "Sunset", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
			{ "Vrana", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
			{ "Waves Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
			{ "Rebel Digital", "reb", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Notarzt", "med", {
                "textures\medic\notarzt_hummingbird.paa"
            } }
        };
    };

    class I_Heli_light_03_unarmed_F : Default {
        vItemSpace = 100;
        storageFee[] = { 24500, 0, 0, 0 };
		garageSell[] = { 133333, 0, 0, 0 };
        insurance = 2500;
        chopShop = 0;
        textures[] = {
			{ "Digi Grün", "reb", {
                "\a3\air_f_epb\Heli_Light_03\Data\heli_light_03_base_indp_co.paa"
            } },
			{ "Polizei", "cop", {
	                "textures\cop\Cop_HC.jpg"
            } }
		};
    };

	class O_Heli_Light_02_unarmed_F {
        vItemSpace = 210;
        storageFee[] = { 55000, 0, 22000, 0 };
		garageSell[] = { 72500, 0, 35000, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Black", "fed", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
			{ "White / Blue", "civ", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            } },
			{ "Digi Green", "donate", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
			{ "Desert Digi", "reb", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            } },
            { "Notarzt", "med", {
                "textures\medic\orca_notarzt.paa"
            } }
        };
    };

	class I_Heli_Transport_02_F {
        vItemSpace = 250;
        storageFee[] = { 25000, 0, 0, 0 };
		garageSell[] = { 125000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Ion", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"
            } },
            { "Dahoman", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
            } }
        };
    };
};