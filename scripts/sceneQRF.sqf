// This scene plays out when the player has completed the "Support Delta" task and now the enemy qrf arrives 

line1 = ["Thunder", "Thunder to Hunter-One, special forces reported a convoy moving towards Delta,", player, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 5; 
line1 = ["Thunder", "Eliminate and continue to defend Delta. Over.", player, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 4; 
line1 = ["You", "Copy. Hunter-One out.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;


