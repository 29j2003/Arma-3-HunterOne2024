////////////////////////////////////////////////////////////////////////////
/////// Task #08: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

	// Task creation: 
	[west, ["T08", "MainTask"], ["Ghost 2-1 has landed and is picking up the remaining forces of Delta - defend them!", "Defend Ghost 2-1!", "marker"], evacHELO, "ASSIGNED", 1, true, "defend", true] call BIS_fnc_taskCreate; 
		saveGame; 
		
		missionNamespace setVariable ["ghostEvacReturning", false];
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////


[] spawn 
{

	
			line1 = ["Ghost 2-1", "Delta, this is Ghost 2-1. We are on the ground. Load up, over.", evacHELOD, 1, 2, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			sleep 2;
 
			_deltaGO = ["\dubbing\DL\DL07a.ogg", "\dubbing\DL\DL07b.ogg"]; 
			_deltaGOused = selectRandom _deltaGO;
 
			line1 = ["Delta", "Delta is moving!", HO_SquadLead, _deltaGOused, 1, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			sleep 2;  
	
			line1 = ["Ghost 2-1", "Hunter 1-1, this is Ghost 2-1. Hold your position. Extraction may take some time, over.", evacHELOD, 1, 2, "UI"];
			[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
			sleep 0.5; 
			
				{_x enableAI "ALL"} foreach units group HO_SquadLead;
				{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;
				{[_x] orderGetIn true} foreach units group HO_SquadLead;  
				sleep 60; 

				[] spawn 
				{
				if (!(HO_SquadLead in evacHELO)) then
					{
						{_x moveInCargo evacHELO} foreach units group HO_SquadLead;	
						{_x assignAsCargo evacHELO} foreach units group HO_SquadLead;
						evacHELO AllowCrewInImmobile true; 
						evacHELO setVehicleLock "LOCKED"; 
					}
						else
					{
						nil;			// will never get executed
					};
				}; 
				
				waitUntil { missionNamespace getVariable ["Task09_Done", true] };
				sleep 5; 
				
				[] spawn 
					{
						
						ghostReturn = true; 
						evacHELOd enableAI "all"; 
						missionNamespace setVariable ["Task08_Done", true];
						
						sleep 2; 
	
						line1 = ["Ghost 2-1", "Ghost 2-1 to Longbow. Package is secure. RTB, over.", evacHELOD, 1, 2, "UI"];
						[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
						sleep 1; 

						line1 = ["Longbow", "Copy that, Ghost 2-1. Medical personnel are on standby. Safe journey, out.", officerBrief, "\dubbing\RL\RL24.ogg", 1, "UI"];
						[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
						sleep 1;
					};
				


}; 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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



////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////



			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task08_Done", true] };
			
			// finish task: 
			["T08", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
				sleep 15; 
			
			// New task if needed: 
			execVM "tasks\10_taskFakeR.sqf";