// scene where EVAC calls 

line1 = ["Frost", "CSAT forces are neutralized.", coPilot, 2, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["You", "Good shooting Frost.", player, 2, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 2; 

line1 = ["You", "Longbow, this is Hunter 1-1. Enemy assault forces are Tango Down. Awaiting further orders, over.", player, 2, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
sleep 5;

line1 = ["Longbow", "Roger that, Hunter 1-1. Evac is Oscar Mike. Stand by, out.", officerBrief, 2, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

// intital call between player and evac

player setVariable ["evacHELOlanded", 0];


[] spawn {
    waitUntil {
                (player getVariable ["evacHELOlanded", 0]==1)
    };
	line1 = ["Ghost 2-1", "Delta, this is Ghost 2-1. We are on the ground. Load up, over.", evacHELOD, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 4;
 
	line1 = ["Delta", "Delta is moving!", HO_SquadLead, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	evacHELOlanded = true; 
	sleep 3;  
	
	line1 = ["Ghost 2-1", "Hunter 1-1, this is Ghost 2-1. Hold your position. Extraction may take some time, over.", evacHELOD, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};

player setVariable ["evacReturn", 0];

[] spawn {
    waitUntil {
                (player getVariable ["evacReturn", 0]==1)
    };
	sleep 2; 
	line1 = ["Ghost 2-1", "Ghost 2-1 to Longbow. Package is secure. RTB, over.", evacHELOD, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 4; 

	line1 = ["Longbow", "Copy that, Ghost 2-1. Medical personnel are on standby. Safe journey, out.", officerBrief, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};


