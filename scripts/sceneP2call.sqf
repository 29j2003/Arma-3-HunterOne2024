// 

/* 
line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA, 3, 1, "UI"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA, 3, 1, "UI"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

*/ 

line1 = ["Longbow", "Hunter 1-1, break off current engagement. New orders incoming, over.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["You", "Hunter 1-1 cycling and awaiting orders.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 8; 

line1 = ["Longbow", "Hunter 1-1, you are to conduct a fire support mission in vicinity of Kalochori. Callsign Nomad has encountered two enemy AAF tanks in the AO, over.", officerBrief, 7, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2, 

line1 = ["You", "Copy that, Longbow. Any intel on enemy positions, over?", player, 3, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Longbow", "Affirmative, Hunter 1-1. Nomad has deployed a drone and is sending the live feed to your HMD. Your primary task is to neutralize those tanks and provide support to Nomad, over.", officerBrief, 7, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Longbow", "If you need resupply, we've established a new supply hub at Charika. How copy, over?", officerBrief, 5, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
player setVariable ["reArmNewOpen", 1];
sleep 2; 

line1 = ["You", "Solid copy, Longbow. Fire mission at Kalochori, support Nomad, resupply at Charika if needed. Hunter 1-1 is Oscar Mike, out.", player, 5, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 
