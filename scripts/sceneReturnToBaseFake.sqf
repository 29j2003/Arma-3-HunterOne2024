// this scene plays out when the player did all the tasks before the scecond part plays out
// he will be order back to base 


line1 = ["You", "Hunter 1-1 to Thunder, all threats neutralized and Delta has been evaced.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 
line1 = ["Thunder", "Great work Hunter 1-1, return to base for debrief. Over.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;