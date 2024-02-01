// should play out when Nomad was supported

line1 = ["You", "Longbow, this is Hunter 1-1. All threats in the AO are Tango Down. Awaiting further orders, over.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3;

line1 = ["Longbow", "Solid copy on all. Good work out there. Nomad sends his gratitude, over.", officerBRIEF, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3; 

line1 = ["You", "Roger, Longbow. Always glad to lend a hand. What's next, over?", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3;

line1 = ["Longbow", "Hunter 1-1, RTB for debrief. You've made a difference today and saved a lot of lives. Longbow out.", officerBRIEF, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 3; 
