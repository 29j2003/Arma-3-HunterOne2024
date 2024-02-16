// play out when player enters AO

line1 = ["You", "Longbow, this is Hunter 1-1. We're Oscar Mike to the AO, over.", player, 3, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 5; 

line1 = ["Longbow", "Roger that, Hunter 1-1. Stand by for patch through to Delta, over.", officerBrief, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6;

// Delta to Hunter, CSAT forces have been marked with red smoke - we need fire support now! 
line1 = ["Delta", "Hunter 1-1, this is Delta - Red smoke marks CSAT forces. Requesting immediate fire support, over!", HO_SquadLead, 3, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6;

line1 = ["You", "Solid copy, Delta. Fire support inbound. Stay low, out.", player, 3, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 6;
