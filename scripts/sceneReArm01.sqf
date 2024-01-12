//RL13: “Thunder to Hunter 1, we are working on a resupply point near Charika.” 
//RL14: “The main airfield will be used in the meantime. Over.”
sleep 7; 

line1 = ["Thunder", "Thunder to Hunter-One, we are working on a resupply point near Charika.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 6; 
line1 = ["Thunder", "The main airfield will be used in the meantime. Over.", officerBrief, 4, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
taskReArm = true; 


sleep 6; 
line1 = ["You", "Hunter-One copies, out.", player, 4, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;


player setVariable ["reArmNewOpen", 0];

[] spawn {
    waitUntil {
                (player getVariable ["reArmNewOpen", 0]==1)
    };
	sleep 1; 
	line1 = ["Thunder to all Units. A new resupply point is now available near Charkia!", officerBrief, 4, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};





