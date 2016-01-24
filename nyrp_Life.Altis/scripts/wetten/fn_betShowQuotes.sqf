/*
	//show bet Quotes to player and take Random football clubs
*/
_x=floor(random 9);
_y=floor(random 9);
//wenn 2 mal die gleiche ausgewaehlt wurde wird y um eins erhoeht
if(_x == _y) then {_y = _y + 1;};
if(_y == 10)then{_y = 0;};


switch (_x) do
	{
		case 0: 	{ life_club1 = "Kavalla FC ";};
		case 1: 	{ life_club1 = "1944 Pyrgos";};
		case 2: 	{ life_club1 = "Spvgg. Athira";};
		case 3: 	{ life_club1 = "SV Sofia";};
		case 4: 	{ life_club1 = "VFB Zaros";};
		case 5: 	{ life_club1 = "Syrta 1887";};
		case 6: 	{ life_club1 = "1.FC Paros 94";};
		case 7: 	{ life_club1 = "Frini 09";};
		case 8: 	{ life_club1 = "Red Gull Molos";};
		case 9: 	{ life_club1 = "FC Gravia";};
	};


switch (_y) do
	{
		case 0: 	{ life_club2 = "Kavalla FC ";};
		case 1: 	{ life_club2 = "1944 Pyrgos";};
		case 2: 	{ life_club2 = "Spvgg. Athira";};
		case 3: 	{ life_club2 = "SV Sofia";};
		case 4: 	{ life_club2 = "VFB Zaros";};
		case 5: 	{ life_club2 = "Syrta 1887";};
		case 6: 	{ life_club2 = "1.FC Paros 94";};
		case 7: 	{ life_club2 = "Frini 09";};
		case 8: 	{ life_club2 = "Red Gull Molos";};
		case 9: 	{ life_club2 = "FC Gravia";};
	};

_quote = floor(random 2);
quote_win = 0;
quote_los = 0;
quote_draw = 0;

switch (_quote) do
	{
		case 0: 	{ quote_win = 2.0; quote_los = 3.1; quote_draw = 3.0;};
		case 1: 	{ quote_win = 3.2; quote_los = 1.7; quote_draw = 3.7;};
		case 2: 	{ quote_win = 1.7; quote_los = 4.5; quote_draw = 3.5;};
	};

[] spawn {

	"Wettquoten:" hintC parseText format[
	"
	<t size=""1.8"">Manschaften und Quoten: <t align='right' size='0.6' color='#FE2E2E'></t></t><br /><br /><br />
	<t shadow='true' size='1.5' underline='true'>Es spielen:<t align=""right"">%1 gegen %2</t></t><br/><br/>
	<t shadow='true' size='1.5' underline='true'>Quote: %3 auf <t align=""right""> %1 </t></t><br/><br/>
	<t shadow='true' size='1.5' underline='true'>Quote: %4 auf <t align=""right""> %2 </t></t><br/><br/>
	<t shadow='true' size='1.5' underline='true'>Quote: %5 auf unentschieden:<t align=""right""></t></t><br/><br/>
	",
	life_club1,
	life_club2,
	quote_win,
	quote_los,
	quote_draw
	];

};

sleep 1.5;
life_bet = true; // to be sure life_club1 and life_club2 are set !