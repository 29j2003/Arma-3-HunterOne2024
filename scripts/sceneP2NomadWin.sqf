// should play out when Nomad was supported

line1 = ["You", "Hunter 1-1 to Thunder, all threats neutralized. Over.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2;

line1 = ["Thunder", "Copy Hunter 1-1, excellent work. Nomad gives his graditude.", officerBRIEF, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Thunder", "Return to base for debrief - you both saved a lot of people today. Thunder Out.", officerBRIEF, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 
