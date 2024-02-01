line1 = ["Longbow", "Hunter 1-1, this is Longbow. Enemy gunship inbound to your AO. Engage and neutralize before it reaches Delta, over!", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6; 

line1 = ["You", "Wilco, Hunter 1-1 moving to engage. Out.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;