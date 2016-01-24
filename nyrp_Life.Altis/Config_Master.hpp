#define VITEMMACRO(NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON) class NAME { \
		variable = VARNAME; \
		weight = WEIGHT; \
		displayName = DISPLAYNAME; \
		buyPrice = BUYPRICE; \
		sellPrice = SELLPRICE; \
		illegal = ILLEGAL; \
		edible = EDIBLE; \
		icon = ICON; \
	};

#define LICENSEMACRO(NAME,DISPLAYNAME,VARNAME,PRICE,ILLEGAL,SIDE) class NAME { \
		variable = VARNAME; \
		displayName = DISPLAYNAME; \
		price = PRICE; \
		illegal = ILLEGAL; \
		side = SIDE; \
	};

#define true 1
#define false 0
#include "Config_Clothing.hpp"
#include "Config_Shops.hpp"


/*
	Master settings for various features and functionality
*/
class Life_Settings {
	/* Persistent Settings */
	save_civ_weapons = true; //Allow civilians to save weapons on them?
	save_virtualItems = true; //Save Virtual items (all sides)?

	/* Revive system settings */
	revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
	revive_fee = 7500; //Revive fee that players have to pay and medics / EMS are rewarded

	/* House related settings */
	house_limit = 5; //Maximum amount of houses a player can own.

	/* Gang related settings */
	gang_price = 100000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
	gang_upgradeBase = 10000; //The base cost for upgrading slots in a gang
	gang_upgradeMultiplier = 2.5; //Not sure if in use?

	/* Player-related systems */
	enable_fatigue = true; //Set to false to disable the ARMA 3 false system.
	total_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
	total_maxWeightT = 24;  //Static variable for the maximum weight allowed without having a backpack
	paycheck_period = 5; //Scaled in minutes

	/* Impound Variables */
	impound_car = 5000; //Price for impounding cars
	impound_boat = 7500; //Price for impounding boats
	impound_air = 10000; //Price for impounding helicopters / planes

	/* Car-shop Settings */
	vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F" };

	/* Job-related stuff */
	delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25" };

	crimes[] = {
		{"STR_Crime_1","3000","1"},
		{"STR_Crime_2","10000","2"},
		{"STR_Crime_3","5000","3"},
		{"STR_Crime_4","20000","4"},
		{"STR_Crime_5","1000","5"},
		{"STR_Crime_6","30000","6"},
		{"STR_Crime_7","100000","7"},
		{"STR_Crime_8","10000","8"},
		{"STR_Crime_187V","70000","187V"},
		{"STR_Crime_187","100000","187"},
		{"STR_Crime_901","5000","901"},
		{"STR_Crime_215","50000","215"},
		{"STR_Crime_213","150000","213"},
		{"STR_Crime_211","50000","211"},
		{"STR_Crime_207","60000","207"},
		{"STR_Crime_207A","60000","207A"},
		{"STR_Crime_390","2000","390"},
		{"STR_Crime_487","50000","487"},
		{"STR_Crime_488","40000","488"},
		{"STR_Crime_480","20000","480"},
		{"STR_Crime_481","20000","481"},
		{"STR_Crime_482","30000","482"},
		{"STR_Crime_483","30000","483"},
		{"STR_Crime_459","60000","459"},
		{"STR_Crime_666","40000","666"},
		{"STR_Crime_667","200000","667"},
		{"STR_Crime_668","20000","668"},
		{"STR_Crime_669","60000","669"},
		{"STR_Crime_670","60000","670"},
		{"STR_Crime_919","70000","919"},
		{"STR_Crime_919A","70000","919A"}
	};

	sellArray[] = {
		{"arifle_sdar_F", 7500},
		{"hgun_P07_snds_F", 650},
		{"hgun_P07_F", 1500},
		{"ItemGPS", 45},
		{"ToolKit", 75},
		{"FirstAidKit", 65},
		{"Medikit", 450},
		{"NVGoggles", 980},
		{"16Rnd_9x21_Mag", 15},
		{"20Rnd_556x45_UW_mag", 35},
		{"ItemMap", 35},
		{"ItemCompass", 25},
		{"Chemlight_blue", 50},
		{"Chemlight_yellow", 50},
		{"Chemlight_green", 50},
		{"Chemlight_red", 50},
		{"hgun_Rook40_F", 500},
		{"arifle_Katiba_F", 5000},
		{"30Rnd_556x45_Stanag", 65},
		{"20Rnd_762x51_Mag", 85},
		{"30Rnd_65x39_caseless_green", 50},
		{"DemoCharge_Remote_Mag", 7500},
		{"SLAMDirectionalMine_Wire_Mag", 2575},
		{"optic_ACO_grn", 250},
		{"acc_flashlight", 100},
		{"srifle_EBR_F", 15000},
		{"arifle_TRG21_F", 3500},
		{"optic_MRCO", 5000},
		{"optic_Aco", 850},
		{"arifle_MX_F", 7500},
		{"arifle_MXC_F", 5000},
		{"arifle_MXM_F", 8500},
		{"MineDetector", 500},
		{"optic_Holosight", 275},
		{"acc_pointer_IR", 175},
		{"arifle_TRG20_F", 2500},
		{"SMG_01_F", 1500},
		{"arifle_Mk20C_F", 4500},
		{"30Rnd_45ACP_Mag_SMG_01", 60},
		{"30Rnd_9x21_Mag", 30}
	};

	allowedSavedVirtualItems[] = { "Zeitung", "pickaxe", "ziptie", "Supportcontainer", "Nanobots", "lappi", "fuelEmpty", "fuelFull", "tracker", "spikeStrip", "lockpick", "defuseKit", "storageSmall", "storageBig", "redgull", "coffee", "waterBottle", "apple", "peach", "tbacon", "donut", "rabbitGrilled", "salemaGrilled", "ornateGrilled", "mackerelGrilled", "tunaGrilled", "mulletGrilled", "catsharkGrilled", "turtleSoup", "henGrilled", "roosterGrilled", "sheepGrilled", "goatGrilled" };
};

//Virtual Items
class VirtualItems {
	//Misc
	VITEMMACRO(pickaxe, "STR_Item_Pickaxe", "pickaxe", 2, 750, 350, false, -1, "")
	VITEMMACRO(fuelEmpty, "STR_Item_FuelE", "fuelEmpty", 2, -1, -1, false, -1, "")
	VITEMMACRO(fuelFull, "STR_Item_FuelF", "fuelFull", 5, 850, 500, false, -1, "")
	VITEMMACRO(spikeStrip, "STR_Item_SpikeStrip", "spikeStrip", 15, 2500, 1200, true, -1, "")
	VITEMMACRO(lockpick, "STR_Item_Lockpick", "lockpick", 1, 150, 75, true, -1, "")
	VITEMMACRO(goldBar, "STR_Item_GoldBar", "goldBar", 12, -1, 95000, true, -1, "")
	VITEMMACRO(blastingcharge, "STR_Item_BCharge", "blastingCharge", 15, 35000, -1, true, -1, "")
	VITEMMACRO(boltcutter, "STR_Item_BCutter", "boltCutter", 5, 7500, -1, true, -1, "")
	VITEMMACRO(defusekit, "STR_Item_DefuseKit", "defuseKit", 2, 2500, -1, false, -1, "")
	VITEMMACRO(storagesmall, "STR_Item_StorageBS", "storageSmall", 5, 75000, -1, false, -1, "")
	VITEMMACRO(storagebig, "STR_Item_StorageBL", "storageBig", 10, 150000, -1, false, -1, "")
	VITEMMACRO(lappi, "STR_Item_Laptop", "lappi", 10, 10000, 5000, true, -1, "")
	VITEMMACRO(tracker, "STR_Item_Tracker", "tracker", 5, 5000, -1, true, -1, "")
	VITEMMACRO(Supportcontainer, "STR_Item_Supportcontainer", "Supportcontainer", 15, 2500, 1200, false, -1, "")
	VITEMMACRO(Nanobots, "STR_Item_Nanobots", "Nanobots", 15, 2500, 1200, false, 1, "")
	VITEMMACRO(ziptie, "STR_Item_ziptie", "ziptie", 1, 2500, 200, false, -1, "")
	VITEMMACRO(Zeitung, "STR_Item_Zeitung", "Zeitung", 1, 2500, 200, false, -1, "")

	//Mined Items
//NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON
    VITEMMACRO(oil_unprocessed, "STR_Item_OilU", "oil_unprocessed", 7, -1, -1, false, -1, "")
    VITEMMACRO(oil_processed, "STR_Item_OilP", "oil_processed", 5, -1, 8500, false, -1, "")
    VITEMMACRO(copper_ore, "STR_Item_CopperOre", "copper_ore", 4, -1, -1, false, -1, "")
    VITEMMACRO(copper_ingot, "STR_Item_CopperIngot", "copper_ingot", 2, -1, 1500, false, -1, "")
    VITEMMACRO(iron_ore, "STR_Item_IronOre", "iron_ore", 5, -1, -1, false, -1, "")
    VITEMMACRO(iron_ingot, "STR_Item_IronIngot", "iron_ingot", 2, -1, 2500, false, -1, "")
    VITEMMACRO(salt, "STR_Item_Salt", "salt", 5, -1, -1, false, -1, "")
    VITEMMACRO(salt_refined, "STR_Item_SaltR", "salt_refined", 3, -1, 2250, false, -1, "")
    VITEMMACRO(sand, "STR_Item_Sand", "sand", 3, -1, -1, false, -1, "")
    VITEMMACRO(glass, "STR_Item_Glass", "glass", 2, -1, 1800, false, -1, "")
    VITEMMACRO(rock, "STR_Item_Rock", "rock", 3, -1, -1, false, -1, "")
    VITEMMACRO(cement, "STR_Item_CementBag", "cement", 1, -1, 2800, false, -1, "")
    VITEMMACRO(diamond_uncut, "STR_MS_Item_DiamondsUncut", "diamond_uncut", 15, -1, -1, false, -1, "")
    VITEMMACRO(diamond_cut, "STR_MS_Item_DiamondsCut", "diamond_cut", 8, -1, 27500, false, -1, "")
    VITEMMACRO(plastic, "STR_Item_plastic", "plastic", 2, -1, -1, false, -1, "")
	VITEMMACRO(sulfur, "STR_Item_sulfur", "sulfur", 2, -1, -1, false, -1, "")



	//Drugs
	VITEMMACRO(heroin_unprocessed, "STR_Item_HeroinU", "heroin_unprocessed", 6, -1, -1, true, -1, "")
	VITEMMACRO(heroin_processed, "STR_Item_HeroinP", "heroin_processed", 4, -1, 8000, true, -1, "")
	VITEMMACRO(cannabis, "STR_Item_Cannabis", "cannabis", 4, -1, -1, true, -1, "")
	VITEMMACRO(marijuana, "STR_Item_Marijuana", "marijuana", 3, -1, 4200, true, -1, "")
	VITEMMACRO(cocaine_unprocessed, "STR_Item_CocaineU", "cocaine_unprocessed", 6, -1, -1, true, -1, "")
	VITEMMACRO(cocaine_processed, "STR_Item_CocaineP", "cocaine_processed", 4, -1, 12000, true, -1, "")

	//Drink
	VITEMMACRO(redgull, "STR_Item_RedGull", "redgull", 1, 1500, 200, false, 100, "")
	VITEMMACRO(coffee, "STR_Item_Coffee", "coffee", 1, 100, 50, false, 100, "")
	VITEMMACRO(waterBottle, "STR_Item_WaterBottle", "waterBottle", 1, 100, 50, false, 100, "")

	//Food
	VITEMMACRO(apple, "STR_Item_Apple", "apple", 1, 25, 16, false, 10, "")
	VITEMMACRO(peach, "STR_Item_Peach", "peach", 1, 100, 85, false, 10, "")
	VITEMMACRO(tbacon, "STR_Item_TBacon", "tbacon", 1, 75, 25, false, 40, "")
	VITEMMACRO(donut, "STR_Item_Donuts", "donut", 1, 120, 60, false, 30, "")
	VITEMMACRO(rabbit_raw, "STR_Item_Rabbit", "rabbitRaw", 2, -1, 65, false, -1, "")
	VITEMMACRO(rabbit_grilled, "STR_Item_RabbitGrilled", "rabbitGrilled", 1, 150, 115, false, 20, "")
	VITEMMACRO(salema_raw, "STR_Item_Salema", "salemaRaw", 2, -1, 45, false, -1, "")
	VITEMMACRO(salema_grilled, "STR_Item_SalemaGrilled", "salemaGrilled", 1, 75, 55, false, 30, "")
	VITEMMACRO(ornate_raw, "STR_Item_OrnateMeat", "ornateRaw", 2, -1, 40, false, -1, "")
	VITEMMACRO(ornate_grilled, "STR_Item_OrnateGrilled", "ornateGrilled", 1, 175, 150, false, 25, "")
	VITEMMACRO(mackerel_raw, "STR_Item_MackerelMeat", "mackerelRaw", 4, -1, 175, false, -1, "")
	VITEMMACRO(mackerel_grilled, "STR_Item_MackerelGrilled", "mackerelGrilled", 2, 250, 200, false, 30, "")
	VITEMMACRO(tuna_raw, "STR_Item_TunaMeat", "tunaRaw", 6, -1, 700, false, -1, "")
	VITEMMACRO(tuna_grilled, "STR_Item_TunaGrilled", "tunaGrilled", 3, 1250, 1000, false, 100, "")
	VITEMMACRO(mullet_raw, "STR_Item_MulletMeat", "mulletRaw", 4, -1, 250, false, -1, "")
	VITEMMACRO(mullet_fried, "STR_Item_MulletFried", "mulletFried", 2, 600, 400, false, 80, "")
	VITEMMACRO(catshark_raw, "STR_Item_CatSharkMeat", "catsharkRaw", 6, -1, 300, false, -1, "")
	VITEMMACRO(catshark_fried, "STR_Item_CatSharkFried", "catsharkFried", 3, 750, 500, false, 100, "")
	VITEMMACRO(turtle_raw, "STR_Item_TurtleMeat", "turtleRaw", 6, 4000, 3000, true, -1, "")
	VITEMMACRO(turtle_soup, "STR_Item_TurtleSoup", "turtleSoup", 2, 2500, 1000, false, 100, "")
	VITEMMACRO(hen_raw, "STR_Item_HenRaw", "henRaw", 1, -1, 35, false, -1, "")
	VITEMMACRO(hen_fried, "STR_Item_HenFried", "henFried", 1, 115, 85, false, 65, "")
	VITEMMACRO(rooster_raw, "STR_Item_RoosterRaw", "roosterRaw", 1, -1, 35, false, -1, "")
	VITEMMACRO(rooster_grilled, "STR_Item_RoosterGrilled", "roosterGrilled", 115, 85, false, 45, "")
	VITEMMACRO(sheep_raw, "STR_Item_SheepRaw", "sheepRaw", 2, -1, 50, false, -1, "")
	VITEMMACRO(sheep_grilled, "STR_Item_SheepGrilled", "sheepGrilled", 2, 155, 115, false, 100, "")
	VITEMMACRO(goat_raw, "STR_Item_GoatRaw", "goatRaw", 2, -1, 75, false, -1, "")
	VITEMMACRO(goat_grilled, "STR_Item_GoatGrilled", "goatGrilled", 2, 175, 135, false, 100, "")
};


/*
	Licenses

	Params:
	CLASS ENTRY,DisplayName,VariableName,price,illegal,side indicator
*/
class Licenses {
	LICENSEMACRO(driver,"STR_License_Driver","driver",500,false,"civ")
	LICENSEMACRO(boat,"STR_License_Boat","boat",1000,false,"civ")
	LICENSEMACRO(pilot,"STR_License_Pilot","pilot",25000,false,"civ")
	LICENSEMACRO(gun,"STR_License_Firearm","gun",10000,false,"civ")
	LICENSEMACRO(dive,"STR_License_Diving","dive",2000,false,"civ")
	LICENSEMACRO(oil,"STR_License_Oil","oil",122400,false,"civ")
	LICENSEMACRO(cAir,"STR_License_Pilot","cAir",15000,false,"cop")
	LICENSEMACRO(coastguard,"STR_License_CG","cg",8000,false,"cop")
	LICENSEMACRO(heroin,"STR_License_Heroin","heroin",136800,true,"civ")
	LICENSEMACRO(marijuana,"STR_License_Marijuana","marijuana",105840,true,"civ")
	LICENSEMACRO(medmarijuana,"STR_License_Medmarijuana","medmarijuana",15000,false,"civ")
	LICENSEMACRO(rebel,"STR_License_Rebel","rebel",75000,true,"civ")
	LICENSEMACRO(truck,"STR_License_Truck","truck",20000,false,"civ")
	LICENSEMACRO(diamond,"STR_License_Diamond","diamond",173250,false,"civ")
	LICENSEMACRO(salt,"STR_License_Salt","salt",76950,false,"civ")
	LICENSEMACRO(cocaine,"STR_License_Cocaine","cocaine",205200,true,"civ")
	LICENSEMACRO(plastic,"STR_License_Plastic","plastic",32000,false,"civ")
	LICENSEMACRO(sulfur,"STR_License_Sulfur","sulfur",32000,false,"civ")
	LICENSEMACRO(sand,"STR_License_Sand","sand",64560,false,"civ")
	LICENSEMACRO(iron,"STR_License_Iron","iron",51750,false,"civ")
	LICENSEMACRO(copper,"STR_License_Copper","copper",37800,false,"civ")
	LICENSEMACRO(cement,"STR_License_Cement","cement",95760,false,"civ")
	LICENSEMACRO(mAir,"STR_License_Pilot","mAir",15000,false,"med")
	LICENSEMACRO(home,"STR_License_Home","home",75000,false,"civ")
};

class VirtualShops {
	class medmarket {
 		name = "STR_Shops_Med";
 		items[] = { "donut", "coffee", "Supportcontainer", "waterbottle", "fuelFull", "apple", "redgull", "tracker" };
 };
	class market {
		name = "STR_Shops_Market";
		items[] = { "Zeitung", "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "storagesmall", "storagebig"};
	};

	class rebel {
		name = "STR_Shops_Rebel";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge", "lappi" };
	};

	class gang {
		name = "STR_Shops_Gang";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge", "lappi" };
	};

	class wongs {
		name = "STR_Shops_Wongs";
		items[] = { "turtle_soup", "turtle_raw" };
	};

	class coffee {
		name = "STR_Shops_Coffee";
		items[] = { "coffee", "donuts" };
	};

	class drugdealer {
		name = "STR_Shops_DrugDealer";
		items[] = { "cocaine_processed", "heroin_processed", "marijuana" };
	};

	class oil {
		name = "STR_Shops_Oil";
		items[] = { "oil_processed" };
	};


	class fishmarket {
		name = "STR_Shops_FishMarket";
		items[] = { "salema_raw", "salema_grilled", "ornate_raw", "ornate_grilled", "mackerel_raw", "mackerel_grilled", "tuna_raw", "tuna_grilled", "mullet_raw", "mullet_fried", "catshark_raw", "catshark_fried" };
	};

	class glass {
		name = "STR_Shops_Glass";
		items[] = { "glass" };
	};

	class iron  {
		name = "STR_Shops_Minerals";
		items[] = { "iron_ingot", "copper_ingot" };
	};

	class diamond {
		name = "STR_Shops_Diamond";
		items[] = { "diamond_cut" };
	};

	class salt {
		name = "STR_Shops_Salt";
		items[] = { "salt_refined" };
	};

	class cop {
		name = "STR_Shops_Cop";
		items[] = { "donut", "coffee", "spikeStrip", "waterbottle", "fuelFull", "apple", "redgull", "defusekit", "tracker", "Nanobots"};
	};

	class cement {
		name = "STR_Shops_Cement";
		items[] = { "cement" };
	};

	class gold {
		name = "STR_Shops_Gold";
		items[] = { "goldBar" };
	};
};

#include "Config_Vehicles.hpp"
#include "Config_Houses.hpp"
