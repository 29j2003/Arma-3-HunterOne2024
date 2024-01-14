// play out when player enters AO

line1 = ["You", "Hunter 1-1 to Thunder, we're about to enter the AO.", player, 3, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 5; 

line1 = ["Thunder", "Understood - patching you through to Delta.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6;

// Delta to Hunter, CSAT forces have been marked with red smoke - we need fire support now! 
line1 = ["Thunder", "Delta to Hunter 1-1, CSAT forces have been marked with red smoke - we need fire support now!", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6;

line1 = ["You", "Copy Delta, keep your heads down!", player, 3, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6;
