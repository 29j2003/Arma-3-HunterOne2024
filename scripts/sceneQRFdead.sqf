// when player destory QRF forces
sleep 2; 
line1 = ["You", "Hunter 1-1 to Longbow. Enemy reinforcements have been eliminated - returning to Delta. Over. How copy, over?", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 6; 
line1 = ["Longbow","Copy on all. Good work out there. Continue to hold position at Delta. Out.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;