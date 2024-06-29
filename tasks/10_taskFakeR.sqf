////////////////////////////////////////////////////////////////////////////
/////// Task #10: 
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task Spawn: 
////////////////////////////////////////////////////////////////


			sleep 5; 
			
				line1 = ["You", "Hunter 1-1 to Longbow. All threats have been neutralized; Ghost 2-1 secured the package. Awaiting further instructions. Over.", player, 4, 1, "3D"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 
			
				line1 = ["Longbow", "Copy that, Hunter 1-1. Job well done. Return to base for debriefing and resupply. Over.", officerBrief, "\dubbing\RL\RL30.ogg", 1, "UI"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5;  
				
					[west, ["T10", "MainTask"], ["You've finished your tasks and are requested back at base!", "Return back to base!", "marker"], landingPadBase, "ASSIGNED", 1, true, "land", true] call BIS_fnc_taskCreate; 
				
				line1 = ["You", "Affirm, returning back to base. Out.", player, 4, 1, "3D"];
				[[line1], "BLUFOR", false, false] call HO_fnc_simpleConv;
				sleep 0.5; 
			
			// needed condition to finish it: 
			sleep (15+ random 15); 
			
			// finish task: 
			["T10", "CANCELED", true] call BIS_fnc_taskSetState;


////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
// Task script:  
////////////////////////////////////////////////////////////////

			// exec New Task: 
			execVM "tasks\11_taskNom.sqf"; 