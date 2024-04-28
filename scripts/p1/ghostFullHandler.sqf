// Script for anything Ghost 2-1 related that isn't handeld else where already: 

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

[] spawn 
{
	missionNamespace setVariable ["ghostEvacLanded", false];

		waitUntil {missionNamespace getVariable ["ghostEvacLanded", true];};
		
		missionNamespace setVariable ["Task06_Done", true]
		missionNamespace setVariable ["Task08_Go", true]
	
			line1 = ["Ghost 2-1", "Delta, this is Ghost 2-1. We are on the ground. Load up, over.", evacHELOD, 1, 2, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			sleep 4;
 
			_deltaGO = ["\dubbing\DL\DL07a.ogg", "\dubbing\DL\DL07b.ogg"]; 
			_deltaGOused 01 selectRandom _deltaGO;
 
			line1 = ["Delta", "Delta is moving!", HO_SquadLead, _deltaGOused, 1, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			sleep 3;  
	
			line1 = ["Ghost 2-1", "Hunter 1-1, this is Ghost 2-1. Hold your position. Extraction may take some time, over.", evacHELOD, 1, 2, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			
		sleep 20; 
		missionNamespace setVariable ["GunShip_Go", true]; 

}; 

////////////////////////////// Stage 2: ////////////////////////////



[] spawn 
{
	missionNamespace setVariable ["ghostEvacReturning", false];

		waitUntil {missionNamespace getVariable ["ghostEvacReturning", true];};
	
	sleep 2; 
	
		line1 = ["Ghost 2-1", "Ghost 2-1 to Longbow. Package is secure. RTB, over.", evacHELOD, 1, 2, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 4; 

		line1 = ["Longbow", "Copy that, Ghost 2-1. Medical personnel are on standby. Safe journey, out.", officerBrief, "\dubbing\RL\RL24.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
};

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// When Ghost 2-1 dies: 
[] spawn 
{ 
	waitUntil {!alive evacHELOD};
	sleep 2; 

		line1 = ["Longbow", "Longbow to Ghost 2-1, what is your status?!", officerBrief, "\dubbing\RL\RL21.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
		sleep 2; 

		line1 = ["Longbow", "Longbow to Ghost 2-1, respond!", officerBrief, "\dubbing\RL\RL38.ogg", 1, "UI"];
		[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
}; 

