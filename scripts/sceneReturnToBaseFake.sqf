// this scene plays out when the player did all the tasks before the scecond part plays out
// he will be order back to base 


line1 = ["You", "Hunter 1-1 to Longbow. All hostiles have been neutralized, area is secure. Awaiting further instructions. Over.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3; 
line1 = ["Longbow", "Copy that, Hunter 1-1. Job well done. Return to base for debriefing and resupply. Over.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;