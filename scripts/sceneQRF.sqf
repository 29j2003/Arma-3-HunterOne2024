// This scene plays out when the player has completed the "Support Delta" task and now the enemy qrf arrives 

line1 = ["Longbow", "Hunter 1-1, this is Longbow. Recon have reported an enemy convoy moving towards Delta's AO, over.", player, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 5; 

line1 = ["Longbow", "Your orders are to intercept and neutralize the convoy. Continue to defend Delta. How copy, over?", player, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 4; 

line1 = ["You", "Solid copy, Longbow. Hunter 1-1 is on intercept course. Out.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;


