// when player destory QRF forces
sleep 2; 
line1 = ["You", "Hunter-One to Thunder. Enemy reinforcements have been eliminated, returning back to Delta. Over.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 6; 
line1 = ["Thunder", "Understood Hunter-One, great work! Out.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;