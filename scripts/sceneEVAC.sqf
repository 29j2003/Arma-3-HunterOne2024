// scene where EVAC calls 
sleep 2; 

line1 = ["You", "Hunter-One to Thunder, enemy assault forces have been eliminated. Over.", player, 2, 1, "3D"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

sleep 5;

line1 = ["Rollins", "Copy Hunter-One, dispatching evac now. Out.", officerBrief, 2, 1, "UI"];
[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;

// intital call between player and evac

player setVariable ["evacHELOlanded", 0];


[] spawn {
    waitUntil {
                (player getVariable ["evacHELOlanded", 0]==1)
    };
	line1 = ["Ghost 2-1", "Ghost 2-1 to Delta, we are on the ground - load up!", evacHELOD, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 4;
 
	line1 = ["Delta Lead", "Moving!", HO_SquadLead, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 3;  
	
	line1 = ["Ghost 2-1", "Hunter-One keep defending, this might take a while.", evacHELOD, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};

player setVariable ["evacReturn", 0];

[] spawn {
    waitUntil {
                (player getVariable ["evacReturn", 0]==1)
    };
	sleep 2; 
	line1 = ["Ghost 2-1", "Ghost 2-1 to Thunder, returning back to base.", evacHELOD, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 4; 

	line1 = ["Thunder", "Copy Ghost 2-1, medical personal is on stand-by.", officerBrief, 1, 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};


