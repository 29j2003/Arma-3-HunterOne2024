////////////////////////////////////////////////////////////////////////////
/////// Task #04: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////



		missionNamespace setVariable ["Task04_Done", false];

	[west, ["T04", "MainTask"], ["Fly to the area of operations to support Delta!", "Fly to the AO!", "marker"], HO_SquadLead, "ASSIGNED", 1, true, "defend", true] call BIS_fnc_taskCreate; 

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

			[] spawn 
				{ 
					// Delay: 
					sleep (5 + random 10);

					// Dialog: 
		
					// Line 01: 
					line1 = ["Longbow", "Hunter 1-1, this is Longbow. We’re working on getting a resupply station up and running near Charika.", officerBrief, "\dubbing\RL\RL15.ogg", 1, "UI"];
					[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
					sleep 0.5; 

					// Line 02:  
					line1 = ["Longbow", "Until then, the main airfield will serve as your primary resupply point. Over.", officerBrief, "\dubbing\RL\RL16.ogg", 1, "UI"];
					[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
					sleep 0.5; 

					// Line 03: 
					line1 = ["You", "Acknowledged Longbow. Hunter 1-1 out.", player, 4, 1, "3D"];
					[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
					sleep 0.5; 
					
					// execVM re Arm script CoPilot: 
					execVM "scripts\coPilotChecks.sqf";
					
					// Delay: 
					sleep 2;



					// Creates Optional Task: 
					[west, "OptTask", ["Optional:", "Optional:", "marker"], objNull, "CREATED", -1, false, "documents", false] call BIS_fnc_taskCreate; 
					sleep 2; 

					// Creates RearmTask: 
					[west, ["opt01", "OptTask"], ["Resupply yourself if needed.", "Resupply", "marker"], armoryBuilding, "CREATED", -1, true, "rearm", false] call BIS_fnc_taskCreate;

					// Task Area switch: 
					waitUntil {missionNamespace getVariable ["reArm02_Go", true];}; 
		
					// setTaskDesti: 
					["opt01", landingPadBase02] call BIS_fnc_taskSetDestination;
				
				
				}; 

			
			
			// needed condition to finish it: 
			waitUntil { missionNamespace getVariable ["Task04_Done", true] };
			
			// finish task: 
			["T04", "SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			// new task: 
			execVM "tasks\05_taskSupp.sqf"; 