cutText ["Ich hab da was am Bein.","PLAIN",2];
sleep 3;
cutText ["Die Binden sehen benutzt aus.","PLAIN",2];
player setDamage ((damage player) - 1.00);
sleep 3;
cutText ["Für meine Fleischwunde wird es reichen!","PLAIN",2];
[] call life_fnc_hudUpdate;