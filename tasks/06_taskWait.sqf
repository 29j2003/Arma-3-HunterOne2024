////////////////////////////////////////////////////////////////////////////
/////// Task #06: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////

missionNamespace setVariable ["Task06_Done", false]

	line1 = ["Frost", "No more tangos spotted. CSAT forces are neutralized.", coPilot, "\dubbing\MF\MF08.ogg", 2, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5; 

	line1 = ["You", "Good shooting Frost.", player, 2, 2, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 3;

	line1 = ["You", "Longbow, this is Hunter 1-1. Enemy assault forces are Tango Down. Awaiting further orders, over.", player, 2, 3, "3D"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	sleep 0.5;

	line1 = ["Longbow", "Roger that, Hunter 1-1. Evac is Oscar Mike. Stand by, out.", officerBrief, "\dubbing\RL\RL23.ogg", 1, "UI"];
	[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
	
	sleep 1; 
			
			// Ghost 2-1 Move activation: 
			ghostMoveAO = true; 
			
			
				
		// Task creation: 
		[west, ["T06", "MainTask"], ["Defend the area and wait for the arrivel of Ghost 2-1!", "Wait for Ghost 2-1!", "marker"], evacHELO, "ASSIGNED", 1, true, "wait", true] call BIS_fnc_taskCreate; 
	
	
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task06_Done", true] };
			
				// finish task: 
				["T06", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			////////////////////////////////////////////////////////////////
			execVM "tasks\08_taskDefGh.sqf"; 
			////////////////////////////////////////////////////////////////
			
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
