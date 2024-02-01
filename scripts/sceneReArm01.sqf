//RL13: “Thunder to Hunter 1, we are working on a resupply point near Charika.” 
//RL14: “The main airfield will be used in the meantime. Over.”
sleep 7; 

line1 = ["Longbow", "Hunter 1-1, this is Longbow. We’re working on getting a resupply station up and running near Charika.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 6; 
line1 = ["Longbow", "Until then, the main airfield will serve as your primary resupply point. Over.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
taskReArm = true; 


sleep 6; 
line1 = ["You", "Acknowledged, Longbow. Hunter 1-1 out.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;






