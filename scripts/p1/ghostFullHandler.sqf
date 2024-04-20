// Script for anything Ghost 2-1 related that isn't handeld else where already: 

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

[] spawn 
{
	player setVariable ["evacHELOlanded", 0];
	
    waitUntil { (player getVariable ["evacHELOlanded", 0]==1)};
	
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

////////////////////////////// Stage 2: ////////////////////////////



[] spawn 
{
	player setVariable ["evacReturn", 0];
	
    waitUntil {(player getVariable ["evacReturn", 0]==1)};
	
	sleep 2; 
	
		line1 = ["Ghost 2-1", "Ghost 2-1 to Longbow. Package is secure. RTB, over.", evacHELOD, 1, 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 4; 

		line1 = ["Longbow", "Copy that, Ghost 2-1. Medical personnel are on standby. Safe journey, out.", officerBrief, "\va\RL\RL24.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// When Ghost 2-1 dies: 
[] spawn 
{ 
	waitUntil {!alive evacHELOD};
	sleep 2; 

		line1 = ["Longbow", "Longbow to Ghost 2-1, what is your status?!", officerBrief, "\va\RL\RL21.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 2; 

		line1 = ["Longbow", "Longbow to Ghost 2-1, respond!", officerBrief, "\va\RL\RL38.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
}; 

