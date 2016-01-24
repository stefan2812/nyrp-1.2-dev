waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["info","Informationen"];
player createDiarySubject ["serverrules","Regelwerk"];
//player createDiarySubject ["policerules","Police Procedures/Rules"];
//player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["info",
		[
			"Forum / Teamspeak",
				"
				Unser Forum erreicht ihr unter ""nyrp.de\community"". <br/>
				Unser Teamspeak ist unter ""nyrp.de"" zu erreichen.<br/>
				"
		]
	];

	player createDiaryRecord["info",
		[
			"Lizenzkosten",
				"
					Die verfügbaren Lizenzen können beim jeweiligen verarbeiter für folgenden Preis erworben werden: <br/>
					Kupfer: 37.800 $<br/>
					Eisen: 51.750 $<br/>
					Glas: 61.500 $<br/>
					Salz: 76.950 $<br/>
					Zement: 95.760 $<br/>
					Canabis: 105.840 $<br/>
					Öl: 122.400 $<br/>
					Heroin: 136.8 00 $<br/>
					Diamenten: 173.250 $<br/>
					Kokain: 205.200 $<br/>
				"
		]
	];

	player createDiaryRecord["info",
		[
			"Fahrzeuge",
				"
				Die Folgenden Fahrzeuge stehen zur Verfügung: <br/>
				Name		Kofferraum	Preis<br/>
				Quad		30		12.000 <br/>
				Offroad		100		52.500 <br/>
				Suv		75		45.000 <br/>
				Limosine (sp)	60		225.000 <br/>
				Truck		250		90.000 <br/>
				Truck Box	350		90.000 <br/>
				Zamack (a)	750		450.000 <br/>
				Zamack (t)	750		450.000 <br/>
				Tempest	(a)	1500		1.125.000 <br/>
				Tempest	(t)	1500		1.125.000 <br/>
				Tempest Gerät	1250		1.875.000 <br/>
				HemTT Box	1750		2.100.000 <br/>
				Hunter		65		1.500.000 <br/>
				Taru (f)	750		3.300.000 <br/>
				Taru 		0		1.350.000 <br/>
				Huron		1000		6.000.000 <br/>
				Ghosthawk	200		3.300.000 <br/>
				Hummingbird	50		150.000 <br/>
				Mowhawk		250		420.000 <br/>
			"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Legale und Illegale Waffen",
				"
				1. Zivilisten dürfen in Städten keine Waffen offen tragen. Diese sind zu Holstern.<br/>
				2. Auflistung der legalen Waffen: Rook-40, Zubr .45, ACP-C2 .45, PDW2000. Alle anderen Waffen sind Ilegal!!!<br/>
				3. Zivilisten mit gültiger Waffenlizenz, dürfen außerhalb von Kavala ihre legalen Waffen gesenkt oder geholstert tragen<br/>
				   (Strg 2x drücken oder Shift + H).<br/>

				"
		]
	];

	player createDiaryRecord["serverrules",
		[
			"Negative Beispiele",
				"
				Folgende Handlungen können zu einem Kick bis hin zum permanenten Bann führen.<br/>
			1. Sich selbst umbringen, respawnen oder ausloggen um aus Roleplaysituationen zu entkommen.<br/>
			2. Duping bzw. illegales Verdoppeln von Geld, Waffen oder anderen Gegenständen.<br/>
			3. Das Benutzen von gecheateten oder gehackten Gegenständen, selbst wenn man diese Gegenstände nicht selbst <br/>
			   in das Spiel gebracht hat. Wenn ihr so einen Gegenstand bemerkt meldet es den Admins oder Supportern.<br/>
			4. Das Abstellen von Personen die festgenommen wurden, so dass man sie nicht mehr findet.<br/>
			5. Allgemein alle Bugs, Glitches und/oder Cheats die genutzt werden und zur Bereicherung führen oder Vorteile schaffen (Bug-Using). <br/>
			   Bitte meldet diese den Admins oder Supportern, um das Spiel besser und fair für alle zu halten.<br/>

				"
		]
	];


	player createDiaryRecord ["serverrules",
		[
			"Neues Leben",
				"
			Wenn man getötet wird, darf man an der Person nicht Rache üben.<br/>
			Wenn man von einem Polizisten eingesperrt oder getötet wird, ist man nicht mehr auf der Wanted-Liste.<br/>
			1. Man darf nicht absichtlich Selbstmord begehen um aus einer Situation zu entfliehen.<br/>
			2. Wenn ihr in einer Kampfsituatuion (Gangkampf, Bankraub, usw.) sterbt, dürft ihr nicht mehr an dem Gefecht teilnehmen.<br/>
			   (Gilt auch für Polizisten.)<br/>
			2a. Polizisten dürfen, wenn sie in einem Kampfgebiet getötet werden, nicht an dem selben Ort wieder Respawnen.<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"RDM / VDM",
				"
			Folgende Handlungen können zu einem Kick bis hin zum permanenten Bann führen.<br/>
			1. Es ist nicht erlaubt ohne Grund Spieler zu töten! Es muss immer ein Roleplay stattfinden! (siehe Kommunikationsregeln)<br/>
			2. Auch Rebellen dürfen nicht ohne Grund töten. Rebellen haben die Erlaubnis andere Spieler auszurauben und z.B. Geld, <br/>
			   Autoschlüssel oder Drogen verlangen. KOMMUNIKATION IST DAS WICHTIGSTE!!!<br/>
			3. Rebellen dürfen Geiseln nehmen und Lösegeld fordern! Verlangt keine unrealistisch hohen Summen.<br/>
			4. Das absichtliche Überfahren von Spielern/Polizisten ist nicht erlaubt. In einem Gefecht kann dies durchaus vorkommen, sollte es jedoch<br/>
 			   gezielt eingesetzt werden, wird dies Folgen haben.<br/>
			5. Es ist erlaubt andere Spieler aus NOTWEHR in RP-Situationen zu erschießen.<br/>
			6. Wenn jemand einen Zivilisten unabsichtlich überfährt, muss der Täter dies SOFORT den Polizisten melden und den Fall schildern.<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Kommunikationsregeln",
				"
			Wir wollen einen ordentlichen Umgangston auf diesem Server. Beachtet folgende Regeln.<br/>
			1. Im Side Channel wird nur geschrieben aber NICHT GESPROCHEN.<br/>
			2. Im Chat spammen wird mit einem KICK/BANN bestraft.<br/>
			3. Seid allgemein höflich und nett zu anderen Spielern.<br/>
			4. Wir dulden auf diesem Server keine Beleidigungen. Wir erwarten einen anständigen Umgang miteinander.<br/>
			5. Im Fahrzeug ist der Fahrzeugchannel zu nutzen.<br/>
			6. Wir spielen hier ein RPG, die Kommunikation untereinander ist äußerst wichtig!<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Weitere Regeln",
				"
				Alle weiteren Regeln kannst du im Forum einsehen! Sei dir bewusst: Unwissenheit schütz vor Strafe nicht!<br/>
				Informiere dich also im Forum, über die aktuellen Regeln!
				"
		]
	];

// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				1. The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.
				2. Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/>
				2. If the Federal Reserve is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
				3. Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/>
				4. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				5. Police may not fire blindly into the building.<br/>
				6. The police should evacuate the civilians from the building during a robbery.<br/>
				7. Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
				8. Supervisory officers may hire individuals or contract a group of people to work as security guards for the bank. See 'Contracting' section for more information.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				1. No helicopter can land within city limits without authorization from the highest ranking officer online. (Exceptions being what is listed below.)<br/>
				Kavala: The hospital helipad (037129) or docks (031128).<br/>
				Athira: The sports field (138185) or behind the DMV (140188).<br/>
				Pyrgos: The fields North/East of DMV (170127)<br/>
				Sofia: Opposite the car shop (258214) or the fields Southeast of the garage (257212)<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>

				2. Helicopters may not land on roads.<br/>
				3. Police may temporarily forbid landing at  but it cannot remain closed for a long period of time.<br/>
				4. Helicopters cannot fly below 150m over the city without authorization.<br/>
				5. Helicopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/><br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Illegal Areas",
				"
				1. Gang areas are not considered illegal. Thus a cop may enter without a raid, but may not restrain or stop anyone inside without probable cause/illegal activity. (Talking to the gang NPC is NOT probable cause/illegal activity.)<br/>
				2. Do not enter an illegal area unless it is part of a raid. see Raiding/Camping.<br/>
				3. If you chase someone into an illegal area, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Patrolling",
				"
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Checkpoints",
				"
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>

				1. A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. An ATV does not count as one of the required vehicles, but may still be used.<br/>
				2. A checkpoint can not be setup within 300m of an illegal area. Basically, you cannot set one up on top of an illegal area.<br/>
				3. Checkpoints may only be setup on roads, but it does not have to be on a crossroad.<br/>
				4. Checkpoints do not have to be marked on the map.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Ask the driver and any passengers if they have any weapons.<br/>
				3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask if they will submit to a search.<br/>
				6. If they allow a search, you may restrain them and search them.<br/>
				7. If they do not submit to a search, you must let them go, unless there is probable cause.<br/>
				8. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				9. In case anything illegal is found, the person may be ticketed or arrested depending on the crime.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Vehicles",
				"
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
				5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Speeding",
				"
				The following speeds are to be enforced by the Altis Police Force for the absolute safety of the citizens of Kavala and all travelling beyond the city.<br/><br/>

				Inside major cities:<br/>
				Small roads: 50km/h<br/>
				Main roads: 65km/h<br/>
				Outside major cities:<br/>
				Small roads: 80km/h<br/>
				Main roads: 110km/h<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"City Protocol",
				"
				1. Officers may patrol major cities - Kavala, Athira, Pyrgos and Sofia.<br/>
				2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. Officers may enter the town in a large number should a rebellious act occur. After the area is clear, they need to leave the town again.<br/>
				5. Martial law may not be declared at any time.<br/>
				6. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You may not arrest someone if you have given them a ticket and they paid it.<br/>
				2. You must tell the suspect why they are being arrested before you arrest them.<br/>
				3. If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be a reasonable price.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/>
				4. Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the police department.<br/><br/>

				A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>

				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Weapons",
				"
				A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/><br/>

				Legal Weapons for Civilians to carry with a permit:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Any other weapon (Including Silenced P07 [Considered a Police Weapon]) is illegal.<br/><br/>

				1. Civilians are not allowed to have a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser (Silenced P07) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the SPD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the SPD.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				1. All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];



// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];


// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Z: Spieler Menü öffnen<br/>
				U: Auf- / Abschließen des Fahrzeuges<br/>
				(Shift)F: Cop / Medic Sirenen und Yelp (Polizei und Medics)<br/>
				T: Kofferraum<br/>
				O: Schrankenöffnen (Polizei und Medics)<br/>
				Linkes Shift + R: Festnehmen (Polizei)<br/>
				Linkes Shift + R: Knock out / Festnehmen (Zivilist)<br/>
				Linkes Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Aktivieren / deaktivieren des Blaulichts (Polizei / Medic).<br/>
				Left Shift + H: Waffe im Holster verstauen<br/>
				Left Shift + B: Platzierbare Objekte (z.B Schranken - Nur Polizei)<br/>
				"
		]
	];