// 

/* 
line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA, 3, 1, "UI"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

line1 = ["PA", "Lt. Hawk, please report to Col. Rollins.", introPA, 3, 1, "UI"];
[[line1], "BLUFOR", false, true] call HO_fnc_simpleConv;

*/ 

line1 = ["Thunder", "Hunter 1-1 break off – new assignment incoming.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Thunder", "You are to conduct a fire support mission around Kalochori.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Thunder", "Callsign Nomad has encountered two enemy AAF tanks around the town.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2, 

line1 = ["Thunder", "They’ve deployed a drone and are sending the live feed to your HMD.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2, 

line1 = ["Thunder", "Destroy those tanks and support Nomad. ", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["Thunder", "If you need any supplies, we just set up a new supply hub around Charika – how copy?", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
player setVariable ["reArmNewOpen", 1];
sleep 2; 

line1 = ["You", "Loud and clear Thunder - Hunter 1-1 moving to assist.", player, 3, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

